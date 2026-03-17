// ignore_for_file: non_constant_identifier_names, unused_import

/// Module-scoped documentation wrappers for `tizenCapiAppfwPackageManager`.
///
/// Tizen version: `6.0`.
/// Shared object(s): `libcapi-appfw-package-manager.so.0`.
///
/// Application Framework / Package Manager.
///
/// Generated from `package:tizen_interop` bindings and symbol maps.
library tizen_6_0_tizen_capi_appfw_package_manager;

import 'dart:ffi' as ffi;

import 'package:tizen_interop/6.0/tizen.dart';

/// @brief Creates the package archive information for the given package.
/// @since_tizen 4.0
/// @remarks If the given path is relevant to media storage, the privilege
/// http://tizen.org/privilege/mediastorage is needed.
/// @remarks If the given path is relevant to external storage, the privilege
/// http://tizen.org/privilege/externalstorage is needed.
/// @remarks You must release @a archive_info
/// using package_archive_info_destroy().
/// Parameter  path         The path of the package
/// Output parameter archive_info The package archive information for
/// the given package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error
/// @see package_archive_info_destroy()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_create(
  ffi.Pointer<ffi.Char> path,
  ffi.Pointer<package_archive_info_h> archive_info,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_create(
      path,
      archive_info,
    );

/// @brief Destroys the package archive information handle.
/// @since_tizen 4.0
/// Parameter archive_info The package archive information handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_archive_info_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_destroy(
  package_archive_info_h archive_info,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_destroy(
      archive_info,
    );

/// @brief Retrieves direct dependencies of the given package.
/// @details package_info_dependency_info_cb() is called for each direct dependency of the given package.
/// For example, if there are packages having the following relationship:
///
/// <pre>
/// B --> E
/// A --> B --> C
/// D --> C
/// </pre>
/// A --> B means that A depends on B.
///
/// If package_archive_info_foreach_direct_dependency(A) is called, the callback will be called once with the following argument values: @e from = A, @e to = B.
/// @since_tizen 5.5
/// @remarks The function provides the results synchronously. If there are no dependencies, this function will return #PACKAGE_MANAGER_ERROR_NONE immediately and the callback will not be invoked.
/// Parameter archive_info The package archive information
/// Parameter callback     The iteration callback function
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_foreach_direct_dependency(
  package_archive_info_h archive_info,
  package_info_dependency_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_foreach_direct_dependency(
      archive_info,
      callback,
      user_data,
    );

/// @brief Gets the API version of the package.
/// @since_tizen 4.0
/// @remarks You must release @a api_version using free().
/// Parameter  archive_info The package archive information
/// Output parameter api_version  The API version of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_api_version(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> api_version,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_api_version(
      archive_info,
      api_version,
    );

/// @brief Gets the author of the package.
/// @since_tizen 4.0
/// @remarks You must release @a author using free().
/// Parameter  archive_info The package archive information
/// Output parameter author       The author of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_author(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> author,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_author(
      archive_info,
      author,
    );

/// @brief Gets the description of the package.
/// @since_tizen 4.0
/// @remarks You must release @a description using free().
/// Parameter  archive_info The package archive information
/// Output parameter description  The description of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_description(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> description,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_description(
      archive_info,
      description,
    );

/// @brief Gets the raw icon of the package.
/// @since_tizen 4.0
/// @remarks You must release @a icon using free().
/// Parameter  archive_info The package archive information
/// Output parameter icon         The raw icon of the package
/// Output parameter icon_size    The size of the icon
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_icon(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.UnsignedChar>> icon,
  ffi.Pointer<ffi.Size> icon_size,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_icon(
      archive_info,
      icon,
      icon_size,
    );

/// @brief Gets the label of the package.
/// @since_tizen 4.0
/// @remarks You must release @a label using free().
/// Parameter  archive_info The package archive information
/// Output parameter label        The label of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_label(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_label(
      archive_info,
      label,
    );

/// @brief Gets the package name.
/// @since_tizen 4.0
/// @remarks You must release @a package using free().
/// Parameter  archive_info The package archive information
/// Output parameter package      The package name
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_package(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_package(
      archive_info,
      package,
    );

/// @brief Gets the type of the package.
/// @since_tizen 4.0
/// @remarks You must release @a type using free().
/// Parameter  archive_info The package archive information
/// Output parameter type         The type of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_type(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> type,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_type(
      archive_info,
      type,
    );

/// @brief Gets the version of the package.
/// @since_tizen 4.0
/// @remarks You must release @a version using free().
/// Parameter  archive_info The package archive information
/// Output parameter version      The version of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_archive_info_get_version(
  package_archive_info_h archive_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> version,
) =>
    tizenCapiAppfwPackageManager.package_archive_info_get_version(
      archive_info,
      version,
    );

/// @brief Clones the package information handle.
/// @since_tizen 2.3
/// @remarks The @a clone should be released using package_info_destroy().
/// Output parameter clone          The newly created package information handle
/// Parameter  package_info   The package information
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   The package is not installed
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_clone(
  ffi.Pointer<package_info_h> clone,
  package_info_h package_info,
) =>
    tizenCapiAppfwPackageManager.package_info_clone(
      clone,
      package_info,
    );

/// @brief Gets the package information for the given package.
/// @since_tizen 2.3
/// @remarks You must release @a package_info using package_info_destroy().
/// Parameter  package      The ID of the package
/// Output parameter package_info The package information for the given package ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   The package is not installed
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_create(
  ffi.Pointer<ffi.Char> package,
  ffi.Pointer<package_info_h> package_info,
) =>
    tizenCapiAppfwPackageManager.package_info_create(
      package,
      package_info,
    );

/// @brief Destroys the package information handle and releases all its resources.
/// @since_tizen 2.3
/// Parameter package_info The package information handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_foreach_package_info()
/// @see package_manager_get_package_info()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_destroy(
  package_info_h package_info,
) =>
    tizenCapiAppfwPackageManager.package_info_destroy(
      package_info,
    );

/// @brief Retrieves all application IDs of each package.
/// @since_tizen 2.3
/// Parameter package_info  The package info handle
/// Parameter comp_type     The application component type
/// Parameter callback      The callback function to invoke
/// Parameter user_data     The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @post This function invokes package_info_app_cb() repeatedly for each package.
/// @see package_info_app_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_foreach_app_from_package(
  package_info_h package_info,
  int comp_type,
  package_info_app_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_info_foreach_app_from_package(
      package_info,
      comp_type,
      callback,
      user_data,
    );

/// @brief Retrieves certification information of the package.
/// @since_tizen 2.3
/// Parameter package_info The package information
/// Parameter callback     The iteration callback function
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_foreach_cert_info(
  package_info_h package_info,
  package_info_cert_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_info_foreach_cert_info(
      package_info,
      callback,
      user_data,
    );

/// @brief Retrieves dependencies between packages.
/// @details @a callback is called whenever there is package dependency. The callback includes packages that are only directly required by the given package.
/// For example, if there are packages having the following relationship:
///
/// B --> E
/// A --> B --> C
/// D --> C
///
/// A --> B means that A depends on B.
/// When package_info_foreach_dependency_info(A) is called, the callback results in two parameters: @a from is A and @a to is B.
/// @since_tizen 5.5
/// @remarks The function provides the results synchronously. If there are no dependencies, this function will return #PACKAGE_MANAGER_ERROR_NONE immediately and the callback will not be invoked.
/// Parameter package_info The package information
/// Parameter callback     The iteration callback function
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_foreach_dependency_info(
  package_info_h package_info,
  package_info_dependency_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_info_foreach_dependency_info(
      package_info,
      callback,
      user_data,
    );

/// @brief Retrieves which packages depend on the given package.
/// @details @a callback is called whenever there is package dependency. The callback includes packages that are both directly and indirectly depend on the given package.
/// For example, if there are packages having the following relationship:
///
/// B --> E
/// A --> B --> C
/// D --> C
///
/// A --> B means that A depends on B.
/// When package_info_foreach_dependency_info(C) is called, the callback results in two parameters: @a from is B and @a to is C, @a from is D and @a to is C, @a from is A and @a to is B.
/// @since_tizen 5.5
/// @remarks The function provides the results synchronously. If there are no dependencies, this function will return #PACKAGE_MANAGER_ERROR_NONE immediately and the callback will not be invoked.
/// Parameter package_info The package information
/// Parameter callback     The iteration callback function
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_foreach_dependency_info_depends_on(
  package_info_h package_info,
  package_info_dependency_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_info_foreach_dependency_info_depends_on(
      package_info,
      callback,
      user_data,
    );

/// @brief Retrieves privilege information of the package.
/// @since_tizen 2.3
/// Parameter package_info The package information
/// Parameter callback     The iteration callback function
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_foreach_privilege_info(
  package_info_h package_info,
  package_info_privilege_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_info_foreach_privilege_info(
      package_info,
      callback,
      user_data,
    );

/// @brief Gets the absolute path to the icon image.
/// @since_tizen 2.3
/// @remarks You must release @a path using free().
/// Parameter  package_info The package information
/// Output parameter path         The path of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_icon(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwPackageManager.package_info_get_icon(
      package_info,
      path,
    );

/// @brief Gets the installed storage for the given package.
/// @since_tizen 2.3
/// Parameter  package_info The package information
/// Output parameter storage      The installed storage
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_installed_storage(
  package_info_h package_info,
  ffi.Pointer<ffi.Int32> storage,
) =>
    tizenCapiAppfwPackageManager.package_info_get_installed_storage(
      package_info,
      storage,
    );

/// @brief Gets the installed time for the given package.
/// @details If the package was updated, the @a installed_time represents updated time.
/// So, the meaning of 'installed time' corresponds with 'last modified time'.
/// @since_tizen 4.0
/// Parameter  package_info   The package information
/// Output parameter installed_time The integer value of time_t type for installed time
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Database error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_installed_time(
  package_info_h package_info,
  ffi.Pointer<ffi.Int> installed_time,
) =>
    tizenCapiAppfwPackageManager.package_info_get_installed_time(
      package_info,
      installed_time,
    );

/// @brief Gets the label of the package.
/// @since_tizen 2.3
/// @remarks You must release @a label using free().
/// Parameter  package_info The package information
/// Output parameter label        The label of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_label(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> label,
) =>
    tizenCapiAppfwPackageManager.package_info_get_label(
      package_info,
      label,
    );

/// @brief Gets the main application ID of the package.
/// @since_tizen 4.0
/// @remarks You must release @a main_app_id using free().
/// Parameter  package_info     The package information
/// Output parameter main_app_id      The main application ID of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_main_app_id(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> main_app_id,
) =>
    tizenCapiAppfwPackageManager.package_info_get_main_app_id(
      package_info,
      main_app_id,
    );

/// @brief Gets the package name.
/// @since_tizen 2.3
/// @remarks You must release @a package using free().
/// Parameter  package_info The package information
/// Output parameter package      The package name
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_package(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package,
) =>
    tizenCapiAppfwPackageManager.package_info_get_package(
      package_info,
      package,
    );

/// @brief Gets the root path of the package.
/// @since_tizen 2.3
/// @remarks You must release @a path using free().
/// Parameter  package_info The package information
/// Output parameter path         The root path of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_root_path(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> path,
) =>
    tizenCapiAppfwPackageManager.package_info_get_root_path(
      package_info,
      path,
    );

/// @platform
/// @brief Gets the name of the TEP (Tizen Expansion Package).
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// @remarks Name must be released using free().
/// Parameter package_info The package information
/// Output parameter name The name of the tep
/// @return 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_tep_name(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> name,
) =>
    tizenCapiAppfwPackageManager.package_info_get_tep_name(
      package_info,
      name,
    );

/// @brief Gets the type of the package.
/// @since_tizen 2.3
/// @remarks You must release @a type using free().
/// Parameter  package_info The package information
/// Output parameter type         The type of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_type(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> type,
) =>
    tizenCapiAppfwPackageManager.package_info_get_type(
      package_info,
      type,
    );

/// @brief Gets the version of the package.
/// @since_tizen 2.3
/// @remarks You must release @a version using free().
/// Parameter  package_info The package information
/// Output parameter version      The version of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_get_version(
  package_info_h package_info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> version,
) =>
    tizenCapiAppfwPackageManager.package_info_get_version(
      package_info,
      version,
    );

/// @brief Checks whether the package info is accessible for the given package.
/// @since_tizen 2.3
/// Parameter  package_info The package information
/// Output parameter accessible   @c true if the package info is accessible,
/// otherwise @c false if the package info is not accessible
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_is_accessible(
  package_info_h package_info,
  ffi.Pointer<ffi.Bool> accessible,
) =>
    tizenCapiAppfwPackageManager.package_info_is_accessible(
      package_info,
      accessible,
    );

/// @brief Checks whether two package information is equal.
/// @since_tizen 2.3
/// Parameter  lhs    The first package information to be compared
/// Parameter  rhs    The second package information to be compared
/// Output parameter equal  @c true if the package information are equal,
/// otherwise @c false if package information are not equal
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Database error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_is_equal(
  package_info_h lhs,
  package_info_h rhs,
  ffi.Pointer<ffi.Bool> equal,
) =>
    tizenCapiAppfwPackageManager.package_info_is_equal(
      lhs,
      rhs,
      equal,
    );

/// @brief Checks whether the package is preloaded.
/// @since_tizen 2.3
/// Parameter  package_info The package information
/// Output parameter preload      The preload info of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_is_preload_package(
  package_info_h package_info,
  ffi.Pointer<ffi.Bool> preload,
) =>
    tizenCapiAppfwPackageManager.package_info_is_preload_package(
      package_info,
      preload,
    );

/// @brief Checks whether the package is removable.
/// @since_tizen 2.3
/// Parameter  package_info The package information
/// Output parameter removable    The removable info of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR IO error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_is_removable_package(
  package_info_h package_info,
  ffi.Pointer<ffi.Bool> removable,
) =>
    tizenCapiAppfwPackageManager.package_info_is_removable_package(
      package_info,
      removable,
    );

/// @brief Checks whether the package is system package.
/// @since_tizen 2.3
/// Parameter  package_info The package information
/// Output parameter system       @c true if the package is system package,
/// otherwise @c false if the package is not system package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_is_system_package(
  package_info_h package_info,
  ffi.Pointer<ffi.Bool> system,
) =>
    tizenCapiAppfwPackageManager.package_info_is_system_package(
      package_info,
      system,
    );

/// @brief Gets the package update information for the given package.
/// @since_tizen 4.0
/// @remarks You must release @a info using package_info_updateinfo_destroy().
/// Parameter  pkgid       The ID of the package
/// Output parameter info        The package update information for the given package ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   The package is not installed
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Database error occurred
/// @see package_info_updateinfo_destroy()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_updateinfo_create(
  ffi.Pointer<ffi.Char> pkgid,
  ffi.Pointer<package_updateinfo_h> info,
) =>
    tizenCapiAppfwPackageManager.package_info_updateinfo_create(
      pkgid,
      info,
    );

/// @brief Destroys the package update information handle and releases all its resources.
/// @since_tizen 4.0
/// Parameter info         The package update information handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_info_updateinfo_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_updateinfo_destroy(
  package_updateinfo_h info,
) =>
    tizenCapiAppfwPackageManager.package_info_updateinfo_destroy(
      info,
    );

/// @brief Retrieves update information of all packages and invoke callback for each of it.
/// @since_tizen 4.0
/// Parameter callback     The iteration callback function
/// Parameter user_data    The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_updateinfo_foreach_info(
  package_info_updateinfo_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_info_updateinfo_foreach_info(
      callback,
      user_data,
    );

/// @brief Gets the package name.
/// @since_tizen 4.0
/// @remarks You must release @a package using free().
/// Parameter  info        The package update information
/// Output parameter package     The package name
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_updateinfo_get_pkgid(
  package_updateinfo_h info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package,
) =>
    tizenCapiAppfwPackageManager.package_info_updateinfo_get_pkgid(
      info,
      package,
    );

/// @brief Gets the update type of package.
/// @since_tizen 4.0
/// Parameter  info        The package update information
/// Output parameter type        The package update type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_updateinfo_get_type(
  package_updateinfo_h info,
  ffi.Pointer<ffi.Int32> type,
) =>
    tizenCapiAppfwPackageManager.package_info_updateinfo_get_type(
      info,
      type,
    );

/// @brief Gets the update version of package.
/// @since_tizen 4.0
/// @remarks You must release @a version using free().
/// Parameter  info        The package update information
/// Output parameter version     The package update version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_info_updateinfo_get_version(
  package_updateinfo_h info,
  ffi.Pointer<ffi.Pointer<ffi.Char>> version,
) =>
    tizenCapiAppfwPackageManager.package_info_updateinfo_get_version(
      info,
      version,
    );

/// @platform
/// @brief  Clears all applications' internal and external cache directory, asynchronously.
/// @details All files stored in the cache directory of each application are removed.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_clear_all_cache_dir() =>
    tizenCapiAppfwPackageManager.package_manager_clear_all_cache_dir();

/// @brief Clears the application's internal and external cache directory, asynchronously.
/// @details All files stored in the cache directory of the application specified with the package ID are removed.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.clearcache
/// Parameter package_id  The package ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_clear_cache_dir(
  ffi.Pointer<ffi.Char> package_id,
) =>
    tizenCapiAppfwPackageManager.package_manager_clear_cache_dir(
      package_id,
    );

/// @platform
/// @brief Clears internal and external data directories used by applications in the given package.
/// @details All files stored in data directories used by applications in the package specified with the @a package_id are removed.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter package_id  The package ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_clear_data_dir(
  ffi.Pointer<ffi.Char> package_id,
) =>
    tizenCapiAppfwPackageManager.package_manager_clear_data_dir(
      package_id,
    );

/// @brief Compares whether two app certifications are matched.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  lhs_app_id     The first app ID to compare
/// Parameter  rhs_app_id     The second app ID to compare
/// Output parameter compare_result @c 0 if the certification information are matched,
/// otherwise the compared result
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Database error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_compare_app_cert_info(
  ffi.Pointer<ffi.Char> lhs_app_id,
  ffi.Pointer<ffi.Char> rhs_app_id,
  ffi.Pointer<ffi.Int32> compare_result,
) =>
    tizenCapiAppfwPackageManager.package_manager_compare_app_cert_info(
      lhs_app_id,
      rhs_app_id,
      compare_result,
    );

/// @brief Compares whether two package certifications are matched.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter  lhs_package_id The first package ID to compare
/// Parameter  rhs_package_id The second package ID to compare
/// Output parameter compare_result @c 0 if the certification information are matched,
/// otherwise the compared result
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Database error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_compare_package_cert_info(
  ffi.Pointer<ffi.Char> lhs_package_id,
  ffi.Pointer<ffi.Char> rhs_package_id,
  ffi.Pointer<ffi.Int32> compare_result,
) =>
    tizenCapiAppfwPackageManager.package_manager_compare_package_cert_info(
      lhs_package_id,
      rhs_package_id,
      compare_result,
    );

/// @brief Creates a package manager handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// @remarks You must release @a manager using package_manager_destroy().
/// Output parameter manager The package manager handle that is newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error
/// @see package_manager_destroy()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_create(
  ffi.Pointer<package_manager_h> manager,
) =>
    tizenCapiAppfwPackageManager.package_manager_create(
      manager,
    );

/// @brief Destroys the package manager handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The package manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_destroy(
  package_manager_h manager,
) =>
    tizenCapiAppfwPackageManager.package_manager_destroy(
      manager,
    );

/// @platform
/// @brief Decrypts contents which is encrypted, asynchronously.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter drm_file_path DRM file path
/// Parameter decrypted_file_path Decrypted file path
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR Internal I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_drm_decrypt_package(
  ffi.Pointer<ffi.Char> drm_file_path,
  ffi.Pointer<ffi.Char> decrypted_file_path,
) =>
    tizenCapiAppfwPackageManager.package_manager_drm_decrypt_package(
      drm_file_path,
      decrypted_file_path,
    );

/// @platform
/// @brief Generates request for getting License, asynchronously.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// @remarks You must release @a req_data and @a license_url by yourself.
/// Parameter resp_data The response data string of the purchase request
/// Output parameter req_data	License request data
/// Output parameter license_url License acquisition url data
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR Internal I/O error
/// @post package_manager_drm_register_license()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_drm_generate_license_request(
  ffi.Pointer<ffi.Char> resp_data,
  ffi.Pointer<ffi.Pointer<ffi.Char>> req_data,
  ffi.Pointer<ffi.Pointer<ffi.Char>> license_url,
) =>
    tizenCapiAppfwPackageManager.package_manager_drm_generate_license_request(
      resp_data,
      req_data,
      license_url,
    );

/// @platform
/// @brief Registers encrypted license, asynchronously.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter resp_data The response data string of the rights request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR Internal I/O error
/// @pre package_manager_drm_generate_license_request()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_drm_register_license(
  ffi.Pointer<ffi.Char> resp_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_drm_register_license(
      resp_data,
    );

/// @brief Adds a boolean filter property to the filter handle.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter handle Pointer to the package info filter handle
/// Parameter property boolean property name
/// Parameter value value corresponding to the property
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR I/O error
/// @pre package_manager_filter_create()
/// @post package_manager_filter_destroy()
/// @see package_manager_filter_count()
/// @see package_manager_filter_foreach_package_info()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_filter_add_bool(
  package_manager_filter_h handle,
  ffi.Pointer<ffi.Char> property,
  bool value,
) =>
    tizenCapiAppfwPackageManager.package_manager_filter_add_bool(
      handle,
      property,
      value,
    );

/// @brief Counts the package that satisfy the filter conditions.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter handle Pointer to the package info filter handle
/// Output parameter count Pointer to store the count value
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR I/O error
/// @pre package_manager_filter_create()
/// @post package_manager_filter_destroy()
/// @see package_manager_filter_foreach_package_info()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_filter_count(
  package_manager_filter_h handle,
  ffi.Pointer<ffi.Int> count,
) =>
    tizenCapiAppfwPackageManager.package_manager_filter_count(
      handle,
      count,
    );

/// @brief Creates the package information filter handle from db.
/// @details The filtered result will be based on AND operation of all added filter properties.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// @remarks The @a handle should be released using package_manager_filter_destroy().
/// Output parameter handle Pointer to the package info filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR I/O error
/// @post package_manager_filter_destroy()
/// @see package_manager_filter_add_bool()
/// @see package_manager_filter_foreach_package_info()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_filter_create(
  ffi.Pointer<package_manager_filter_h> handle,
) =>
    tizenCapiAppfwPackageManager.package_manager_filter_create(
      handle,
    );

/// @brief Destroys the package information filter handle freeing up all the resources.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter handle Pointer to the package info filter handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR I/O error
/// @pre package_manager_filter_create()
/// @see package_manager_filter_count()
/// @see package_manager_filter_foreach_package_info()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_filter_destroy(
  package_manager_filter_h handle,
) =>
    tizenCapiAppfwPackageManager.package_manager_filter_destroy(
      handle,
    );

/// @brief Executes the user supplied callback function for each package that satisfy the filter conditions.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter handle Pointer to the package info filter handle
/// Parameter callback callback function
/// Parameter user_data user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR I/O error
/// @pre package_manager_filter_create()
/// @post package_manager_filter_destroy()
/// @post This function invokes package_manager_package_info_cb() repeatedly for each package information.
/// @see package_manager_package_info_cb()
/// @see package_manager_filter_count()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_filter_foreach_package_info(
  package_manager_filter_h handle,
  package_manager_package_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_filter_foreach_package_info(
      handle,
      callback,
      user_data,
    );

/// @brief Retrieves all package information of installed packages.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter callback  The callback function to be invoked
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @post This function invokes package_manager_package_info_cb() repeatedly for each package information.
/// @see package_manager_package_info_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_foreach_package_info(
  package_manager_package_info_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_foreach_package_info(
      callback,
      user_data,
    );

/// @brief Gets the package ID for the given app ID.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// @remarks The @a package_id should be released using free().
/// Parameter  app_id     The ID of the application
/// Output parameter package_id The ID of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_get_package_id_by_app_id(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Pointer<ffi.Char>> package_id,
) =>
    tizenCapiAppfwPackageManager.package_manager_get_package_id_by_app_id(
      app_id,
      package_id,
    );

/// @brief Gets the package information for the given package.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// @remarks You must release @a package_info using package_info_destroy().
/// Parameter  package_id   The ID of the package
/// Output parameter package_info The package information for the given package ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR Database error occurred
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_get_package_info(
  ffi.Pointer<ffi.Char> package_id,
  ffi.Pointer<package_info_h> package_info,
) =>
    tizenCapiAppfwPackageManager.package_manager_get_package_info(
      package_id,
      package_info,
    );

/// @brief Gets the package size information, asynchronously.
/// @details The package size info is asynchronously obtained by the callback function.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter package_id  The package ID
/// Parameter callback    The asynchronous callback function to get the package size information
/// Parameter user_data   The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_get_package_size_info(
  ffi.Pointer<ffi.Char> package_id,
  package_manager_size_info_receive_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_get_package_size_info(
      package_id,
      callback,
      user_data,
    );

/// @brief Gets the package permission type by @a app_id.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter  app_id          The ID of the application
/// Output parameter permission_type The package permission type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_get_permission_type(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Int32> permission_type,
) =>
    tizenCapiAppfwPackageManager.package_manager_get_permission_type(
      app_id,
      permission_type,
    );

/// @brief Gets the total package size information, asynchronously.
/// @details The total package size info is asynchronously obtained by the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter callback  The asynchronous callback function to get the total package size information
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_get_total_package_size_info(
  package_manager_total_size_info_receive_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_get_total_package_size_info(
      callback,
      user_data,
    );

/// @brief Checks whether the package is preloaded by @a app_id.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter  app_id   The ID of the application
/// Output parameter preload  The preload info of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_is_preload_package_by_app_id(
  ffi.Pointer<ffi.Char> app_id,
  ffi.Pointer<ffi.Bool> preload,
) =>
    tizenCapiAppfwPackageManager.package_manager_is_preload_package_by_app_id(
      app_id,
      preload,
    );

/// @platform
/// @brief Creates a request handle to the package manager.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @remarks You must release @a request using package_manager_request_destroy().
/// Output parameter request The request handle that is newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error
/// @see package_manager_request_destroy()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_create(
  ffi.Pointer<package_manager_request_h> request,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_create(
      request,
    );

/// @platform
/// @brief Destroys the request handle to the package manager.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter request The request handle to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_request_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_destroy(
  package_manager_request_h request,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_destroy(
      request,
    );

/// @platform
/// @brief Installs the package located at the given path, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request The request handle
/// Parameter  path    The absolute path to the package to be installed
/// Output parameter id      The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_request_uninstall()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_install(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> path,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_install(
      request,
      path,
      id,
    );

/// @platform
/// @brief Installs the packages located at the given paths, asynchronously.
/// @since_tizen 6.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request The request handle
/// Parameter  paths       The array of absolute paths to the packages to be installed
/// Parameter  paths_count The number of paths in array
/// Output parameter id          The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_install_packages(
  package_manager_request_h request,
  ffi.Pointer<ffi.Pointer<ffi.Char>> paths,
  int paths_count,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_install_packages(
      request,
      paths,
      paths_count,
      id,
    );

/// @platform
/// @brief Installs the packages located at the given paths, asynchronously.
/// @details The progress of the request is asynchronously received by the callback function.
/// The @a callback is the individual callback only called for the current API call.
/// The @a callback is the only callback called, even if another callback was set for this request
/// with package_manager_request_set_event_cb().
/// @since_tizen 6.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request       The request handle
/// Parameter  paths         The array of absolute paths to the packages to be installed
/// Parameter  paths_count   The number of paths in array
/// Parameter  callback      The callback function to be invoked
/// Parameter  user_data     The user data to be passed to the callback function
/// Output parameter id            The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_NO_SUCH_PACKAGE   No such package
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_install_packages_with_cb(
  package_manager_request_h request,
  ffi.Pointer<ffi.Pointer<ffi.Char>> paths,
  int paths_count,
  package_manager_request_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_install_packages_with_cb(
      request,
      paths,
      paths_count,
      callback,
      user_data,
      id,
    );

/// @platform
/// @brief Installs the package located at the given path, asynchronously.
/// @details The progress of the request is asynchronously received by the callback function.
/// The @a callback is the individual callback only called for the current API call.
/// The @a callback is the only callback called, even if another callback was set for this request
/// with package_manager_request_set_event_cb().
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request   The request handle
/// Parameter  path      The absolute path to the package to be installed
/// Parameter  callback  The callback function to be invoked
/// Parameter  user_data The user data to be passed to the callback function
/// Output parameter id        The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_install_with_cb(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> path,
  package_manager_request_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_install_with_cb(
      request,
      path,
      callback,
      user_data,
      id,
    );

/// @platform
/// @brief Moves the package from SD card to the internal memory and vice versa, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter request   The request handle
/// Parameter name      The name of the package to be moved
/// Parameter move_type The move type [#package_manager_move_type_e], [external to internal/internal to external]
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_move(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> name,
  int move_type,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_move(
      request,
      name,
      move_type,
    );

/// @platform
/// @brief Moves the package from SD card to the internal memory and vice versa, asynchronously.
/// @details The progress of the request is asynchronously received by the callback function.
/// The @a callback is the individual callback only called for the current API call.
/// The @a callback is the only callback called, even if another callback was set for this request
/// with package_manager_request_set_event_cb().
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request   The request handle
/// Parameter  name      The name of the package to be moved
/// Parameter  move_type The move type [#package_manager_move_type_e], [external to internal/internal to external]
/// Parameter  callback  The callback function to be invoked
/// Parameter  user_data The user data to be passed to the callback function
/// Output parameter id        The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_move_with_cb(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> name,
  int move_type,
  package_manager_request_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_move_with_cb(
      request,
      name,
      move_type,
      callback,
      user_data,
      id,
    );

/// @platform
/// @brief Registers a callback function to be invoked when the progress of the request changes.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter request The request handle
/// Parameter callback The callback function to be registered
/// Parameter user_data The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @post package_manager_request_event_cb() will be invoked.
/// @see package_manager_request_event_cb()
/// @see package_manager_request_unset_event_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_set_event_cb(
  package_manager_request_h request,
  package_manager_request_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_set_event_cb(
      request,
      callback,
      user_data,
    );

/// @platform
/// @brief Sets the mode of the request.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter request The request handle
/// Parameter mode    The mode of the request
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_set_mode(
  package_manager_request_h request,
  int mode,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_set_mode(
      request,
      mode,
    );

/// @platform
/// @brief Sets the path of TEP file to the request. The TEP file that is set will be installed when the package is installed.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter request The request handle
/// Parameter tep_path The TEP path to set. If this is NULL on update, installed TEP will be removed.
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR		 Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_set_tep(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> tep_path,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_set_tep(
      request,
      tep_path,
    );

/// @platform
/// @brief Sets the type of the package to install, uninstall, or update.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter request The request handle
/// Parameter type    The type of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_set_type(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> type,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_set_type(
      request,
      type,
    );

/// @platform
/// @brief Uninstalls the package with the given name, asynchronously.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request The request handle
/// Parameter  name    The name of the package to be uninstalled
/// Output parameter id      The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_uninstall(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> name,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_uninstall(
      request,
      name,
      id,
    );

/// @platform
/// @brief Uninstalls the package with the given name, asynchronously.
/// @details The progress of the request is asynchronously received by the callback function.
/// The @a callback is the individual callback only called for the current API call.
/// The @a callback is the only callback called, even if another callback was set for this request
/// with package_manager_request_set_event_cb().
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// Parameter  request   The request handle
/// Parameter  name      The name of the package to be uninstalled
/// Parameter  callback  The callback function to be invoked
/// Parameter  user_data The user data to be passed to the callback function
/// Output parameter id        The ID of the request to the package manager
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_uninstall_with_cb(
  package_manager_request_h request,
  ffi.Pointer<ffi.Char> name,
  package_manager_request_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
  ffi.Pointer<ffi.Int> id,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_uninstall_with_cb(
      request,
      name,
      callback,
      user_data,
      id,
    );

/// @platform
/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter request The request handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_request_event_cb()
/// @see package_manager_request_set_event_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_request_unset_event_cb(
  package_manager_request_h request,
) =>
    tizenCapiAppfwPackageManager.package_manager_request_unset_event_cb(
      request,
    );

/// @brief Registers a callback function to be invoked when the package is installed, uninstalled, or updated.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// @privlevel public
/// @privilege %http://tizen.org/privilege/packagemanager.info
/// Parameter manager    The package manager handle
/// Parameter callback   The callback function to be registered
/// Parameter user_data  The user data to be passed to the callback function
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @post package_manager_event_cb() will be invoked.
/// @see package_manager_set_event_status()
/// @see package_manager_event_cb()
/// @see package_manager_unset_event_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_set_event_cb(
  package_manager_h manager,
  package_manager_event_cb callback,
  ffi.Pointer<ffi.Void> user_data,
) =>
    tizenCapiAppfwPackageManager.package_manager_set_event_cb(
      manager,
      callback,
      user_data,
    );

/// @brief Sets the event status of the package when the package is installed, uninstalled, or updated.
/// @details You can combine multiple status using OR operation which you want to listen.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager     The package manager handle
/// Parameter status_type The status of the package
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          Internal I/O error
/// @see package_manager_status_type_e
/// @see package_manager_set_event_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_set_event_status(
  package_manager_h manager,
  int status_type,
) =>
    tizenCapiAppfwPackageManager.package_manager_set_event_status(
      manager,
      status_type,
    );

/// @brief Unregisters the callback function.
/// @since_tizen @if MOBILE 2.3 @elseif WEARABLE 2.3.1 @endif
/// Parameter manager The package manager handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_event_cb()
/// @see package_manager_set_event_cb()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_unset_event_cb(
  package_manager_h manager,
) =>
    tizenCapiAppfwPackageManager.package_manager_unset_event_cb(
      manager,
    );

/// @platform
/// @brief Creates a package update info request.
/// @since_tizen 4.0
/// @privlevel platform
/// @privilege %http://tizen.org/privilege/packagemanager.admin
/// @remarks You must release @a pkg_updateinfo_req using package_manager_updateinfo_request_destroy().
/// Output parameter pkg_updateinfo_req The package update info request handle that is newly created on success
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_PERMISSION_DENIED Permission denied
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @see package_manager_updateinfo_request_destroy()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_request_create(
  ffi.Pointer<package_updateinfo_request_h> pkg_updateinfo_req,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_request_create(
      pkg_updateinfo_req,
    );

/// @brief Destroys the package update info request.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req    The update info request handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_updateinfo_request_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_request_destroy(
  package_updateinfo_request_h pkg_updateinfo_req,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_request_destroy(
      pkg_updateinfo_req,
    );

/// @brief Requests to register package update info in platform.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req    The update info request handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
/// @see package_manager_updateinfo_request_create()
/// @see package_manager_updateinfo_request_destroy()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_request_register(
  package_updateinfo_request_h pkg_updateinfo_req,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_request_register(
      pkg_updateinfo_req,
    );

/// @brief Requests to unregister update info in platform for given package id.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req   The update info request handle
/// Parameter pkgid                The package id to request unregister update info
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_request_unregister(
  package_updateinfo_request_h pkg_updateinfo_req,
  ffi.Pointer<ffi.Char> pkgid,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_request_unregister(
      pkg_updateinfo_req,
      pkgid,
    );

/// @brief Request to unregister update info of all packages in platform.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req    The update info request handle
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_IO_ERROR          I/O error
/// @retval #PACKAGE_MANAGER_ERROR_SYSTEM_ERROR      Severe system error
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_request_unregister_all(
  package_updateinfo_request_h pkg_updateinfo_req,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_request_unregister_all(
      pkg_updateinfo_req,
    );

/// @brief Sets the package ID to the package update info request.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req   The update info request handle
/// Parameter pkgid                The package ID
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @see package_manager_updateinfo_request_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_set_pkgid(
  package_updateinfo_request_h pkg_updateinfo_req,
  ffi.Pointer<ffi.Char> pkgid,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_set_pkgid(
      pkg_updateinfo_req,
      pkgid,
    );

/// @brief Sets the package update type to the package update info request.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req   The update info request handle
/// Parameter type                 The package update type
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @see package_manager_updateinfo_request_create()
/// @see package_updateinfo_type_e
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_set_type(
  package_updateinfo_request_h pkg_updateinfo_req,
  int type,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_set_type(
      pkg_updateinfo_req,
      type,
    );

/// @brief Sets the package version to the package update info request.
/// @since_tizen 4.0
/// Parameter pkg_updateinfo_req   The update info request handle
/// Parameter version              The package version
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
/// @retval #PACKAGE_MANAGER_ERROR_OUT_OF_MEMORY     Out of memory
/// @see package_manager_updateinfo_request_create()
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_manager_updateinfo_set_version(
  package_updateinfo_request_h pkg_updateinfo_req,
  ffi.Pointer<ffi.Char> version,
) =>
    tizenCapiAppfwPackageManager.package_manager_updateinfo_set_version(
      pkg_updateinfo_req,
      version,
    );

/// @brief Retrieves application size from given handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter handle Package size info handle
/// Output parameter app_size App size will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_size_info_get_app_size(
  package_size_info_h handle,
  ffi.Pointer<ffi.LongLong> app_size,
) =>
    tizenCapiAppfwPackageManager.package_size_info_get_app_size(
      handle,
      app_size,
    );

/// @brief Retrieves cache size from given handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter handle  Package size info handle
/// Output parameter cache_size Cache size will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_size_info_get_cache_size(
  package_size_info_h handle,
  ffi.Pointer<ffi.LongLong> cache_size,
) =>
    tizenCapiAppfwPackageManager.package_size_info_get_cache_size(
      handle,
      cache_size,
    );

/// @brief Retrieves data size from given handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter handle Package size info handle
/// Output parameter data_size Data size will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_size_info_get_data_size(
  package_size_info_h handle,
  ffi.Pointer<ffi.LongLong> data_size,
) =>
    tizenCapiAppfwPackageManager.package_size_info_get_data_size(
      handle,
      data_size,
    );

/// @brief Retrieves external application size from given handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter handle Package size info handle
/// Output parameter ext_app_size External app size will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_size_info_get_external_app_size(
  package_size_info_h handle,
  ffi.Pointer<ffi.LongLong> ext_app_size,
) =>
    tizenCapiAppfwPackageManager.package_size_info_get_external_app_size(
      handle,
      ext_app_size,
    );

/// @brief Retrieves external cache size from given handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter handle Package size info handle
/// Output parameter ext_cache_size External cache size will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_size_info_get_external_cache_size(
  package_size_info_h handle,
  ffi.Pointer<ffi.LongLong> ext_cache_size,
) =>
    tizenCapiAppfwPackageManager.package_size_info_get_external_cache_size(
      handle,
      ext_cache_size,
    );

/// @brief Retrieves external data size from given handle.
/// @since_tizen @if MOBILE 2.4 @elseif WEARABLE 3.0 @endif
/// Parameter handle  Package size info handle
/// Output parameter ext_data_size External data size will be returned
/// @return @c 0 on success,
/// otherwise a negative error value
/// @retval #PACKAGE_MANAGER_ERROR_NONE              Successful
/// @retval #PACKAGE_MANAGER_ERROR_INVALID_PARAMETER Invalid parameter
///
/// Module getter: `tizenCapiAppfwPackageManager`.
int package_size_info_get_external_data_size(
  package_size_info_h handle,
  ffi.Pointer<ffi.LongLong> ext_data_size,
) =>
    tizenCapiAppfwPackageManager.package_size_info_get_external_data_size(
      handle,
      ext_data_size,
    );

