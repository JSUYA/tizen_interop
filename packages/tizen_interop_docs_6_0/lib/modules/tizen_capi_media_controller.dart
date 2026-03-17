// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiMediaController`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-media-controller.so.0`.
///
/// Multimedia / Media Controller.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_media_controller;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates a media controller client.
/// @details The media controller client binds the latest media controller server when handlers are created.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a client should be released using @c mc_client_destroy(). You can create only one client handle for each process.
///
/// Output parameter client The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_create(
  ffi.Pointer<mc_client_h> client,
) =>
    tizenCapiMediaController.mc_client_create(
      client,
    );

/// @brief Destroys client.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter client The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_destroy(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_destroy(
      client,
    );

/// @brief Destroys playback.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// Parameter playback    The handle to playback
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see mc_client_set_playback_updated_cb()
/// @see mc_client_get_server_playback_info()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_destroy_playback(
  mc_playback_h playback,
) =>
    tizenCapiMediaController.mc_client_destroy_playback(
      playback,
    );

/// @brief Retrieves all created servers.
/// @details This function gets all created media controller servers.
/// The callback function will be invoked for every created media controller server.
/// If there are no media controller servers, the callback will not be invoked.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback function to be invoked, will be called for each server
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_foreach_server(
  mc_client_h client,
  mc_activated_server_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_foreach_server(
      client,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use mc_playlist_foreach_playlist() instead.
/// @brief Retrieves all playlists of the media controller server.
/// @details This function gets all playlists of the media controller server.
/// The callback function will be invoked for every retrieved playlist.
/// If there are no playlists, the callback will not be invoked.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter callback      The callback function to be invoked
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_playlist_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_foreach_server_playlist(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  mc_playlist_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_foreach_server_playlist(
      client,
      server_name,
      callback,
      user_data,
    );

/// @brief Retrieves all subscribed Server.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter subscription_type    The subscription type
/// Parameter callback      The callback to be invoked when the list of the subscribed media controller server
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create()
/// @pre Subscribe the media controller server for monitoring status by calling mc_client_subscribe()
/// @see mc_client_create()
/// @see mc_client_subscribe()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_foreach_server_subscribed(
  mc_client_h client,
  int subscription_type,
  mc_subscribed_server_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_foreach_server_subscribed(
      client,
      subscription_type,
      callback,
      user_data,
    );

/// @brief Gets the age rating of the content.
/// @details Gets the age rating of the current playing media.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter playback    The handle to playback
/// Output parameter age_rating    Age rating of the content
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre The playback update callback should be set with mc_client_set_playback_updated_cb().
/// @see mc_client_set_playback_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_age_rating(
  mc_playback_h playback,
  ffi.Pointer<ffi.Int32> age_rating,
) =>
    tizenCapiMediaController.mc_client_get_age_rating(
      playback,
      age_rating,
    );

/// @brief Gets the latest media controller server info.
/// @details The media controller client will get the most recently updated information by the server.
///
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a server_name should be released using free(). \n
/// If there is no activated media controller server, return value of the server name is NULL. \n
/// Before a media controller server sets the playback state to #MC_PLAYBACK_STATE_PLAYING, the @a server_state is #MC_SERVER_STATE_NONE. \n
/// After a media controller server sets the playback state to #MC_PLAYBACK_STATE_PLAYING, the @a server_state is #MC_SERVER_STATE_ACTIVATE. \n
/// After a media controller server is destroyed, @a server_state is #MC_SERVER_STATE_DEACTIVATE.
///
/// Parameter client    The handle of the media controller client
/// Output parameter server_name    The app_id of the latest media controller server
/// Output parameter server_state      The state of the latest media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_latest_server_info(
  mc_client_h client,
  ffi.Pointer<ffi.Pointer<ffi.Char>> server_name,
  ffi.Pointer<ffi.Int32> server_state,
) =>
    tizenCapiMediaController.mc_client_get_latest_server_info(
      client,
      server_name,
      server_state,
    );

/// @brief Gets the playback content type.
/// @details Gets the content type of the current playing media. If there is no content type info, result value is #MC_CONTENT_TYPE_UNDECIDED.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter playback    The handle to playback
/// Output parameter content_type    The content type of the playback
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre The playback update callback should be set with mc_client_set_playback_updated_cb().
/// @see mc_client_set_playback_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_playback_content_type(
  mc_playback_h playback,
  ffi.Pointer<ffi.Int32> content_type,
) =>
    tizenCapiMediaController.mc_client_get_playback_content_type(
      playback,
      content_type,
    );

/// @brief Gets the playback position.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter playback    The handle to playback
/// Output parameter position      The position of the playback in milliseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre The playback update callback should be set with mc_client_set_playback_updated_cb().
/// @see mc_client_set_playback_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_playback_position(
  mc_playback_h playback,
  ffi.Pointer<ffi.UnsignedLongLong> position,
) =>
    tizenCapiMediaController.mc_client_get_playback_position(
      playback,
      position,
    );

/// @brief Gets the playback state.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter playback    The handle to playback
/// Output parameter state      The state of the playback
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre The playback update callback should be set with mc_client_set_playback_updated_cb().
/// @see mc_client_set_playback_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_playback_state(
  mc_playback_h playback,
  ffi.Pointer<ffi.Int32> state,
) =>
    tizenCapiMediaController.mc_client_get_playback_state(
      playback,
      state,
    );

/// @deprecated Deprecated since 5.0. Use mc_client_get_playlist_item_info() instead.
/// @brief Gets the index of the media in playlist.
/// @details Gets the index of the current playing media in a playlist. If the media controller server didn't set the index, the value is NULL.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a index should be released using free().
///
/// Parameter playback    The handle to playback
/// Output parameter index    The index of the media
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre The playback update callback should be set with mc_client_set_playback_updated_cb().
/// @see mc_client_set_playback_updated_cb()
/// @see mc_playlist_foreach_playlist()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_playlist_item_index(
  mc_playback_h playback,
  ffi.Pointer<ffi.Pointer<ffi.Char>> index,
) =>
    tizenCapiMediaController.mc_client_get_playlist_item_index(
      playback,
      index,
    );

/// @brief Gets the playlist name and index of the media in playlist.
/// @details Gets the playlist name and index of the current playing media in a playlist. \n
/// If the media controller server didn't set the info, @a playlist_name and @a index will be set to NULL.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a playlist_name and @a index should be released using free().
///
/// Parameter playback    The handle to playback
/// Output parameter playlist_name    The playlist name media included
/// Output parameter index    The index of the media
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre The playback update callback should be set with mc_client_set_playback_updated_cb().
/// @see mc_client_set_playback_updated_cb()
/// @see mc_playlist_foreach_playlist()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_playlist_item_info(
  mc_playback_h playback,
  ffi.Pointer<ffi.Pointer<ffi.Char>> playlist_name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> index,
) =>
    tizenCapiMediaController.mc_client_get_playlist_item_info(
      playback,
      playlist_name,
      index,
    );

/// @brief Gets the latest 360 mode display status.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter enabled    The status of the latest 360 mode display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_360_mode_enabled(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaController.mc_client_get_server_360_mode_enabled(
      client,
      server_name,
      enabled,
    );

/// @brief Gets the ability support of the media controller server.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If the server's ability support is not set, the result value is #MC_ABILITY_SUPPORTED_UNDECIDED. \n
/// It means you can send the corresponding command to the server, but it's not guaranteed that the server can handle it. \n
/// If the media controller server is deactivated, this function will return #MC_ABILITY_SUPPORTED_UNDECIDED.
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter ability The ability
/// Output parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Get a server name handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_get_latest_server_info()
/// @see mc_client_foreach_server()
/// @see mc_client_get_server_playback_ability()
/// @see mc_client_get_server_display_mode_ability()
/// @see mc_client_get_server_display_rotation_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_ability_support(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int ability,
  ffi.Pointer<ffi.Int32> support,
) =>
    tizenCapiMediaController.mc_client_get_server_ability_support(
      client,
      server_name,
      ability,
      support,
    );

/// @brief Gets the latest display mode.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The default display mode is #MC_DISPLAY_MODE_FULL_SCREEN.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter mode    The info of the latest display mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_display_mode(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaController.mc_client_get_server_display_mode(
      client,
      server_name,
      mode,
    );

/// @brief Gets the supported display mode of the updated media controller server.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If a display mode is not present in the @a supported_modes, then the server's support for this mode is #MC_ABILITY_SUPPORTED_NO and you can't send the corresponding command to the server. \n
/// If the media controller server is deactivated, this function will return #MC_ABILITY_SUPPORTED_NO.
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter supported_modes    The supported display mode, values of #mc_display_mode_e combined with bitwise 'or'.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Get a server name handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_get_latest_server_info()
/// @see mc_client_foreach_server()
/// @see mc_client_get_server_playback_ability()
/// @see mc_client_get_server_ability_support()
/// @see mc_client_get_server_display_rotation_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_display_mode_ability(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.UnsignedInt> supported_modes,
) =>
    tizenCapiMediaController.mc_client_get_server_display_mode_ability(
      client,
      server_name,
      supported_modes,
    );

/// @brief Gets the latest display rotation.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The default display rotation is #MC_DISPLAY_ROTATION_NONE.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter rotation    The info of the latest display rotation
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_display_rotation(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Int32> rotation,
) =>
    tizenCapiMediaController.mc_client_get_server_display_rotation(
      client,
      server_name,
      rotation,
    );

/// @brief Gets the supported display rotation of the updated media controller server.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If a display rotation is not present in the @a supported_rotations, then the server's support for this mode is #MC_ABILITY_SUPPORTED_NO and you can't send the corresponding command to the server. \n
/// If the media controller server is deactivated, this function will return #MC_ABILITY_SUPPORTED_NO.
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter supported_rotations    The supported display rotation, values of #mc_display_rotation_e combined with bitwise 'or'
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Get a server name handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_get_latest_server_info()
/// @see mc_client_foreach_server()
/// @see mc_client_get_server_playback_ability()
/// @see mc_client_get_server_ability_support()
/// @see mc_client_get_server_display_mode_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_display_rotation_ability(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.UnsignedInt> supported_rotations,
) =>
    tizenCapiMediaController.mc_client_get_server_display_rotation_ability(
      client,
      server_name,
      supported_rotations,
    );

/// @brief Gets the icon URI of the media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a uri should be released using @c free(). \n
/// If there is no URI info, return value of the uri is NULL.
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter uri    The icon URI
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_icon(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Pointer<ffi.Char>> uri,
) =>
    tizenCapiMediaController.mc_client_get_server_icon(
      client,
      server_name,
      uri,
    );

/// @brief Gets the latest metadata.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a metadata should be released using @c mc_metadata_destroy(). \n
/// If there is no metadata, return value of the @a metadata is NULL.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter metadata    The handle to metadata
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_metadata(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<mc_metadata_h> metadata,
) =>
    tizenCapiMediaController.mc_client_get_server_metadata(
      client,
      server_name,
      metadata,
    );

/// @brief Gets the playback ability of the media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a ability should be released using @c mc_playback_ability_destroy().\n
/// If the media controller server is deactivated, this function will return #MC_ABILITY_SUPPORTED_UNDECIDED.\n
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter ability    The handle to ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Get a server name handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_get_latest_server_info()
/// @see mc_client_foreach_server()
/// @see mc_playback_action_is_supported()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_playback_ability(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<mc_playback_ability_h> ability,
) =>
    tizenCapiMediaController.mc_client_get_server_playback_ability(
      client,
      server_name,
      ability,
    );

/// @brief Gets the latest playback info.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a playback should be released using @c mc_client_destroy_playback(). \n
/// If there is no playback info, return value of the playback is NULL.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter playback    The handle to playback
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_playback_info(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<mc_playback_h> playback,
) =>
    tizenCapiMediaController.mc_client_get_server_playback_info(
      client,
      server_name,
      playback,
    );

/// @deprecated Deprecated since 5.5. Use mc_client_get_server_ability_support() instead.
/// @brief Gets the support value of the repeat ability of the updated media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If the server's ability support is not set, the result value is #MC_ABILITY_SUPPORTED_UNDECIDED. \n
/// It means you can send the corresponding command to the server, but it's not guaranteed that the server can handle it.
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter support    The support value of the repeat ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Get a server name handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_get_latest_server_info()
/// @see mc_client_foreach_server()
/// @see mc_client_get_server_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_repeat_ability_support(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Int32> support,
) =>
    tizenCapiMediaController.mc_client_get_server_repeat_ability_support(
      client,
      server_name,
      support,
    );

/// @brief Gets the latest repeat mode.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If there is no repeat mode info, return value is #MC_REPEAT_MODE_OFF.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter mode    The info of the latest shuffle mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_repeat_mode(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaController.mc_client_get_server_repeat_mode(
      client,
      server_name,
      mode,
    );

/// @deprecated Deprecated since 5.5. Use mc_client_get_server_ability_support() instead.
/// @brief Gets the support value of the shuffle ability of the updated media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If the server's ability support is not set, the result value is #MC_ABILITY_SUPPORTED_UNDECIDED. \n
/// It means you can send the corresponding command to the server, but it's not guaranteed that the server can handle it.
///
/// Parameter client The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter support    The support value of the shuffle ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Get a server name handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_get_latest_server_info()
/// @see mc_client_foreach_server()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_shuffle_ability_support(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Int32> support,
) =>
    tizenCapiMediaController.mc_client_get_server_shuffle_ability_support(
      client,
      server_name,
      support,
    );

/// @brief Gets the latest shuffle mode.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks If there is no shuffle mode info, return value is #MC_SHUFFLE_MODE_OFF.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter mode    The info of the latest shuffle mode
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_shuffle_mode(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Int32> mode,
) =>
    tizenCapiMediaController.mc_client_get_server_shuffle_mode(
      client,
      server_name,
      mode,
    );

/// @brief Gets the latest subtitles display status.
/// @details The media controller client will get the most recently updated information from @a server_name.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Output parameter enabled    The status of the latest subtitles display
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_get_server_subtitles_enabled(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Bool> enabled,
) =>
    tizenCapiMediaController.mc_client_get_server_subtitles_enabled(
      client,
      server_name,
      enabled,
    );

/// @brief Sends the 360 mode command to server.
/// @details If the server sends the result of the command, the media controller client will get the result of the 360 mode command by mc_cmd_reply_received_cb() callback.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the 360 mode command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter enable      The request status to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_360_mode_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  bool enable,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_360_mode_cmd(
      client,
      server_name,
      enable,
      request_id,
    );

/// @brief Sends the custom command to server.
/// @details If the server sends the result of the command, the media controller client will get the result of the custom command by mc_cmd_reply_received_cb() callback.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the custom command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter command      The command to be sent
/// Parameter data      The extra data
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_custom_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Char> command,
  ffi.Pointer<bundle> data,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_custom_cmd(
      client,
      server_name,
      command,
      data,
      request_id,
    );

/// @brief Sends the display mode command to server.
/// @details If the server sends the result of the command, the media controller client will get the result of the display mode command by mc_cmd_reply_received_cb() callback.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the display mode command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter mode      The display mode to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_display_mode_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int mode,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_display_mode_cmd(
      client,
      server_name,
      mode,
      request_id,
    );

/// @brief Sends the display rotation command to server.
/// @details If the server sends the result of the command, the media controller client will get the result of the display rotation command by mc_cmd_reply_received_cb() callback.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the display rotation command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter rotation      The display rotation to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_display_rotation_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int rotation,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_display_rotation_cmd(
      client,
      server_name,
      rotation,
      request_id,
    );

/// @brief Replies with the result of the requested event to the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The media controller client get the @a server_name and @a request_id through the mc_client_custom_event_received_cb(). \n
/// If @a request_id is not null there, the media controller client should send the reply to the media controller server with the @a request_id. \n
/// If @a request_id is null, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.\n
/// If the @a server_name application doesn't support receiving the event reply, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter request_id    The id of the event request, received in the mc_client_set_custom_event_received_cb() function
/// Parameter result_code    The result code of custom event, #mc_result_code_e since 6.0
/// Parameter data                The extra data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_client_create()
/// @see mc_client_set_custom_event_received_cb()
/// @see mc_client_unset_custom_event_received_cb()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_event_reply(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Char> request_id,
  int result_code,
  ffi.Pointer<bundle> data,
) =>
    tizenCapiMediaController.mc_client_send_event_reply(
      client,
      server_name,
      request_id,
      result_code,
      data,
    );

/// @brief Sends the playback action command to server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the playback action command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter action   The playback action command to send to the media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_get_server_playback_info()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_playback_action_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int action,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_playback_action_cmd(
      client,
      server_name,
      action,
      request_id,
    );

/// @brief Sends the playback position command to server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the playback position command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter position   The position of the playback in milliseconds to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_get_server_playback_info()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_playback_position_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int position,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_playback_position_cmd(
      client,
      server_name,
      position,
      request_id,
    );

/// @brief Sends the playlist command to server.
/// @details The media controller client can send "index" of the playlist to the media controller server with playback action and position.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the playlist command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter playlist_name    The playlist name of the server
/// Parameter index    The index of the media in playlist to send to the media controller server
/// Parameter action    The playback action command to send to the media controller server
/// Parameter position    The position of the playback in milliseconds to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_playlist_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  ffi.Pointer<ffi.Char> playlist_name,
  ffi.Pointer<ffi.Char> index,
  int action,
  int position,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_playlist_cmd(
      client,
      server_name,
      playlist_name,
      index,
      action,
      position,
      request_id,
    );

/// @brief Sends the repeat mode command to server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the repeat mode, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter repeat_mode   The repeat mode to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_get_server_playback_info()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_repeat_mode_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int repeat_mode,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_repeat_mode_cmd(
      client,
      server_name,
      repeat_mode,
      request_id,
    );

/// @brief Sends the search command to server.
/// @details If the server sends the result of the command, the media controller client will get the result of the search command by mc_cmd_reply_received_cb() callback.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the search command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter search      The search handle to be sent
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @pre Create search handle and set data by calling mc_search_create() and mc_search_set_condition().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
/// @see mc_search_create()
/// @see mc_search_set_condition()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_search_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  mc_search_h search,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_search_cmd(
      client,
      server_name,
      search,
      request_id,
    );

/// @brief Sends the shuffle mode command to server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the shuffle mode, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP since 5.5.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter shuffle_mode   The shuffle mode to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_get_server_playback_info()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_shuffle_mode_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  int shuffle_mode,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_shuffle_mode_cmd(
      client,
      server_name,
      shuffle_mode,
      request_id,
    );

/// @brief Sends the subtitles command to server.
/// @details If the server sends the result of the command, the media controller client will get the result of the subtitles command by mc_cmd_reply_received_cb() callback.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the server will not send the reply of the command.\n
/// If the @a server_name application doesn't support the subtitles command, this function will return #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP.
///
/// Parameter client    The handle of the media controller client
/// Parameter server_name    The app_id of the media controller server
/// Parameter enable      The request status to send to media controller server
/// Output parameter request_id   The id of the command request, it will be passed to the mc_cmd_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #MEDIA_CONTROLLER_ERROR_ABILITY_LIMITED_BY_SERVER_APP Limited by server application
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_send_subtitles_cmd(
  mc_client_h client,
  ffi.Pointer<ffi.Char> server_name,
  bool enable,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_client_send_subtitles_cmd(
      client,
      server_name,
      enable,
      request_id,
    );

/// @brief Sets the callback for monitoring the media controller server's 360 mode display.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the 360 mode is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_360_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_360_mode_updated_cb(
  mc_client_h client,
  mc_bool_attribute_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_360_mode_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the media controller server's support for an ability.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// This function can be used to monitor the following abilities:\n
/// #MC_ABILITY_SHUFFLE, \n
/// #MC_ABILITY_REPEAT, \n
/// #MC_ABILITY_PLAYBACK_POSITION, \n
/// #MC_ABILITY_PLAYLIST, \n
/// #MC_ABILITY_CLIENT_CUSTOM, \n
/// #MC_ABILITY_SEARCH, \n
/// #MC_ABILITY_SUBTITLES, \n
/// #MC_ABILITY_360_MODE, \n
/// To monitor the media controller server's support for other abilities, use corresponding function. \n
/// For a playback ability, use mc_client_set_playback_ability_updated_cb(). \n
/// For a display mode ability, use mc_client_set_display_mode_ability_updated_cb(). \n
/// For a display rotation ability, use mc_client_set_display_rotation_ability_updated_cb(). \n
///
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the ability is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_ability_support_updated_cb()
/// @see mc_client_set_playback_ability_updated_cb()
/// @see mc_client_set_display_mode_ability_updated_cb()
/// @see mc_client_set_display_rotation_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_ability_support_updated_cb(
  mc_client_h client,
  mc_ability_support_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_ability_support_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for receiving the result of the command from the media controller server.
/// @details The media controller client which calls this function will receives the result of the command from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// Parameter callback      The callback to be invoked when the reply is received
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_unset_cmd_reply_received_cb()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_cmd_reply_received_cb(
  mc_client_h client,
  mc_cmd_reply_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_cmd_reply_received_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for receiving the custom event from a media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle to media controller client
/// Parameter callback      The callback to be invoked when the media controller client receives custom event from a media controller server
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_client_create()
/// @see mc_client_custom_event_received_cb()
/// @see mc_client_unset_custom_event_received_cb()
/// @see mc_client_send_event_reply()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_custom_event_received_cb(
  mc_client_h client,
  mc_client_custom_event_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_custom_event_received_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the display mode ability of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the ability is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_display_mode_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_display_mode_ability_updated_cb(
  mc_client_h client,
  mc_ability_supported_items_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_display_mode_ability_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the media controller server's display mode.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the display mode is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_display_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_display_mode_updated_cb(
  mc_client_h client,
  mc_display_mode_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_display_mode_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the display rotation ability of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the ability is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_display_rotation_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_display_rotation_ability_updated_cb(
  mc_client_h client,
  mc_ability_supported_items_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_display_rotation_ability_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the media controller server's display rotation.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the display rotation is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_display_rotation_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_display_rotation_updated_cb(
  mc_client_h client,
  mc_display_rotation_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_display_rotation_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring metadata status of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// Parameter callback      The callback to be invoked when the metadata status is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_metadata_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_metadata_updated_cb(
  mc_client_h client,
  mc_metadata_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_metadata_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the playback ability of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the ability is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_playback_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_playback_ability_updated_cb(
  mc_client_h client,
  mc_playback_ability_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_playback_ability_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring playback status of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// Parameter callback      The callback to be invoked when the playback status is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_playback_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_playback_updated_cb(
  mc_client_h client,
  mc_playback_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_playback_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring playlist status of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// Parameter callback      The callback to be invoked when the playlist status is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_playlist_updated_cb()
/// @see mc_client_unset_playlist_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_playlist_updated_cb(
  mc_client_h client,
  mc_playlist_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_playlist_updated_cb(
      client,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use mc_client_set_ability_support_updated_cb() instead.
/// @brief Sets the callback for monitoring the repeat ability of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the ability is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_repeat_ability_updated_cb(
  mc_client_h client,
  mc_repeat_ability_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_repeat_ability_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring repeat mode of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the repeat mode is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_repeat_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_repeat_mode_updated_cb(
  mc_client_h client,
  mc_repeat_mode_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_repeat_mode_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring status of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// Parameter callback      The callback to be invoked when the media controller server status is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_server_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_server_updated_cb(
  mc_client_h client,
  mc_server_state_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_server_updated_cb(
      client,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use mc_client_set_ability_support_updated_cb() instead.
/// @brief Sets the callback for monitoring the shuffle ability of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the ability is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_shuffle_ability_updated_cb(
  mc_client_h client,
  mc_shuffle_ability_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_shuffle_ability_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring shuffle mode of the media controller server.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the shuffle mode is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_shuffle_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_shuffle_mode_updated_cb(
  mc_client_h client,
  mc_shuffle_mode_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_shuffle_mode_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Sets the callback for monitoring the media controller server's subtitles display.
/// @details The media controller client which calls this function will receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter callback      The callback to be invoked when the subtitles status is changed
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_unset_subtitles_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_set_subtitles_updated_cb(
  mc_client_h client,
  mc_bool_attribute_updated_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_client_set_subtitles_updated_cb(
      client,
      callback,
      user_data,
    );

/// @brief Subscribes media controller server for monitoring status.
/// @details If media controller client subscribe media controller server,
/// the media controller client receive callback from subscribed media controller server. \n
/// If media controller client subscribe media controller server one or more,
/// the media controller client can receive callback from only subscribed media controller server. \n
/// If you want to subscribe for the all media controller server again,
/// unset mode update callback and set the callback for the monitoring status again.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter subscription_type    The subscription type
/// Parameter server_name    The app_id of the media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller client handle by calling mc_client_create()
/// @pre Set the callback for monitoring status of the media controller server
/// @post Unsubscribe the media controller server for monitoring status by calling mc_client_unsubscribe()
/// @see mc_client_create()
/// @see mc_client_unsubscribe()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_subscribe(
  mc_client_h client,
  int subscription_type,
  ffi.Pointer<ffi.Char> server_name,
) =>
    tizenCapiMediaController.mc_client_subscribe(
      client,
      subscription_type,
      server_name,
    );

/// @brief Unsets the callback for monitoring the media controller server's 360 mode display.
/// @details The media controller client which calls this function will not receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_360_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_360_mode_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_360_mode_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the media controller server's support for an ability.
/// @details The media controller client which calls this function will not receive notifications from all media controller servers.
/// This function can be used for the following abilities:\n
/// #MC_ABILITY_SHUFFLE, \n
/// #MC_ABILITY_REPEAT, \n
/// #MC_ABILITY_PLAYBACK_POSITION, \n
/// #MC_ABILITY_PLAYLIST, \n
/// #MC_ABILITY_CLIENT_CUSTOM, \n
/// #MC_ABILITY_SEARCH, \n
/// #MC_ABILITY_SUBTITLES, \n
/// #MC_ABILITY_360_MODE, \n
/// To stop monitoring the media controller server's support for other abilities, use corresponding function. \n
/// For a playback ability, use mc_client_unset_playback_ability_updated_cb(). \n
/// For a display mode ability, use mc_client_unset_display_mode_ability_updated_cb(). \n
/// For a display rotation ability, use mc_client_unset_display_rotation_ability_updated_cb(). \n
///
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_ability_support_updated_cb()
/// @see mc_client_unset_playback_ability_updated_cb()
/// @see mc_client_unset_display_mode_ability_updated_cb()
/// @see mc_client_unset_display_rotation_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_ability_support_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_ability_support_updated_cb(
      client,
    );

/// @brief Unsets the callback for receiving common reply of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_set_cmd_reply_received_cb()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_cmd_reply_received_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_cmd_reply_received_cb(
      client,
    );

/// @brief Unsets the callback for receiving the custom event from a media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_client_create()
/// @see mc_client_custom_event_received_cb()
/// @see mc_client_set_custom_event_received_cb()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_custom_event_received_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_custom_event_received_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the display mode ability of the media controller server.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_display_mode_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_display_mode_ability_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_display_mode_ability_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the media controller server's display mode.
/// @details The media controller client which calls this function will not receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_display_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_display_mode_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_display_mode_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the display rotation ability of the media controller server.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_display_rotation_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_display_rotation_ability_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_display_rotation_ability_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the media controller server's display rotation.
/// @details The media controller client which calls this function will not receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_display_rotation_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_display_rotation_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_display_rotation_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring metadata status of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_metadata_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_metadata_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_metadata_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the playback ability of the media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_playback_ability_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_playback_ability_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_playback_ability_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring playback status of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_playback_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_playback_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_playback_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring playlist status of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_playlist_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_playlist_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_playlist_updated_cb(
      client,
    );

/// @deprecated Deprecated since 5.5. Use mc_client_unset_ability_support_updated_cb() instead.
/// @brief Unsets the callback for monitoring the repeat ability of the media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_repeat_ability_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_repeat_ability_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring repeat mode of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_repeat_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_repeat_mode_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_repeat_mode_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring status of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client         The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_server_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_server_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_server_updated_cb(
      client,
    );

/// @deprecated Deprecated since 5.5. Use mc_client_unset_ability_support_updated_cb() instead.
/// @brief Unsets the callback for monitoring the shuffle ability of the media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_shuffle_ability_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_shuffle_ability_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring shuffle mode of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_shuffle_mode_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_shuffle_mode_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_shuffle_mode_updated_cb(
      client,
    );

/// @brief Unsets the callback for monitoring the media controller server's subtitles display.
/// @details The media controller client which calls this function will not receive notifications from all media controller servers.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_client_create()
/// @see mc_client_destroy()
/// @see mc_client_set_subtitles_updated_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unset_subtitles_updated_cb(
  mc_client_h client,
) =>
    tizenCapiMediaController.mc_client_unset_subtitles_updated_cb(
      client,
    );

/// @brief Unsubscribes media controller server for monitoring status.
/// @details If media controller client unsubscribe media controller server, \n
/// the media controller client don't receive callback from unsubscribed media controller server. \n
/// If media controller client unsubscribe all subscribed media controller server,
/// the media controller client don't receive callback from all media controller server. \n
/// After unset and set update callback function is called again, the media controller client can receive callback from all media controller servers.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.client
///
/// Parameter client    The handle of the media controller client
/// Parameter subscription_type    The subscription type
/// Parameter server_name    The app_id of the media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create()
/// @pre Subscribe the media controller server for monitoring status by calling mc_client_subscribe()
/// @see mc_client_create()
/// @see mc_client_subscribe()
///
/// Module getter: `tizenCapiMediaController`.
int mc_client_unsubscribe(
  mc_client_h client,
  int subscription_type,
  ffi.Pointer<ffi.Char> server_name,
) =>
    tizenCapiMediaController.mc_client_unsubscribe(
      client,
      subscription_type,
      server_name,
    );

/// @brief Clones the metadata handle of media.
/// @details This function copies the metadata handle from one to another.
/// The #mc_metadata_h is created internally and therefore available through the functions of media controller metadata.
///
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @remarks The @a dst should be released using @c mc_metadata_destroy().
///
/// Parameter src The source handle of the media controller metadata
/// Output parameter dst The destination handle of the media controller metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_metadata_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_clone(
  mc_metadata_h src,
  ffi.Pointer<mc_metadata_h> dst,
) =>
    tizenCapiMediaController.mc_metadata_clone(
      src,
      dst,
    );

/// @brief Decodes the episode of the media.
/// @details You can get various metadata using mc_metadata_get().
/// If you want to get the proper episode number and episode title,\n
/// you should decode the metadata values gotten by mc_metadata_get() with this function.\n
/// Otherwise, the values are illegible. \n
/// @since_tizen 5.5
///
/// @remarks The @a episode_title should be released using free(). \n
///
/// Parameter encoded_episode                The encoded episode information
/// Output parameter episode_num        The episode number
/// Output parameter episode_title         The episode title
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Get the encoded episode information by calling mc_metadata_get()
///
/// @see mc_metadata_get()
/// @see mc_metadata_encode_episode()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_decode_episode(
  ffi.Pointer<ffi.Char> encoded_episode,
  ffi.Pointer<ffi.Int> episode_num,
  ffi.Pointer<ffi.Pointer<ffi.Char>> episode_title,
) =>
    tizenCapiMediaController.mc_metadata_decode_episode(
      encoded_episode,
      episode_num,
      episode_title,
    );

/// @brief Decodes the resolution of the media.
/// @details You can get various metadata using mc_metadata_get().
/// If you want to get the proper resolution, \n
/// you should decode the metadata values gotten by mc_metadata_get() with this function.\n
/// Otherwise, the values are illegible. \n
/// @since_tizen 5.5
///
/// Parameter encoded_resolution    The encoded resolution information
/// Output parameter width        Content width
/// Output parameter height       Content height
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Get the encoded resolution information by calling mc_metadata_get()
///
/// @see mc_metadata_get()
/// @see mc_metadata_encode_resolution()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_decode_resolution(
  ffi.Pointer<ffi.Char> encoded_resolution,
  ffi.Pointer<ffi.UnsignedInt> width,
  ffi.Pointer<ffi.UnsignedInt> height,
) =>
    tizenCapiMediaController.mc_metadata_decode_resolution(
      encoded_resolution,
      width,
      height,
    );

/// @brief Decodes the season of the media.
/// @details You can get various metadata using mc_metadata_get().
/// If you want to get the proper season number and season title,\n
/// you should decode the metadata values gotten by mc_metadata_get() with this function.\n
/// Otherwise, the values are illegible. \n
/// @since_tizen 5.5
///
/// @remarks The @a season_title should be released using free(). \n
///
/// Parameter encoded_season                The encoded season information
/// Output parameter season_num        The season number
/// Output parameter season_title         The season title
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Get the encoded season information by calling mc_metadata_get()
///
/// @see mc_metadata_get()
/// @see mc_metadata_encode_season()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_decode_season(
  ffi.Pointer<ffi.Char> encoded_season,
  ffi.Pointer<ffi.Int> season_num,
  ffi.Pointer<ffi.Pointer<ffi.Char>> season_title,
) =>
    tizenCapiMediaController.mc_metadata_decode_season(
      encoded_season,
      season_num,
      season_title,
    );

/// @brief Destroys a media controller metadata handle.
/// @details This function frees all resources related to the media controller metadata handle. This
/// handle no longer can be used to perform any operations. A new handle has to
/// be created before next usage.
///
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter metadata        The handle of the media controller metadata
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mc_metadata_clone()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_destroy(
  mc_metadata_h metadata,
) =>
    tizenCapiMediaController.mc_metadata_destroy(
      metadata,
    );

/// @brief Encodes the episode metadata of the media.
/// @details You can set various metadata with functions such as mc_server_set_metadata() and mc_server_add_item_to_playlist().
/// If you want to set the episode,\n
/// you should encode the episode with this function and then set the encoded data.\n
/// Otherwise, the setting function returns an error. \n
/// @a episode_title can be NULL. If it is NULL, the decoded episode title will also be NULL.\n
/// @since_tizen 5.5
///
/// @remarks The @a encoded_episode should be released using free(). \n
///
/// Parameter episode_num    The episode number
/// Parameter episode_title     The episode title
/// Output parameter encoded_episode         The encoded episode information
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_server_set_metadata()
/// @see mc_server_add_item_to_playlist()
/// @see mc_metadata_decode_episode()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_encode_episode(
  int episode_num,
  ffi.Pointer<ffi.Char> episode_title,
  ffi.Pointer<ffi.Pointer<ffi.Char>> encoded_episode,
) =>
    tizenCapiMediaController.mc_metadata_encode_episode(
      episode_num,
      episode_title,
      encoded_episode,
    );

/// @brief Encodes the resolution metadata of the media.
/// @details You can set various metadata with functions such as mc_server_set_metadata() and mc_server_add_item_to_playlist().
/// If you want to set the resolution,\n
/// you should encode the resolution with this function and then set the encoded data.\n
/// Otherwise, the setting function returns an error. \n
/// @since_tizen 5.5
///
/// @remarks The @a encoded_resolution should be released using free(). \n
///
/// Parameter width                Content width
/// Parameter height               Content height
/// Output parameter encoded_resolution         The encoded resolution information
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_server_set_metadata()
/// @see mc_server_add_item_to_playlist()
/// @see mc_metadata_decode_resolution()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_encode_resolution(
  int width,
  int height,
  ffi.Pointer<ffi.Pointer<ffi.Char>> encoded_resolution,
) =>
    tizenCapiMediaController.mc_metadata_encode_resolution(
      width,
      height,
      encoded_resolution,
    );

/// @brief Encodes the season metadata of the media.
/// @details You can set various metadata with functions such as mc_server_set_metadata() and mc_server_add_item_to_playlist().
/// If you want to set the season,\n
/// you should encode the season with this function and then set the encoded data.\n
/// Otherwise, the setting function returns an error. \n
/// @a season_title can be NULL. If it is NULL, the decoded season title will also be NULL.\n
/// @since_tizen 5.5
///
/// @remarks The @a encoded_season should be released using free(). \n
///
/// Parameter season_num    The season number
/// Parameter season_title     The season title
/// Output parameter encoded_season         The encoded season information
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_server_set_metadata()
/// @see mc_server_add_item_to_playlist()
/// @see mc_metadata_decode_season()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_encode_season(
  int season_num,
  ffi.Pointer<ffi.Char> season_title,
  ffi.Pointer<ffi.Pointer<ffi.Char>> encoded_season,
) =>
    tizenCapiMediaController.mc_metadata_encode_season(
      season_num,
      season_title,
      encoded_season,
    );

/// @brief Gets the metadata.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @remarks The @a value should be released using free(). \n
/// If the attribute value of the metadata is empty, return value is NULL.
///
/// Parameter metadata    The handle of the media controller metadata
/// Parameter attribute    The key attribute name to get
/// Output parameter value      The value of the attribute
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Sets mc_client_set_metadata_updated_cb() function to get the metadata if you are media controller client. \n
/// and also you can use this function when get the metadata when callback function invoked in @c mc_playlist_foreach_item().
///
/// @see mc_client_set_metadata_updated_cb()
/// @see mc_playlist_foreach_item()
///
/// Module getter: `tizenCapiMediaController`.
int mc_metadata_get(
  mc_metadata_h metadata,
  int attribute,
  ffi.Pointer<ffi.Pointer<ffi.Char>> value,
) =>
    tizenCapiMediaController.mc_metadata_get(
      metadata,
      attribute,
      value,
    );

/// @brief Clones a playback ability handle.
/// @details This function copies the playback ability handle from a source to
/// destination. The #mc_playback_ability_h is created internally and available through playback ability functions.
///
/// @since_tizen 5.0
///
/// @remarks The @a dst should be released using @c mc_playback_ability_destroy().
///
/// Parameter src The source handle of the playback ability
/// Output parameter dst The destination handle of the playback ability
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_playback_ability_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playback_ability_clone(
  mc_playback_ability_h src,
  ffi.Pointer<mc_playback_ability_h> dst,
) =>
    tizenCapiMediaController.mc_playback_ability_clone(
      src,
      dst,
    );

/// @brief Destroys a playback ability handle.
/// @details This function frees all resources related to the playback ability handle. This
/// handle no longer can be used to perform any operations. A new handle has to
/// be created before next use.
///
/// @since_tizen 5.0
///
/// Parameter ability        The handle of the playback ability
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mc_playback_ability_clone()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playback_ability_destroy(
  mc_playback_ability_h ability,
) =>
    tizenCapiMediaController.mc_playback_ability_destroy(
      ability,
    );

/// @brief Gets the support value of the playback ability.
/// @since_tizen 5.0
///
/// @remarks If the ability's support is not set, the result value is #MC_ABILITY_SUPPORTED_UNDECIDED.
///
/// Parameter ability    The handle of the playback ability
/// Parameter action    The playback action to get
/// Output parameter supported      The support value of the ability
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Call the mc_client_set_playback_ability_updated_cb() function to get the ability if you are the media controller client.
///
/// @see mc_client_set_playback_ability_updated_cb()
/// @see mc_client_get_server_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playback_action_is_supported(
  mc_playback_ability_h ability,
  int action,
  ffi.Pointer<ffi.Int32> supported,
) =>
    tizenCapiMediaController.mc_playback_action_is_supported(
      ability,
      action,
      supported,
    );

/// @brief Clones a media controller playlist handle.
/// @details This function copies the media controller playlist handle from a source to
/// destination. The #mc_playlist_h is created internally and available through media controller playlist functions.
///
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @remarks The @a dst should be released using mc_playlist_destroy().
///
/// Parameter src The source handle to the media controller playlist
/// Output parameter dst The destination handle to the media controller playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_clone(
  mc_playlist_h src,
  ffi.Pointer<mc_playlist_h> dst,
) =>
    tizenCapiMediaController.mc_playlist_clone(
      src,
      dst,
    );

/// @brief Destroys a media controller playlist handle.
/// @details This function frees all resources related to the media controller playlist handle. This
/// handle no longer can be used to perform any operations. A new handle has to
/// be created before next usage.
///
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter playlist        The handle of the media controller playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mc_playlist_clone()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_destroy(
  mc_playlist_h playlist,
) =>
    tizenCapiMediaController.mc_playlist_destroy(
      playlist,
    );

/// @brief Iterates through media items in a playlist.
/// @details This function iterates through all items in the playlist.
/// The callback function will be invoked for every retrieved playlist item.
/// If there are no items on the playlist, the callback will not be invoked.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// Parameter playlist        The handle of the media controller playlist
/// Parameter callback       The callback function to be invoked
/// Parameter user_data     The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre The playlist handle should be received by calling mc_playlist_foreach_playlist() or mc_playlist_get_playlist().
/// @post This function invokes mc_playlist_item_cb().
///
/// @see mc_playlist_foreach_playlist()
/// @see mc_playlist_get_playlist()
/// @see mc_playlist_item_cb()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_foreach_item(
  mc_playlist_h playlist,
  mc_playlist_item_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_playlist_foreach_item(
      playlist,
      callback,
      user_data,
    );

/// @brief Iterates over playlists of the media controller server.
/// @details This function iterates through all playlists of the given @a app_id.
/// The media controller server can have several playlists. You can get playlists only for the activated media controller server.
/// If @a app_id is not an ID of an activated media controller server, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// The callback function will be invoked for every retrieved playlist.
/// If there are no playlists, the callback will not be invoked.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server \n
/// %http://tizen.org/privilege/mediacontroller.client \n
///
/// @remarks You must add privilege %http://tizen.org/privilege/mediacontroller.server, if your application is a media controller server.
/// You must add privilege %http://tizen.org/privilege/mediacontroller.client, if your application is a media controller client.
///
/// Parameter app_id         The app_id of the media controller server
/// Parameter callback       The callback function to be invoked
/// Parameter user_data     The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @post This function invokes mc_playlist_cb().
///
/// @see mc_playlist_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_foreach_playlist(
  ffi.Pointer<ffi.Char> app_id,
  mc_playlist_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_playlist_foreach_playlist(
      app_id,
      callback,
      user_data,
    );

/// @brief Gets the number of the media item in a playlist.
/// @since_tizen 5.5
///
/// Parameter playlist        The handle of the media controller playlist
/// Output parameter item_count      The number of media items.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre The playlist handle should be received by calling mc_playlist_foreach_playlist() or mc_playlist_get_playlist().
///
/// @see mc_playlist_foreach_playlist()
/// @see mc_playlist_get_playlist()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_get_item_count(
  mc_playlist_h playlist,
  ffi.Pointer<ffi.Int> item_count,
) =>
    tizenCapiMediaController.mc_playlist_get_item_count(
      playlist,
      item_count,
    );

/// @brief Gets the name of the playlist.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @remarks The @a playlist_name should be released using free().
///
/// Parameter playlist         The handle of the media controller playlist
/// Output parameter playlist_name      The name of the playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre The playlist handle should be received by calling mc_playlist_foreach_playlist() or mc_playlist_get_playlist().
///
/// @see mc_playlist_foreach_playlist()
/// @see mc_playlist_get_playlist()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_get_name(
  mc_playlist_h playlist,
  ffi.Pointer<ffi.Pointer<ffi.Char>> playlist_name,
) =>
    tizenCapiMediaController.mc_playlist_get_name(
      playlist,
      playlist_name,
    );

/// @brief Gets the playlist handle.
/// @details This function creates a new playlist handle for the given @a app_id and @a playlist_name.
/// You can get the playlist only for the activated media controller server.
/// If @a app_id is not an ID of an activated media controller server, or if @a playlist_name is invalid, \n
/// this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server \n
/// %http://tizen.org/privilege/mediacontroller.client \n
///
/// @remarks You must add privilege %http://tizen.org/privilege/mediacontroller.server, if your application is a media controller server.
/// You must add privilege %http://tizen.org/privilege/mediacontroller.client, if your application is a media controller client.
/// The @a playlist should be released using mc_playlist_destroy().
///
/// Parameter app_id         The app_id of the media controller server
/// Parameter playlist_name The name of the playlist
/// Output parameter playlist       The handle of the media controller playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_playlist_get_name()
/// @see mc_playlist_get_item_count()
/// @see mc_playlist_foreach_item()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_get_playlist(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Char> playlist_name,
  ffi.Pointer<mc_playlist_h> playlist,
) =>
    tizenCapiMediaController.mc_playlist_get_playlist(
      app_id,
      playlist_name,
      playlist,
    );

/// @brief Gets the number of playlists for the given @a app_id.
/// @details The media controller server can have several playlists. You can get a count of playlists only for the activated media controller server.
/// If @a app_id is not the ID of an activated media controller server, this function returns #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server \n
/// %http://tizen.org/privilege/mediacontroller.client \n
///
/// @remarks You must add privilege %http://tizen.org/privilege/mediacontroller.server, if your application is a media controller server.
/// You must add privilege %http://tizen.org/privilege/mediacontroller.client, if your application is a media controller client.
///
/// Parameter app_id                The app_id of the media controller server
/// Output parameter playlist_count      The number of playlists that the media controller server has.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @see mc_client_foreach_server()
///
/// Module getter: `tizenCapiMediaController`.
int mc_playlist_get_playlist_count(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Int> playlist_count,
) =>
    tizenCapiMediaController.mc_playlist_get_playlist_count(
      app_id,
      playlist_count,
    );

/// @brief Clones a media controller search handle.
/// @details This function copies the media controller search handle from a source to
/// destination. The #mc_search_h is created internally and available through media controller search functions.
///
/// @since_tizen 5.0
///
/// @remarks The @a dst should be released using @c mc_search_destroy().
///
/// Parameter src The source handle of the media controller search
/// Output parameter dst The destination handle of the media controller search
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_search_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_search_clone(
  mc_search_h src,
  ffi.Pointer<mc_search_h> dst,
) =>
    tizenCapiMediaController.mc_search_clone(
      src,
      dst,
    );

/// @brief Creates a handle for searching media.
/// @since_tizen 5.0
///
/// @remarks The @a search should be released using @c mc_search_destroy().
///
/// Output parameter search The handle of the media controller search
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @see mc_search_set_condition()
/// @see mc_search_foreach_condition()
///
/// Module getter: `tizenCapiMediaController`.
int mc_search_create(
  ffi.Pointer<mc_search_h> search,
) =>
    tizenCapiMediaController.mc_search_create(
      search,
    );

/// @brief Destroys search.
/// @since_tizen 5.0
/// Parameter search The handle of the media controller search
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @pre Create a media controller search handle by calling mc_search_create().
/// @see mc_search_create()
///
/// Module getter: `tizenCapiMediaController`.
int mc_search_destroy(
  mc_search_h search,
) =>
    tizenCapiMediaController.mc_search_destroy(
      search,
    );

/// @brief Retrieves all search conditions.
/// @details This function gets all search conditions set.
/// The callback function will be invoked for every retrieved search condition.
/// If there were no search conditions set with mc_search_set_condition(), this function will return #MEDIA_CONTROLLER_ERROR_NONE, and the callback will not be invoked.
/// @since_tizen 5.0
///
/// Parameter search    The handle of the media controller search
/// Parameter callback      The callback function to be invoked.
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @pre Create a media controller search handle by calling mc_search_create().
/// @pre Set the search conditions by calling mc_search_set_condition().
/// @see mc_search_create()
/// @see mc_search_set_condition()
///
/// Module getter: `tizenCapiMediaController`.
int mc_search_foreach_condition(
  mc_search_h search,
  mc_search_condition_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_search_foreach_condition(
      search,
      callback,
      user_data,
    );

/// @brief Gets the number of conditions to search.
/// @since_tizen 5.5
///
/// Parameter search        The handle of the media controller search
/// Output parameter condition_count      The number of conditions.
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// @see mc_search_create()
/// @see mc_search_set_condition()
/// @see mc_search_foreach_condition()
///
/// Module getter: `tizenCapiMediaController`.
int mc_search_get_condition_count(
  mc_search_h search,
  ffi.Pointer<ffi.Int> condition_count,
) =>
    tizenCapiMediaController.mc_search_get_condition_count(
      search,
      condition_count,
    );

/// @brief Sets the information to search.
/// @details Sets the information to search. You can set various search condition by calling this function for the same search handle. \n
/// But it's not allowed to set more than 20 conditions. If you try to set more than 20 conditions, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// @since_tizen 5.0
///
/// Parameter search The handle of the media controller search
/// Parameter content_type The content type to search
/// Parameter category The category to search
/// Parameter search_keyword The key word to search
/// Parameter data The extra data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
/// @pre mc_search_create()
/// @see mc_search_foreach_condition()
///
/// Module getter: `tizenCapiMediaController`.
int mc_search_set_condition(
  mc_search_h search,
  int content_type,
  int category,
  ffi.Pointer<ffi.Char> search_keyword,
  ffi.Pointer<bundle> data,
) =>
    tizenCapiMediaController.mc_search_set_condition(
      search,
      content_type,
      category,
      search_keyword,
      data,
    );

/// @brief Adds a new item to the playlist.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It's possible to add at most 100 items at once. \n
/// If you have more items, register the first 100 items by calling mc_server_update_playlist_done(), then add the remaining items.
///
/// Parameter server The handle to media controller server
/// Parameter playlist  The handle of the media controller playlist
/// Parameter index The index of the playlist item. It should not be NULL
/// Parameter attribute    The key attribute name to set
/// Parameter value      The value of the attribute
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @pre Create a media controller playlist handle by calling mc_server_create_playlist().
/// @post You should call @c mc_server_update_playlist_done() to register it.
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_create_playlist()
/// @see mc_server_update_playlist_done()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_add_item_to_playlist(
  mc_server_h server,
  mc_playlist_h playlist,
  ffi.Pointer<ffi.Char> index,
  int attribute,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiMediaController.mc_server_add_item_to_playlist(
      server,
      playlist,
      index,
      attribute,
      value,
    );

/// @brief Creates a media controller server.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The @a server should be released using mc_server_destroy(). You can create only one server handle for each process.
///
/// Output parameter server The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_create(
  ffi.Pointer<mc_server_h> server,
) =>
    tizenCapiMediaController.mc_server_create(
      server,
    );

/// @brief Creates a new playlist with the given name.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The @a playlist should be released using mc_playlist_destroy().\n
/// When the server is destroyed, all its playlists will be deleted automatically.
///
/// Parameter server The handle to media controller server
/// Parameter playlist_name The name of the created playlist
/// Output parameter playlist  The handle of the media controller playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post You can call mc_server_add_item_to_playlist() if you have items to add in the playlist and should call @c mc_server_update_playlist_done() to register it.
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_add_item_to_playlist()
/// @see mc_server_update_playlist_done()
/// @see mc_server_delete_playlist()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_create_playlist(
  mc_server_h server,
  ffi.Pointer<ffi.Char> playlist_name,
  ffi.Pointer<mc_playlist_h> playlist,
) =>
    tizenCapiMediaController.mc_server_create_playlist(
      server,
      playlist_name,
      playlist,
    );

/// @brief Deletes the playlist of the media controller server.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter playlist  The handle of the media controller playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @pre Create a media controller playlist handle by calling mc_server_create_playlist().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_create_playlist()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_delete_playlist(
  mc_server_h server,
  mc_playlist_h playlist,
) =>
    tizenCapiMediaController.mc_server_delete_playlist(
      server,
      playlist,
    );

/// @brief Destroys media controller server.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @remarks After the server is destroyed, all its abilities will be initialized to the default automatically.
///
/// Parameter server The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_destroy(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_destroy(
      server,
    );

/// @brief Retrieves all created clients.
/// @details This function gets all created media controller clients.
/// The callback function will be invoked for every created media controller client.
/// If there are no media controller clients, the callback will not be invoked.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback function to be invoked, will be called for each client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_activated_client_cb()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_foreach_client(
  mc_server_h server,
  mc_activated_client_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_foreach_client(
      server,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use mc_playlist_foreach_playlist() instead.
/// @brief Retrieves all playlists of the media controller server.
/// @details This function gets all playlists of the media controller server.
/// The callback function will be invoked for every retrieved playlist.
/// If there are no playlists, callback will not be invoked.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter callback      The callback function to be invoked, will be called for each playlist
/// Parameter user_data   The user data to be passed to the callback function
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_playlist_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_foreach_playlist(
  mc_server_h server,
  mc_playlist_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_foreach_playlist(
      server,
      callback,
      user_data,
    );

/// @brief Replies the result of the requested command to the client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks When the server receives a command, this function can be called by mc_server_playback_action_cmd_received_cb(), mc_server_playback_position_cmd_received_cb(), mc_server_shuffle_mode_cmd_received_cb(), mc_server_repeat_mode_cmd_received_cb(), mc_server_playlist_cmd_received_cb() and mc_server_custom_cmd_received_cb().\n
/// If @a request_id is null, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
///
/// Parameter server    The handle to media controller server
/// Parameter client_name    The app_id of the media controller client
/// Parameter request_id    The id of the command request, received in the mc_server_custom_cmd_received_cb() function
/// Parameter result_code    The result code of custom command, #mc_result_code_e since 6.0
/// Parameter data                The extra data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_playback_action_cmd_received_cb()
/// @see mc_server_playback_position_cmd_received_cb()
/// @see mc_server_shuffle_mode_cmd_received_cb()
/// @see mc_server_repeat_mode_cmd_received_cb()
/// @see mc_server_playlist_cmd_received_cb()
/// @see mc_server_custom_cmd_received_cb()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_send_cmd_reply(
  mc_server_h server,
  ffi.Pointer<ffi.Char> client_name,
  ffi.Pointer<ffi.Char> request_id,
  int result_code,
  ffi.Pointer<bundle> data,
) =>
    tizenCapiMediaController.mc_server_send_cmd_reply(
      server,
      client_name,
      request_id,
      result_code,
      data,
    );

/// @brief Sends the customized event with the bundle data.
/// @details If the event is needed in the client, this function should be called. @a data is a bundle.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The @a request_id should be released using free().\n
/// If the @a request_id is null, the client will not send the reply of the custom event.
///
/// Parameter server The handle to media controller server
/// Parameter client_name The name of the client which receive the event
/// Parameter event The name of the event
/// Parameter data The data can include other information associated with the event
/// Output parameter request_id   The id of the event request, it will be passed to the mc_server_event_reply_received_cb() function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_event_reply_received_cb()
/// @see mc_server_set_event_reply_received_cb()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_send_custom_event(
  mc_server_h server,
  ffi.Pointer<ffi.Char> client_name,
  ffi.Pointer<ffi.Char> event,
  ffi.Pointer<bundle> data,
  ffi.Pointer<ffi.Pointer<ffi.Char>> request_id,
) =>
    tizenCapiMediaController.mc_server_send_custom_event(
      server,
      client_name,
      event,
      data,
      request_id,
    );

/// @brief Sets the callback for receiving 360 mode command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_ability_support(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives 360 mode command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_360_mode_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_360_mode_cmd_received_cb(
  mc_server_h server,
  mc_server_enable_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_360_mode_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the ability's support of the media controller.
/// @details This function allows setting the support for the following abilities:
/// #MC_ABILITY_SHUFFLE, \n
/// #MC_ABILITY_REPEAT, \n
/// #MC_ABILITY_PLAYBACK_POSITION, \n
/// #MC_ABILITY_PLAYLIST, \n
/// #MC_ABILITY_CLIENT_CUSTOM, \n
/// #MC_ABILITY_SEARCH, \n
/// #MC_ABILITY_SUBTITLES, \n
/// #MC_ABILITY_360_MODE, \n
/// To set the support for other abilities, use corresponding function. \n
/// For a playback ability, use mc_server_set_playback_ability() and mc_server_update_playback_ability(). \n
/// For a display mode ability, use mc_server_set_display_mode_ability(). \n
/// For a display rotation ability, use mc_server_set_display_rotation_ability(). \n
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a support is #MC_ABILITY_SUPPORTED_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER. \n
/// Default value is #MC_ABILITY_SUPPORTED_UNDECIDED. \n
/// But for the #MC_ABILITY_SUBTITLES, #MC_ABILITY_360_MODE default value is #MC_ABILITY_SUPPORTED_NO. \n
/// Clients can send command to servers when server's ability is #MC_ABILITY_SUPPORTED_YES or #MC_ABILITY_SUPPORTED_UNDECIDED.
/// So, it is required that server set the corresponding ability's support to communicate with clients.
///
/// Parameter server The handle to media controller server
/// Parameter ability The ability to set support
/// Parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_playback_ability()
/// @see mc_server_update_playback_ability()
/// @see mc_server_set_display_mode_ability()
/// @see mc_server_set_display_rotation_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_ability_support(
  mc_server_h server,
  int ability,
  int support,
) =>
    tizenCapiMediaController.mc_server_set_ability_support(
      server,
      ability,
      support,
    );

/// @brief Sets the content age rating to update the latest playback info.
/// @details If this function is called, the updated age rating information will be sent to all clients. Default value is #MC_CONTENT_RATING_ALL.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter age_rating Age rating of the content
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated age rating information by calling mc_server_update_playback_info().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_info()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_content_age_rating(
  mc_server_h server,
  int age_rating,
) =>
    tizenCapiMediaController.mc_server_set_content_age_rating(
      server,
      age_rating,
    );

/// @brief Sets the callback for receiving custom command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives custom command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_custom_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_custom_cmd_received_cb(
  mc_server_h server,
  mc_server_custom_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_custom_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the display mode ability of the media controller.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a support is #MC_ABILITY_SUPPORTED_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// The default display mode ability is #MC_ABILITY_SUPPORTED_NO. \n
/// It means client can't send the corresponding command to the server, so to receive command from clients, set ability as #MC_ABILITY_SUPPORTED_YES.
///
/// Parameter server The handle to media controller server
/// Parameter mode The display mode, values of #mc_display_mode_e combined with bitwise 'or'.
/// Parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_display_mode_cmd_received_cb()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_display_mode_ability(
  mc_server_h server,
  int mode,
  int support,
) =>
    tizenCapiMediaController.mc_server_set_display_mode_ability(
      server,
      mode,
      support,
    );

/// @brief Sets the callback for receiving display mode command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_display_mode_ability(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives display mode command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_display_mode_cmd_received_cb()
/// @see mc_server_set_display_mode_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_display_mode_cmd_received_cb(
  mc_server_h server,
  mc_server_display_mode_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_display_mode_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the display rotation ability of the media controller.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a support is #MC_ABILITY_SUPPORTED_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// The default display rotation ability is #MC_ABILITY_SUPPORTED_NO. \n
/// It means client can't send the corresponding command to the server, so to receive command from clients, set ability as #MC_ABILITY_SUPPORTED_YES.
///
/// Parameter server The handle to media controller server
/// Parameter rotation The display rotation, values of #mc_display_rotation_e combined with bitwise 'or'
/// Parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_display_rotation_ability(
  mc_server_h server,
  int rotation,
  int support,
) =>
    tizenCapiMediaController.mc_server_set_display_rotation_ability(
      server,
      rotation,
      support,
    );

/// @brief Sets the callback for receiving display rotation command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_display_rotation_ability(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives display rotation command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_display_rotation_cmd_received_cb()
/// @see mc_server_set_display_rotation_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_display_rotation_cmd_received_cb(
  mc_server_h server,
  mc_server_display_rotation_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_display_rotation_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the callback for receiving the result of the event from the media controller client.
/// @details The media controller server which calls this function will receive the result of the event from all media controller clients.\n
/// The media controller server can send event by using mc_server_send_custom_event().
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server         The handle of the media controller server
/// Parameter callback      The callback to be invoked when the reply is received
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @pre mc_server_send_custom_event().
/// @see mc_server_create()
/// @see mc_server_unset_event_reply_received_cb()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_event_reply_received_cb(
  mc_server_h server,
  mc_server_event_reply_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_event_reply_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the icon URI of media controller server.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It's possible to set URI to NULL if there is no icon.
///
/// Parameter server The handle to media controller server
/// Parameter uri    The icon URI
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_icon(
  mc_server_h server,
  ffi.Pointer<ffi.Char> uri,
) =>
    tizenCapiMediaController.mc_server_set_icon(
      server,
      uri,
    );

/// @brief Sets the metadata to update the latest metadata info.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter attribute    The key attribute name to set
/// Parameter value      The value of the attribute
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated metadata information by calling mc_server_update_metadata().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_metadata()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_metadata(
  mc_server_h server,
  int attribute,
  ffi.Pointer<ffi.Char> value,
) =>
    tizenCapiMediaController.mc_server_set_metadata(
      server,
      attribute,
      value,
    );

/// @brief Sets the playback ability's support of the media controller.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a support is #MC_ABILITY_SUPPORTED_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
/// To notify all clients about the changes of the playback's ability support, use mc_server_update_playback_ability().
///
/// Parameter server The handle to media controller server
/// Parameter action   The playback action
/// Parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Update abilities of a media controller server by calling mc_server_update_playback_ability().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playback_ability(
  mc_server_h server,
  int action,
  int support,
) =>
    tizenCapiMediaController.mc_server_set_playback_ability(
      server,
      action,
      support,
    );

/// @brief Sets the callback for receiving playback action command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_playback_ability(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives playback action from client.
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_playback_action_cmd_received_cb()
/// @see mc_server_set_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playback_action_cmd_received_cb(
  mc_server_h server,
  mc_server_playback_action_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_playback_action_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the playback content type to update the latest playback info.
/// @details If this function is called, the updated content type information will be sent to all clients.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a content_type is #MC_CONTENT_TYPE_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
///
/// Parameter server The handle to media controller server
/// Parameter content_type The content type to set the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated playback information by calling mc_server_update_playback_info().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_info()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playback_content_type(
  mc_server_h server,
  int content_type,
) =>
    tizenCapiMediaController.mc_server_set_playback_content_type(
      server,
      content_type,
    );

/// @brief Sets the playback position to update the latest playback info.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter position The position to set in milliseconds
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated playback information by calling mc_server_update_playback_info().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_info()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playback_position(
  mc_server_h server,
  int position,
) =>
    tizenCapiMediaController.mc_server_set_playback_position(
      server,
      position,
    );

/// @brief Sets the callback for receiving playback position command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives position command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_playback_position_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playback_position_cmd_received_cb(
  mc_server_h server,
  mc_server_playback_position_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_playback_position_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the playback state to update the latest state info.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter state The state to set
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated playback information by calling mc_server_update_playback_info().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_info()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playback_state(
  mc_server_h server,
  int state,
) =>
    tizenCapiMediaController.mc_server_set_playback_state(
      server,
      state,
    );

/// @brief Sets the callback for receiving playlist command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives playlist command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_playlist_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playlist_cmd_received_cb(
  mc_server_h server,
  mc_server_playlist_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_playlist_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.0. Use mc_server_set_playlist_item_info() instead.
/// @brief Sets the index of the current playing media in the playlist to update the latest playback info.
/// @details If a media controller server has a playlist, the server can register and share it with media controller client.
/// A playlist is a set of "index" and "media metadata".\n
/// The media controller server can let media controller clients know the index of current playing media by using this function.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter index    The index of the current playing media in the playlist
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated playback information by calling mc_server_update_playback_info().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_info()
/// @see mc_server_create_playlist()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playlist_item_index(
  mc_server_h server,
  ffi.Pointer<ffi.Char> index,
) =>
    tizenCapiMediaController.mc_server_set_playlist_item_index(
      server,
      index,
    );

/// @brief Sets the playlist name and index of the current playing media in the playlist to update the latest playback info.
/// @details If a media controller server has a playlist, the server can register and share it with media controller client.
/// A playlist is a set of "index" and "media metadata".\n
/// The media controller server can let media controller clients know the playlist name and index of current playing media by using this function.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter playlist_name    The name of the playlist. The length of the playlist name should be less than 4096 bytes
/// Parameter index    The index of the current playing media in the playlist
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @post Apply the updated playback information by calling mc_server_update_playback_info().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_update_playback_info()
/// @see mc_server_create_playlist()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_playlist_item_info(
  mc_server_h server,
  ffi.Pointer<ffi.Char> playlist_name,
  ffi.Pointer<ffi.Char> index,
) =>
    tizenCapiMediaController.mc_server_set_playlist_item_info(
      server,
      playlist_name,
      index,
    );

/// @deprecated Deprecated since 5.5. Use mc_server_set_ability_support() instead.
/// @brief Sets the repeat ability's support of the media controller.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a support is #MC_ABILITY_SUPPORTED_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
///
/// Parameter server The handle to media controller server
/// Parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_repeat_ability(
  mc_server_h server,
  int support,
) =>
    tizenCapiMediaController.mc_server_set_repeat_ability(
      server,
      support,
    );

/// @brief Sets the callback for receiving repeat mode command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives repeat mode from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_repeat_mode_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_repeat_mode_cmd_received_cb(
  mc_server_h server,
  mc_server_repeat_mode_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_repeat_mode_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the callback for receiving search command from client.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives search command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_search_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_search_cmd_received_cb(
  mc_server_h server,
  mc_server_search_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_search_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @deprecated Deprecated since 5.5. Use mc_server_set_ability_support() instead.
/// @brief Sets the shuffle ability's support of the media controller.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks If @a support is #MC_ABILITY_SUPPORTED_UNDECIDED, this function will return #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER.
///
/// Parameter server The handle to media controller server
/// Parameter support    The support value of the ability
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_shuffle_ability(
  mc_server_h server,
  int support,
) =>
    tizenCapiMediaController.mc_server_set_shuffle_ability(
      server,
      support,
    );

/// @brief Sets the callback for receiving shuffle mode command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives shuffle mode from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_shuffle_mode_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_shuffle_mode_cmd_received_cb(
  mc_server_h server,
  mc_server_shuffle_mode_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_shuffle_mode_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Sets the callback for receiving subtitles command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_ability_support(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// Parameter callback      The callback to be invoked when media controller server receives subtitles command from client
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_unset_subtitles_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_set_subtitles_cmd_received_cb(
  mc_server_h server,
  mc_server_enable_cmd_received_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiMediaController.mc_server_set_subtitles_cmd_received_cb(
      server,
      callback,
      user_data,
    );

/// @brief Unsets the callback for receiving 360 mode command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_ability_support(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_360_mode_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_360_mode_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_360_mode_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving custom command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_custom_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_custom_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_custom_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving display mode command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_display_mode_ability(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_display_mode_cmd_received_cb()
/// @see mc_server_set_display_mode_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_display_mode_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_display_mode_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving display rotation command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_display_rotation_ability(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_display_rotation_cmd_received_cb()
/// @see mc_server_set_display_rotation_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_display_rotation_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_display_rotation_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving event reply of the media controller client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server         The handle of the media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller client handle by calling mc_client_create().
/// @see mc_server_create()
/// @see mc_server_set_event_reply_received_cb()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_event_reply_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_event_reply_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving playback action command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_playback_ability(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_playback_action_cmd_received_cb()
/// @see mc_server_set_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_playback_action_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_playback_action_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving playback position command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_playback_position_cmd_received_cb()
/// @see mc_server_set_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_playback_position_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_playback_position_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving playlist command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_playlist_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_playlist_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_playlist_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving repeat mode command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_repeat_mode_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_repeat_mode_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_repeat_mode_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving search command from client.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_search_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_search_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_search_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving shuffle mode command from client.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is recommended to set the corresponding ability's support using mc_server_set_ability_support(). It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_shuffle_mode_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_shuffle_mode_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_shuffle_mode_cmd_received_cb(
      server,
    );

/// @brief Unsets the callback for receiving subtitles command from client.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks It is mandatory to set the corresponding ability's support using mc_server_set_ability_support(). \n
/// If not, server can't receive command from clients. It will let the client know about the server's abilities and what commands the client can send.
///
/// Parameter server    The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_subtitles_cmd_received_cb()
/// @see mc_server_set_ability_support()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_unset_subtitles_cmd_received_cb(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_unset_subtitles_cmd_received_cb(
      server,
    );

/// @brief Updates the modified 360 mode display status.
/// @details If this function is called, the updated 360 mode display status will be sent to all clients.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The default 360 mode display is false.
///
/// Parameter server The handle to media controller server
/// Parameter enabled The 360 mode display status to update the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_360_mode_enabled(
  mc_server_h server,
  bool enabled,
) =>
    tizenCapiMediaController.mc_server_update_360_mode_enabled(
      server,
      enabled,
    );

/// @brief Updates the modified display mode.
/// @details If this function is called, the updated display mode information will be sent to all clients.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The default display mode is #MC_DISPLAY_MODE_FULL_SCREEN.
///
/// Parameter server The handle to media controller server
/// Parameter mode The display mode to update the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_display_mode(
  mc_server_h server,
  int mode,
) =>
    tizenCapiMediaController.mc_server_update_display_mode(
      server,
      mode,
    );

/// @brief Updates the modified display rotation.
/// @details If this function is called, the updated display rotation information will be sent to all clients.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The default display rotation is #MC_DISPLAY_ROTATION_NONE.
///
/// Parameter server The handle to media controller server
/// Parameter rotation The display rotation to update the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_display_rotation(
  mc_server_h server,
  int rotation,
) =>
    tizenCapiMediaController.mc_server_update_display_rotation(
      server,
      rotation,
    );

/// @brief Updates the modified metadata info.
/// @details If this function is called, the updated metadata will be sent to all clients.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_metadata(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_update_metadata(
      server,
    );

/// @brief Updates the modified ability info.
/// @details If this function is called, the updated ability will be sent to all clients.
/// @since_tizen 5.0
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @pre Set abilities of a media controller server by calling mc_server_set_playback_ability().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_set_playback_ability()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_playback_ability(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_update_playback_ability(
      server,
    );

/// @brief Updates the modified playback info.
/// @details If this function is called, the updated playback information will be sent to the controller.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_playback_info(
  mc_server_h server,
) =>
    tizenCapiMediaController.mc_server_update_playback_info(
      server,
    );

/// @brief Registers items to the playlist.
/// @since_tizen @if MOBILE 4.0 @elseif WEARABLE 5.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter playlist  The handle of the media controller playlist
///
/// @return @c 0 on success,
/// otherwise a negative error value
///
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @pre Create a media controller playlist handle by calling mc_server_create_playlist().
/// @see mc_server_create()
/// @see mc_server_destroy()
/// @see mc_server_create_playlist()
/// @see mc_playlist_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_playlist_done(
  mc_server_h server,
  mc_playlist_h playlist,
) =>
    tizenCapiMediaController.mc_server_update_playlist_done(
      server,
      playlist,
    );

/// @brief Updates the modified repeat mode.
/// @details If this function is called, the updated mode information will be sent to all clients.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter mode The repeat mode to update the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_repeat_mode(
  mc_server_h server,
  int mode,
) =>
    tizenCapiMediaController.mc_server_update_repeat_mode(
      server,
      mode,
    );

/// @brief Updates the modified shuffle mode.
/// @details If this function is called, the updated mode information will be sent to all clients.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// Parameter server The handle to media controller server
/// Parameter mode The shuffle mode to update the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_shuffle_mode(
  mc_server_h server,
  int mode,
) =>
    tizenCapiMediaController.mc_server_update_shuffle_mode(
      server,
      mode,
    );

/// @brief Updates the modified subtitles display status.
/// @details If this function is called, the updated subtitles display status will be sent to all clients.
/// @since_tizen 5.5
///
/// @privlevel public
/// @privilege %http://tizen.org/privilege/mediacontroller.server
///
/// @remarks The default subtitles display is false.
///
/// Parameter server The handle to media controller server
/// Parameter enabled The subtitles display status to update the latest status
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #MEDIA_CONTROLLER_ERROR_NONE Successful
/// @retval #MEDIA_CONTROLLER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #MEDIA_CONTROLLER_ERROR_INVALID_OPERATION Invalid operation
/// @retval #MEDIA_CONTROLLER_ERROR_OUT_OF_MEMORY Out of memory
///
/// @pre Create a media controller server handle by calling mc_server_create().
/// @see mc_server_create()
/// @see mc_server_destroy()
///
/// Module getter: `tizenCapiMediaController`.
int mc_server_update_subtitles_enabled(
  mc_server_h server,
  bool enabled,
) =>
    tizenCapiMediaController.mc_server_update_subtitles_enabled(
      server,
      enabled,
    );

