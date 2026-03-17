# tizen_interop tools

## Generating bindings from source

1. Install a rootstrap of your target Tizen version (e.g. `IOT-Headed-6.0-NativeAppDevelopment-CLI`) using Tizen Package Manager.

2. Run scripts in this directory as follows, passing the version number as an argument.

   ```sh
   scripts/copy_rootstrap.sh <version>
   scripts/generate_bindings.sh <version>
   ```

## Adding new Tizen version support

1. Create a copy of any existing config in the `configs` directory with the new version number as the directory name.

2. Manually update `entrypoints.h` and `symgen.yaml` by referring to the official [API docs](https://docs.tizen.org/application/native/api/iot-headed/latest) and the rootstrap. (Run `symgen_helper.sh` to find out what to add to `symgen.yaml`. (`scripts/symgen_helper.sh <version>`))

3. Run `ffigen_helper.sh` to generate the contents of the `ffigen.yaml` file.

   ```sh
   scripts/ffigen_helper.sh <version>
   ```

4. Update callbacks data.

   * Run `./generate_callbacks.sh verify` to check type substitution.
     Build errors will have to be addressed by editing `gen_callbacks.py`.
     If substitution is not found or assert fails - edit the type mapping
     (see `CallbackDataCollector.type_substitute()` and maps used there: `KNOWN_TYPES`, `SPECIAL_TYPES`).
   * Run `./generate_callbacks.sh` to update `callbacks.cc` with callbacks data.

## Generating documentation

The `generate_doc_script.py` script generates markdown API documentation for all supported Tizen versions. It scans the `configs` directory and creates or overwrites `doc/tizen<version>_api.md` for each version.

Run the script with:

```sh
python3 scripts/generate_doc_script.py
```

## Preparing module-scoped pub.dev docs

`pub.dev` generates API docs only from the uploaded package contents, so local
HTML post-processing is not enough. To split the published docs by module, the
package must contain public wrapper libraries under `lib/` and a root
`dartdoc_options.yaml` at publish time.

Use `prepare_pubdev_module_docs.sh` for that workflow.

For Tizen 6.0:

```sh
scripts/prepare_pubdev_module_docs.sh prepare 6.0
```

This command generates:

1. Public wrapper libraries under `lib/6.0/tizen/`.
2. A small landing library at `lib/6.0/tizen/index.dart`.
3. A category markdown file at `doc/dartdoc/tizen_6_0.md`.
4. A publish-time `dartdoc_options.yaml` that:
   groups the generated libraries under `Tizen 6.0 / tizen`,
   excludes the original monolithic `tizen_interop` library,
   adds generated footer text,
   and includes only the generated wrapper libraries.

To verify the exact publish-time setup:

```sh
scripts/prepare_pubdev_module_docs.sh verify 6.0
```

`verify` prepares the generated libraries, runs `dart doc --validate-links`,
runs `dart pub publish --dry-run`, and then removes the generated files again.
Pass `--keep-generated` if you want to publish immediately after verification.

To remove the generated publish-time files:

```sh
scripts/prepare_pubdev_module_docs.sh clean 6.0
```

If a symbol listed in `generated_symbols.dart` is missing from
`generated_bindings.dart` and looks callback-related, the generated wrapper
library still points to the callback registration interface from
`tizen_interop_callbacks`, so unresolved callback APIs can be checked against
`TizenInteropCallbacks.register()`, `RegisteredCallback.interopCallback`, and
`RegisteredCallback.interopUserData`.

## Generating local preview docs

`generate_module_dartdoc.sh` is still available when you want a local HTML
preview, but that output is not used by `pub.dev`.
