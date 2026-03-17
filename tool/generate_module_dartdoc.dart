import 'dart:collection';
import 'dart:io';

class ParameterInfo {
  ParameterInfo(this.type, this.name);

  final String type;
  final String name;
}

class MethodInfo {
  MethodInfo({
    required this.docLines,
    required this.returnType,
    required this.name,
    required this.parameters,
  });

  final List<String> docLines;
  final String returnType;
  final String name;
  final List<ParameterInfo> parameters;
}

class TypedefInfo {
  TypedefInfo({
    required this.docLines,
    required this.name,
    required this.definition,
  });

  final List<String> docLines;
  final String name;
  final String definition;
}

class CallbackTypedefGroup {
  CallbackTypedefGroup({
    required this.callbackType,
    required this.nativeSignatureType,
    required this.dartSignatureType,
    required this.docLines,
  });

  final String callbackType;
  final String nativeSignatureType;
  final String? dartSignatureType;
  final List<String> docLines;
}

class CallbackInteropInfo {
  CallbackInteropInfo({
    required this.helperClassName,
    required this.registrationMethodName,
    required this.registeredCallbackTypeName,
    required this.pointerGetterName,
    required this.userDataGetterName,
  });

  final String helperClassName;
  final String registrationMethodName;
  final String registeredCallbackTypeName;
  final String pointerGetterName;
  final String userDataGetterName;
}

class CallbackReference {
  CallbackReference({
    required this.group,
    required this.usedByMethods,
  });

  final CallbackTypedefGroup group;
  final List<String> usedByMethods;
}

class ModuleInfo {
  ModuleInfo({
    required this.symbolMapVariable,
    required this.getterName,
    required this.libraryName,
    required this.fileName,
    required this.sharedObjects,
    required this.descriptions,
    required this.methods,
    required this.callbackReferences,
    required this.missingSymbols,
    required this.callbackRelatedMissingSymbols,
    required this.unresolvedSymbols,
  });

  final String symbolMapVariable;
  final String getterName;
  final String libraryName;
  final String fileName;
  final List<String> sharedObjects;
  final List<String> descriptions;
  final List<MethodInfo> methods;
  final List<CallbackReference> callbackReferences;
  final List<String> missingSymbols;
  final List<String> callbackRelatedMissingSymbols;
  final List<String> unresolvedSymbols;

  String get descriptionText =>
      descriptions.isEmpty ? 'Unknown module' : descriptions.join(', ');
}

class _Config {
  _Config({
    required this.version,
    required this.outputDirectory,
    required this.buildDocs,
    required this.keepTempFiles,
    required this.keepDartdocOptions,
  });

  final String version;
  final String outputDirectory;
  final bool buildDocs;
  final bool keepTempFiles;
  final bool keepDartdocOptions;
}

Future<void> main(List<String> args) async {
  final config = _parseArgs(args);
  final rootDir = _repoRoot();
  final version = config.version;
  final versionId = version.replaceAll('.', '_');

  final generatedBindingsFile = File(
    '${rootDir.path}/lib/src/bindings/$version/generated_bindings.dart',
  );
  final generatedSymbolsFile = File(
    '${rootDir.path}/lib/src/bindings/$version/generated_symbols.dart',
  );
  final tizenLibraryFile = File('${rootDir.path}/lib/$version/tizen.dart');
  final symgenConfigFile = File('${rootDir.path}/configs/$version/symgen.yaml');
  final callbacksLibraryFile = File(
    '${rootDir.path}/packages/tizen_interop_callbacks/lib/'
    'tizen_interop_callbacks.dart',
  );

  for (final file in [
    generatedBindingsFile,
    generatedSymbolsFile,
    tizenLibraryFile,
    symgenConfigFile,
    callbacksLibraryFile,
  ]) {
    if (!file.existsSync()) {
      stderr.writeln('Missing required file: ${file.path}');
      exitCode = 1;
      return;
    }
  }

  final bindingLines = generatedBindingsFile.readAsLinesSync();
  final methods = _parseMethods(bindingLines);
  final symbolMaps =
      _parseGeneratedSymbols(generatedSymbolsFile.readAsLinesSync());
  final getters = _parseGetterMap(tizenLibraryFile.readAsStringSync());
  final descriptions =
      _parseSymgenDescriptions(symgenConfigFile.readAsLinesSync());
  final typedefs = _parseTypedefs(bindingLines);
  final callbackGroups = _buildCallbackTypedefGroups(typedefs);
  final callbackInterop =
      _parseCallbackInteropInfo(callbacksLibraryFile.readAsStringSync());

  final modules = <ModuleInfo>[];
  final moduleEntries = symbolMaps.entries.toList()
    ..sort((a, b) {
      final left = getters[a.key] ?? a.key;
      final right = getters[b.key] ?? b.key;
      return left.compareTo(right);
    });

  for (final entry in moduleEntries) {
    final getterName = getters[entry.key];
    if (getterName == null) {
      stderr.writeln('Skipping ${entry.key}: getter not found in tizen.dart');
      continue;
    }

    final libraryName = 'tizen_${versionId}_${_camelToSnake(getterName)}';
    final fileName = '${_camelToSnake(getterName)}.dart';
    final sharedObjects = entry.value.keys.toList(growable: false);
    final moduleDescriptions = sharedObjects
        .map((library) => descriptions[library] ?? library)
        .toSet()
        .toList(growable: false);
    final methodsForModule = <MethodInfo>[];
    final missingSymbols = <String>[];
    final callbackRelatedMissingSymbols = <String>[];
    final unresolvedSymbols = <String>[];
    final callbackUsage = LinkedHashMap<String, LinkedHashSet<String>>();

    for (final symbols in entry.value.values) {
      for (final symbol in symbols) {
        final method = methods[symbol];
        if (method == null) {
          missingSymbols.add(symbol);
          if (_looksLikeCallbackApiSymbol(symbol)) {
            callbackRelatedMissingSymbols.add(symbol);
          } else {
            unresolvedSymbols.add(symbol);
          }
          continue;
        }

        methodsForModule.add(method);
        for (final callbackType in _extractReferencedCallbackTypes(
          method,
          callbackGroups,
        )) {
          callbackUsage
              .putIfAbsent(
                callbackType,
                LinkedHashSet<String>.new,
              )
              .add(method.name);
        }
      }
    }

    final callbackReferences = callbackUsage.entries
        .map(
          (entry) => CallbackReference(
            group: callbackGroups[entry.key]!,
            usedByMethods: entry.value.toList(growable: false),
          ),
        )
        .toList(growable: false);

    modules.add(
      ModuleInfo(
        symbolMapVariable: entry.key,
        getterName: getterName,
        libraryName: libraryName,
        fileName: fileName,
        sharedObjects: sharedObjects,
        descriptions: moduleDescriptions,
        methods: methodsForModule,
        callbackReferences: callbackReferences,
        missingSymbols: missingSymbols,
        callbackRelatedMissingSymbols: callbackRelatedMissingSymbols,
        unresolvedSymbols: unresolvedSymbols,
      ),
    );
  }

  final tempLibDir =
      Directory('${rootDir.path}/lib/module_docs/$versionId/modules');
  final dartdocOptionsFile = File('${rootDir.path}/dartdoc_options.yaml');
  final dartdocBackupFile =
      File('${rootDir.path}/dartdoc_options.yaml.module_doc_backup');
  final outputDirectory =
      Directory('${rootDir.path}/${config.outputDirectory}');

  if (config.buildDocs) {
    await _run('dart', ['pub', 'get'], workingDirectory: rootDir.path);
  }

  try {
    _writeModuleLibraries(
      tempLibDir: tempLibDir,
      version: version,
      modules: modules,
      callbackInterop: callbackInterop,
    );
    _writeDartdocOptions(
      targetFile: dartdocOptionsFile,
      backupFile: dartdocBackupFile,
      modules: modules,
    );

    stdout.writeln(
      'Prepared ${modules.length} module libraries under ${tempLibDir.path}',
    );

    if (config.buildDocs) {
      if (outputDirectory.existsSync()) {
        outputDirectory.deleteSync(recursive: true);
      }
      await _run(
        'dart',
        ['doc', '--validate-links', '-o', config.outputDirectory, '.'],
        workingDirectory: rootDir.path,
      );
    }
  } finally {
    if (!config.keepTempFiles && tempLibDir.existsSync()) {
      tempLibDir.parent.parent.deleteSync(recursive: true);
    }

    if (!config.keepDartdocOptions) {
      _restoreDartdocOptions(
        targetFile: dartdocOptionsFile,
        backupFile: dartdocBackupFile,
      );
    }
  }
}

_Config _parseArgs(List<String> args) {
  var version = '6.0';
  var outputDirectory = 'doc/api';
  var buildDocs = true;
  var keepTempFiles = false;
  var keepDartdocOptions = false;

  for (var index = 0; index < args.length; index++) {
    final arg = args[index];
    switch (arg) {
      case '--version':
        if (index + 1 >= args.length) {
          throw ArgumentError('Missing value for --version');
        }
        version = args[++index];
      case '--output':
        if (index + 1 >= args.length) {
          throw ArgumentError('Missing value for --output');
        }
        outputDirectory = args[++index];
      case '--build-docs':
        buildDocs = true;
      case '--no-build-docs':
        buildDocs = false;
      case '--keep-temp-files':
        keepTempFiles = true;
      case '--keep-dartdoc-options':
        keepDartdocOptions = true;
      case '-h':
      case '--help':
        stdout.writeln(
          'Usage: dart run tool/generate_module_dartdoc.dart '
          '[--version 6.0] [--output doc/api] '
          '[--build-docs|--no-build-docs] '
          '[--keep-temp-files] [--keep-dartdoc-options]',
        );
        exit(0);
      default:
        throw ArgumentError('Unknown argument: $arg');
    }
  }

  return _Config(
    version: version,
    outputDirectory: outputDirectory,
    buildDocs: buildDocs,
    keepTempFiles: keepTempFiles,
    keepDartdocOptions: keepDartdocOptions,
  );
}

Directory _repoRoot() {
  final scriptFile = File.fromUri(Platform.script);
  return scriptFile.parent.parent;
}

Map<String, MethodInfo> _parseMethods(List<String> lines) {
  final methods = <String, MethodInfo>{};
  final docBuffer = <String>[];
  var index = 0;

  while (index < lines.length) {
    final line = lines[index];

    if (line.startsWith('  ///')) {
      docBuffer.add(line.substring(2));
      index++;
      continue;
    }

    final zeroArgumentMethod = RegExp(
      r'^ {2}(?! )(?!late final)(?!Tizen\d+Native)(.+?)\s+(\w+)\(\)\s*\{$',
    ).firstMatch(line);
    if (zeroArgumentMethod != null) {
      final method = MethodInfo(
        docLines: List<String>.from(docBuffer),
        returnType: zeroArgumentMethod.group(1)!.trim(),
        name: zeroArgumentMethod.group(2)!.trim(),
        parameters: const [],
      );
      methods[method.name] = method;
      docBuffer.clear();
      index++;
      continue;
    }

    final multiArgumentMethod = RegExp(
      r'^ {2}(?! )(?!late final)(?!Tizen\d+Native)(.+?)\s+(\w+)\(\s*$',
    ).firstMatch(line);
    if (multiArgumentMethod != null) {
      final parameterLines = <String>[];
      index++;
      while (index < lines.length && lines[index].trim() != ') {') {
        final parameterLine = lines[index].trim();
        if (parameterLine.isNotEmpty) {
          parameterLines.add(parameterLine);
        }
        index++;
      }
      final parameters = _parseParameters(parameterLines.join(' '));
      final method = MethodInfo(
        docLines: List<String>.from(docBuffer),
        returnType: multiArgumentMethod.group(1)!.trim(),
        name: multiArgumentMethod.group(2)!.trim(),
        parameters: parameters,
      );
      methods[method.name] = method;
      docBuffer.clear();
      index++;
      continue;
    }

    if (line.trim().isNotEmpty) {
      docBuffer.clear();
    }
    index++;
  }

  return methods;
}

List<ParameterInfo> _parseParameters(String parameterBlock) {
  if (parameterBlock.trim().isEmpty) {
    return const [];
  }
  return _splitParameters(parameterBlock).map(_parseParameter).toList();
}

List<String> _splitParameters(String parameterBlock) {
  final parameters = <String>[];
  final buffer = StringBuffer();
  var angleDepth = 0;
  var parenthesisDepth = 0;
  var squareDepth = 0;

  for (final rune in parameterBlock.runes) {
    final char = String.fromCharCode(rune);
    if (char == '<') {
      angleDepth++;
    } else if (char == '>') {
      if (angleDepth > 0) {
        angleDepth--;
      }
    } else if (char == '(') {
      parenthesisDepth++;
    } else if (char == ')') {
      if (parenthesisDepth > 0) {
        parenthesisDepth--;
      }
    } else if (char == '[') {
      squareDepth++;
    } else if (char == ']') {
      if (squareDepth > 0) {
        squareDepth--;
      }
    } else if (char == ',' &&
        angleDepth == 0 &&
        parenthesisDepth == 0 &&
        squareDepth == 0) {
      final parameter = buffer.toString().trim();
      if (parameter.isNotEmpty) {
        parameters.add(parameter);
      }
      buffer.clear();
      continue;
    }
    buffer.write(char);
  }

  final trailing = buffer.toString().trim();
  if (trailing.isNotEmpty) {
    parameters.add(trailing);
  }

  return parameters;
}

ParameterInfo _parseParameter(String parameter) {
  final separatorIndex = parameter.lastIndexOf(' ');
  if (separatorIndex <= 0 || separatorIndex == parameter.length - 1) {
    throw StateError('Unable to parse parameter: $parameter');
  }
  return ParameterInfo(
    parameter.substring(0, separatorIndex).trim(),
    parameter.substring(separatorIndex + 1).trim(),
  );
}

Map<String, TypedefInfo> _parseTypedefs(List<String> lines) {
  final typedefs = <String, TypedefInfo>{};
  final docBuffer = <String>[];
  var index = 0;

  while (index < lines.length) {
    final line = lines[index];
    if (line.startsWith('///')) {
      docBuffer.add(line);
      index++;
      continue;
    }

    if (line.startsWith('typedef ')) {
      final definitionBuffer = StringBuffer(line.trimRight());
      while (!definitionBuffer.toString().trimRight().endsWith(';')) {
        index++;
        if (index >= lines.length) {
          throw StateError('Unexpected EOF while parsing typedef.');
        }
        definitionBuffer.write('\n${lines[index].trimRight()}');
      }

      final definition = definitionBuffer.toString();
      final nameMatch = RegExp(r'^typedef\s+(\w+)').firstMatch(definition);
      if (nameMatch == null) {
        throw StateError('Unable to determine typedef name: $definition');
      }

      final name = nameMatch.group(1)!;
      typedefs[name] = TypedefInfo(
        docLines: List<String>.from(docBuffer),
        name: name,
        definition: definition,
      );
      docBuffer.clear();
      index++;
      continue;
    }

    if (line.trim().isNotEmpty) {
      docBuffer.clear();
    }
    index++;
  }

  return typedefs;
}

Map<String, CallbackTypedefGroup> _buildCallbackTypedefGroups(
  Map<String, TypedefInfo> typedefs,
) {
  final groups = <String, CallbackTypedefGroup>{};

  for (final entry in typedefs.entries) {
    final callbackType = entry.key;
    if (!callbackType.endsWith('_cb')) {
      continue;
    }

    final nativeSignatureType = '${callbackType}Function';
    final dartSignatureType = 'Dart${callbackType}Function';
    final nativeSignature = typedefs[nativeSignatureType];
    if (nativeSignature == null) {
      continue;
    }

    groups[callbackType] = CallbackTypedefGroup(
      callbackType: callbackType,
      nativeSignatureType: nativeSignatureType,
      dartSignatureType:
          typedefs.containsKey(dartSignatureType) ? dartSignatureType : null,
      docLines: entry.value.docLines,
    );
  }

  return groups;
}

Map<String, Map<String, List<String>>> _parseGeneratedSymbols(
  List<String> lines,
) {
  final symbolMaps = <String, Map<String, List<String>>>{};
  String? currentMap;
  String? currentLibrary;

  for (final rawLine in lines) {
    final line = rawLine.trim();

    final mapMatch = RegExp(
      r'^const\s+Map<String,\s*List<String>>\s+(\w+)\s*=\s*\{$',
    ).firstMatch(line);
    if (mapMatch != null) {
      currentMap = mapMatch.group(1)!;
      symbolMaps[currentMap] = <String, List<String>>{};
      continue;
    }

    if (currentMap == null) {
      continue;
    }

    final libraryMatch = RegExp(r"^'([^']+)':\s*\[$").firstMatch(line);
    if (libraryMatch != null) {
      currentLibrary = libraryMatch.group(1)!;
      symbolMaps[currentMap]![currentLibrary] = <String>[];
      continue;
    }

    final symbolMatch = RegExp(r"^'([^']+)'[,]?$").firstMatch(line);
    if (symbolMatch != null && currentLibrary != null) {
      symbolMaps[currentMap]![currentLibrary]!.add(symbolMatch.group(1)!);
      continue;
    }

    if (line == '],') {
      currentLibrary = null;
      continue;
    }

    if (line == '};') {
      currentMap = null;
      currentLibrary = null;
    }
  }

  return symbolMaps;
}

Map<String, String> _parseGetterMap(String content) {
  final getterMap = <String, String>{};
  final pattern = RegExp(
    r'Tizen\w+Native\?\s+_(\w+);\s+Tizen\w+Native get (\w+)\s*=>.*?_getTizenNative\((\w+)\);',
    multiLine: true,
    dotAll: true,
  );

  for (final match in pattern.allMatches(content)) {
    getterMap[match.group(3)!] = match.group(2)!;
  }
  return getterMap;
}

Map<String, String> _parseSymgenDescriptions(List<String> lines) {
  final descriptions = <String, String>{};
  final pattern = RegExp(r'-\s+([\w\.\-]+)\s+.*#\s+(.*)$');

  for (final line in lines) {
    final match = pattern.firstMatch(line);
    if (match != null) {
      descriptions[match.group(1)!.trim()] = match.group(2)!.trim();
    }
  }

  return descriptions;
}

CallbackInteropInfo _parseCallbackInteropInfo(String content) {
  final helperClassName =
      RegExp(r'class\s+(\w+)\s*\{').firstMatch(content)?.group(1) ??
          'TizenInteropCallbacks';
  final registeredCallbackTypeName =
      RegExp(r'class\s+(\w+)<NativeCbType extends Function>\s*\{')
              .firstMatch(content)
              ?.group(1) ??
          'RegisteredCallback';
  final registrationMethodName = RegExp(
        r'(\w+)<NativeCbType extends Function>\(\s*String callbackName,',
        dotAll: true,
      ).firstMatch(content)?.group(1) ??
      'register';
  final pointerGetterName =
      RegExp(r'Pointer<NativeFunction<NativeCbType>> get (\w+) =>')
              .firstMatch(content)
              ?.group(1) ??
          'interopCallback';
  final userDataGetterName =
      RegExp(r'Pointer<Void> get (\w+) =>').firstMatch(content)?.group(1) ??
          'interopUserData';

  return CallbackInteropInfo(
    helperClassName: helperClassName,
    registrationMethodName: registrationMethodName,
    registeredCallbackTypeName: registeredCallbackTypeName,
    pointerGetterName: pointerGetterName,
    userDataGetterName: userDataGetterName,
  );
}

Iterable<String> _extractReferencedCallbackTypes(
  MethodInfo method,
  Map<String, CallbackTypedefGroup> callbackGroups,
) sync* {
  final seen = <String>{};
  for (final parameter in method.parameters) {
    final callbackType = parameter.type.trim();
    if (!callbackGroups.containsKey(callbackType) || !seen.add(callbackType)) {
      continue;
    }
    yield callbackType;
  }
}

bool _looksLikeCallbackApiSymbol(String symbol) {
  return symbol.endsWith('_cb') ||
      symbol.contains('_cb_') ||
      symbol.contains('_callback') ||
      symbol.contains('callback');
}

void _writeModuleLibraries({
  required Directory tempLibDir,
  required String version,
  required List<ModuleInfo> modules,
  required CallbackInteropInfo callbackInterop,
}) {
  if (tempLibDir.existsSync()) {
    tempLibDir.deleteSync(recursive: true);
  }
  tempLibDir.createSync(recursive: true);

  for (final module in modules) {
    File('${tempLibDir.path}/${module.fileName}').writeAsStringSync(
      _buildModuleLibrary(
        version: version,
        module: module,
        callbackInterop: callbackInterop,
      ),
    );
  }
}

void _writeDartdocOptions({
  required File targetFile,
  required File backupFile,
  required List<ModuleInfo> modules,
}) {
  if (targetFile.existsSync()) {
    targetFile.renameSync(backupFile.path);
  } else if (backupFile.existsSync()) {
    backupFile.deleteSync();
  }

  final includes =
      modules.map((module) => '    - ${module.libraryName}').join('\n');
  targetFile.writeAsStringSync(
    '''
dartdoc:
  include:
$includes
''',
  );
}

void _restoreDartdocOptions({
  required File targetFile,
  required File backupFile,
}) {
  if (targetFile.existsSync()) {
    targetFile.deleteSync();
  }
  if (backupFile.existsSync()) {
    backupFile.renameSync(targetFile.path);
  }
}

String _buildModuleLibrary({
  required String version,
  required ModuleInfo module,
  required CallbackInteropInfo callbackInterop,
}) {
  final buffer = StringBuffer()
    ..writeln(
      '// ignore_for_file: camel_case_types, non_constant_identifier_names, '
      'unused_import',
    )
    ..writeln()
    ..writeln(
      '/// Module-scoped documentation wrappers for `${module.getterName}`.',
    )
    ..writeln('///')
    ..writeln('/// Tizen version: `$version`.')
    ..writeln('/// Module getter: `${module.getterName}`.')
    ..writeln('/// Module symbol map: `${module.symbolMapVariable}`.')
    ..writeln(
      '/// Shared object(s): '
      '${module.sharedObjects.map((value) => '`$value`').join(', ')}.',
    )
    ..writeln('///')
    ..writeln('/// ${module.descriptionText}.')
    ..writeln('///')
    ..writeln(
      '/// Generated from `generated_symbols.dart` and '
      '`generated_bindings.dart` in `package:tizen_interop`.',
    );

  if (module.callbackRelatedMissingSymbols.isNotEmpty) {
    buffer
      ..writeln('///')
      ..writeln(
        '/// Callback-related symbols declared in `generated_symbols.dart` '
        'but not found in `generated_bindings.dart`:',
      );
    for (final symbol in module.callbackRelatedMissingSymbols) {
      buffer.writeln('/// - `$symbol`');
    }
    buffer
      ..writeln('///')
      ..writeln(
        '/// For callback interop, inspect '
        '`package:tizen_interop_callbacks` and use '
        '`${callbackInterop.helperClassName}.'
        '${callbackInterop.registrationMethodName}<NativeCbType>()`, then pass '
        '`${callbackInterop.registeredCallbackTypeName}.'
        '${callbackInterop.pointerGetterName}` and '
        '`${callbackInterop.registeredCallbackTypeName}.'
        '${callbackInterop.userDataGetterName}` to the native API.',
      );
  }

  if (module.unresolvedSymbols.isNotEmpty) {
    buffer
      ..writeln('///')
      ..writeln(
        '/// Symbols declared in `generated_symbols.dart` but not found in '
        '`generated_bindings.dart`:',
      );
    for (final symbol in module.unresolvedSymbols) {
      buffer.writeln('/// - `$symbol`');
    }
  }

  buffer
    ..writeln('library ${module.libraryName};')
    ..writeln()
    ..writeln("import 'dart:ffi' as ffi;")
    ..writeln()
    ..writeln("import 'package:tizen_interop/$version/tizen.dart';")
    ..writeln(
      "import 'package:tizen_interop/src/bindings/$version/"
      "generated_bindings.dart' as bindings;",
    )
    ..writeln();

  for (final callbackReference in module.callbackReferences) {
    _writeCallbackAliasBlock(
      buffer: buffer,
      callbackReference: callbackReference,
      callbackInterop: callbackInterop,
    );
  }

  if (module.callbackReferences.isNotEmpty && module.methods.isNotEmpty) {
    buffer.writeln();
  }

  for (var index = 0; index < module.methods.length; index++) {
    if (index > 0) {
      buffer.writeln();
    }
    _writeMethodWrapper(buffer, module, module.methods[index]);
  }

  return buffer.toString();
}

void _writeCallbackAliasBlock({
  required StringBuffer buffer,
  required CallbackReference callbackReference,
  required CallbackInteropInfo callbackInterop,
}) {
  final group = callbackReference.group;

  for (final docLine in group.docLines) {
    buffer.writeln(_normalizeDocLine(docLine));
  }

  if (group.docLines.isNotEmpty) {
    buffer.writeln('///');
  }

  final usedByMethods = callbackReference.usedByMethods
      .map((methodName) => '[$methodName]')
      .join(', ');

  buffer
    ..writeln(
      '/// Register this callback with `'
      '${callbackInterop.helperClassName}.'
      '${callbackInterop.registrationMethodName}<${group.nativeSignatureType}>()` '
      'from `package:tizen_interop_callbacks`.',
    )
    ..writeln(
      '/// Pass `'
      '${callbackInterop.registeredCallbackTypeName}.'
      '${callbackInterop.pointerGetterName}` and `'
      '${callbackInterop.registeredCallbackTypeName}.'
      '${callbackInterop.userDataGetterName}` to the native API.',
    );

  if (usedByMethods.isNotEmpty) {
    buffer.writeln('/// Used by: $usedByMethods.');
  }

  buffer
    ..writeln('typedef ${group.callbackType} = bindings.${group.callbackType};')
    ..writeln()
    ..writeln(
      '/// Native callback signature used with '
      '`'
      '${callbackInterop.helperClassName}.'
      '${callbackInterop.registrationMethodName}<${group.nativeSignatureType}>()`.',
    )
    ..writeln(
      'typedef ${group.nativeSignatureType} = '
      'bindings.${group.nativeSignatureType};',
    );

  final dartSignatureType = group.dartSignatureType;
  if (dartSignatureType != null) {
    buffer
      ..writeln()
      ..writeln(
        '/// Dart-side callback signature paired with '
        '[${group.nativeSignatureType}].',
      )
      ..writeln(
        'typedef $dartSignatureType = bindings.$dartSignatureType;',
      );
  }
}

void _writeMethodWrapper(
  StringBuffer buffer,
  ModuleInfo module,
  MethodInfo method,
) {
  for (final docLine in method.docLines) {
    buffer.writeln(_normalizeDocLine(docLine));
  }

  if (method.docLines.isNotEmpty) {
    buffer
      ..writeln('///')
      ..writeln('/// Module getter: `${module.getterName}`.');
  }

  if (method.parameters.isEmpty) {
    buffer
      ..writeln('${method.returnType} ${method.name}() =>')
      ..writeln('    ${module.getterName}.${method.name}();');
    return;
  }

  buffer..writeln('${method.returnType} ${method.name}(');
  for (final parameter in method.parameters) {
    buffer.writeln('  ${parameter.type} ${parameter.name},');
  }
  buffer
    ..writeln(') =>')
    ..writeln('    ${module.getterName}.${method.name}(');
  for (final parameter in method.parameters) {
    buffer.writeln('      ${parameter.name},');
  }
  buffer..writeln('    );');
}

String _camelToSnake(String value) {
  return value
      .replaceAllMapped(
        RegExp(r'([a-z0-9])([A-Z])'),
        (match) => '${match.group(1)}_${match.group(2)}',
      )
      .toLowerCase();
}

String _normalizeDocLine(String line) {
  return line
      .replaceAll('@param[in,out]', 'Parameter')
      .replaceAll('@param[out]', 'Output parameter')
      .replaceAll('@param[in]', 'Parameter')
      .replaceAll('[in,out]', 'in,out')
      .replaceAll('[out]', 'out')
      .replaceAll('[in]', 'in');
}

Future<void> _run(
  String executable,
  List<String> arguments, {
  required String workingDirectory,
}) async {
  final process = await Process.start(
    executable,
    arguments,
    workingDirectory: workingDirectory,
    mode: ProcessStartMode.inheritStdio,
  );
  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    throw ProcessException(executable, arguments, 'Command failed', exitCode);
  }
}
