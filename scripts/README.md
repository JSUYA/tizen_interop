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

## Generating module-scoped Dart docs

The `generate_module_dartdoc.sh` script generates HTML docs for the main
`tizen_interop` package, but splits the output by module getter for a specific
Tizen version.

For Tizen 6.0:

```sh
scripts/generate_module_dartdoc.sh 6.0
```

The script:

1. Reads `generated_symbols.dart`, `generated_bindings.dart`, `lib/<version>/tizen.dart`,
   and `packages/tizen_interop_callbacks/lib/tizen_interop_callbacks.dart`.
2. Creates temporary module wrapper libraries under `lib/module_docs/<version>/modules/`.
3. Generates `doc/api/` with `dart doc`, where each module has its own library page.
4. Deletes the temporary wrapper libraries and restores `dartdoc_options.yaml`.

If a symbol listed in `generated_symbols.dart` is missing from
`generated_bindings.dart` and looks callback-related, the generated module
library includes a note pointing to the callback registration interface from
`tizen_interop_callbacks`.
