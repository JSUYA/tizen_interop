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

class ModuleInfo {
  ModuleInfo({
    required this.symbolMapVariable,
    required this.getterName,
    required this.libraryName,
    required this.fileName,
    required this.sharedObjects,
    required this.descriptions,
    required this.methods,
    required this.missingSymbols,
  });

  final String symbolMapVariable;
  final String getterName;
  final String libraryName;
  final String fileName;
  final List<String> sharedObjects;
  final List<String> descriptions;
  final List<MethodInfo> methods;
  final List<String> missingSymbols;

  String get descriptionText =>
      descriptions.isEmpty ? 'Unknown module' : descriptions.join(', ');
}

Future<void> main(List<String> args) async {
  final config = _parseArgs(args);
  final rootDir = _repoRoot();
  final version = config.version;
  final versionId = version.replaceAll('.', '_');
  final packageName = 'tizen_interop_docs_$versionId';
  final packageDir = Directory(
    '${rootDir.path}/packages/$packageName',
  );

  final generatedBindingsFile = File(
    '${rootDir.path}/lib/src/bindings/$version/generated_bindings.dart',
  );
  final generatedSymbolsFile = File(
    '${rootDir.path}/lib/src/bindings/$version/generated_symbols.dart',
  );
  final tizenLibraryFile = File('${rootDir.path}/lib/$version/tizen.dart');
  final symgenConfigFile = File('${rootDir.path}/configs/$version/symgen.yaml');

  for (final file in [
    generatedBindingsFile,
    generatedSymbolsFile,
    tizenLibraryFile,
    symgenConfigFile,
  ]) {
    if (!file.existsSync()) {
      stderr.writeln('Missing required file: ${file.path}');
      exitCode = 1;
      return;
    }
  }

  final methods = _parseMethods(generatedBindingsFile.readAsLinesSync());
  final symbolMaps =
      _parseGeneratedSymbols(generatedSymbolsFile.readAsLinesSync());
  final getters = _parseGetterMap(tizenLibraryFile.readAsStringSync());
  final descriptions =
      _parseSymgenDescriptions(symgenConfigFile.readAsLinesSync());

  final modules = <ModuleInfo>[];
  final moduleEntries = symbolMaps.entries.toList()
    ..sort((a, b) => getters[a.key]!.compareTo(getters[b.key]!));

  for (final entry in moduleEntries) {
    final getterName = getters[entry.key];
    if (getterName == null) {
      stderr.writeln('Skipping ${entry.key}: getter not found in tizen.dart');
      continue;
    }

    final libraryName = 'tizen_${versionId}_${_camelToSnake(getterName)}';
    final fileName = '${_camelToSnake(getterName)}.dart';
    final sharedObjects = entry.value.keys.toList();
    final moduleDescriptions = sharedObjects
        .map((library) => descriptions[library] ?? library)
        .toSet()
        .toList();
    final methodsForModule = <MethodInfo>[];
    final missingSymbols = <String>[];

    for (final symbols in entry.value.values) {
      for (final symbol in symbols) {
        final method = methods[symbol];
        if (method == null) {
          missingSymbols.add(symbol);
          continue;
        }
        methodsForModule.add(method);
      }
    }

    modules.add(
      ModuleInfo(
        symbolMapVariable: entry.key,
        getterName: getterName,
        libraryName: libraryName,
        fileName: fileName,
        sharedObjects: sharedObjects,
        descriptions: moduleDescriptions,
        methods: methodsForModule,
        missingSymbols: missingSymbols,
      ),
    );
  }

  _writePackage(
    packageDir: packageDir,
    packageName: packageName,
    version: version,
    modules: modules,
  );

  stdout.writeln(
    'Generated ${modules.length} module libraries in ${packageDir.path}',
  );

  if (config.buildDocs) {
    await _run('dart', ['pub', 'get'], workingDirectory: packageDir.path);
    await _run(
      'dart',
      ['doc', '--validate-links', '-o', 'doc/api', '.'],
      workingDirectory: packageDir.path,
    );
  }
}

class _Config {
  _Config({required this.version, required this.buildDocs});

  final String version;
  final bool buildDocs;
}

_Config _parseArgs(List<String> args) {
  var version = '6.0';
  var buildDocs = true;

  for (var i = 0; i < args.length; i++) {
    final arg = args[i];
    if (arg == '--version') {
      if (i + 1 >= args.length) {
        throw ArgumentError('Missing value for --version');
      }
      version = args[++i];
      continue;
    }
    if (arg == '--no-build-docs') {
      buildDocs = false;
      continue;
    }
    if (arg == '--build-docs') {
      buildDocs = true;
      continue;
    }
    if (arg == '-h' || arg == '--help') {
      stdout.writeln(
        'Usage: dart run tool/generate_module_dartdoc.dart '
        '[--version 6.0] [--build-docs|--no-build-docs]',
      );
      exit(0);
    }
    throw ArgumentError('Unknown argument: $arg');
  }

  return _Config(version: version, buildDocs: buildDocs);
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

    final zeroArgMatch = RegExp(
      r'^ {2}(?! )(?!late final)(?!Tizen\d+Native)(.+?)\s+(\w+)\(\)\s*\{$',
    ).firstMatch(line);
    if (zeroArgMatch != null) {
      final method = MethodInfo(
        docLines: List<String>.from(docBuffer),
        returnType: zeroArgMatch.group(1)!.trim(),
        name: zeroArgMatch.group(2)!.trim(),
        parameters: const [],
      );
      methods[method.name] = method;
      docBuffer.clear();
      index++;
      continue;
    }

    final multiArgMatch = RegExp(
      r'^ {2}(?! )(?!late final)(?!Tizen\d+Native)(.+?)\s+(\w+)\(\s*$',
    ).firstMatch(line);
    if (multiArgMatch != null) {
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
        returnType: multiArgMatch.group(1)!.trim(),
        name: multiArgMatch.group(2)!.trim(),
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

Map<String, Map<String, List<String>>> _parseGeneratedSymbols(
    List<String> lines) {
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

void _writePackage({
  required Directory packageDir,
  required String packageName,
  required String version,
  required List<ModuleInfo> modules,
}) {
  if (!packageDir.existsSync()) {
    packageDir.createSync(recursive: true);
  }

  final libDir = Directory('${packageDir.path}/lib/modules');
  if (libDir.existsSync()) {
    libDir.deleteSync(recursive: true);
  }
  libDir.createSync(recursive: true);

  final docApiDir = Directory('${packageDir.path}/doc/api');
  if (docApiDir.existsSync()) {
    docApiDir.deleteSync(recursive: true);
  }

  File('${packageDir.path}/pubspec.yaml').writeAsStringSync(
    _buildPubspec(packageName, version),
  );
  File('${packageDir.path}/analysis_options.yaml').writeAsStringSync(
    'include: package:lints/recommended.yaml\n',
  );
  File('${packageDir.path}/dartdoc_options.yaml').writeAsStringSync(
    _buildDartdocOptions(modules),
  );
  File('${packageDir.path}/README.md').writeAsStringSync(
    _buildReadme(version, packageName, modules),
  );

  for (final module in modules) {
    File('${libDir.path}/${module.fileName}').writeAsStringSync(
      _buildModuleLibrary(version, module),
    );
  }
}

String _buildPubspec(String packageName, String version) {
  return '''
name: $packageName
description: Module-scoped dartdoc wrappers for Tizen $version bindings.
publish_to: "none"

environment:
  sdk: ">=3.1.0 <4.0.0"

dependencies:
  ffi: ^2.0.1
  tizen_interop:
    path: ../..

dev_dependencies:
  lints: ^3.0.0
''';
}

String _buildDartdocOptions(List<ModuleInfo> modules) {
  final includes =
      modules.map((module) => '    - ${module.libraryName}').join('\n');

  return '''
dartdoc:
  include:
$includes
''';
}

String _buildReadme(
  String version,
  String packageName,
  List<ModuleInfo> modules,
) {
  final buffer = StringBuffer()
    ..writeln('# $packageName')
    ..writeln()
    ..writeln(
      'This package contains module-scoped wrapper libraries for '
      '`package:tizen_interop/$version/tizen.dart`.',
    )
    ..writeln()
    ..writeln(
      'The wrappers are generated from `generated_symbols.dart`, grouped by '
      'module getter, and intended for `dart doc` output where each module '
      'has its own library page.',
    )
    ..writeln()
    ..writeln('## Modules')
    ..writeln()
    ..writeln('| Getter | Module | Shared object(s) | APIs | Docs |')
    ..writeln('| --- | --- | --- | ---: | --- |');

  for (final module in modules) {
    final soList = module.sharedObjects.map((value) => '`$value`').join('<br>');
    buffer.writeln(
      '| `${module.getterName}` | ${module.descriptionText} | $soList | '
      '${module.methods.length} | [Open](${module.libraryName}/) |',
    );
  }

  final missing = modules
      .where((module) => module.missingSymbols.isNotEmpty)
      .toList(growable: false);

  if (missing.isNotEmpty) {
    buffer
      ..writeln()
      ..writeln('## Missing symbols')
      ..writeln();
    for (final module in missing) {
      buffer.writeln(
        '- `${module.getterName}`: ${module.missingSymbols.map((value) => '`$value`').join(', ')}',
      );
    }
  }

  return buffer.toString();
}

String _buildModuleLibrary(String version, ModuleInfo module) {
  final buffer = StringBuffer()
    ..writeln(
        '// ignore_for_file: non_constant_identifier_names, unused_import')
    ..writeln()
    ..writeln(
        '/// Module-scoped documentation wrappers for `${module.getterName}`.')
    ..writeln('///')
    ..writeln('/// Tizen version: `$version`.')
    ..writeln(
      '/// Shared object(s): ${module.sharedObjects.map((value) => '`$value`').join(', ')}.',
    )
    ..writeln('///')
    ..writeln('/// ${module.descriptionText}.')
    ..writeln('///')
    ..writeln(
        '/// Generated from `package:tizen_interop` bindings and symbol maps.')
    ..writeln('library ${module.libraryName};')
    ..writeln()
    ..writeln("import 'dart:ffi' as ffi;")
    ..writeln()
    ..writeln("import 'package:tizen_interop/$version/tizen.dart';")
    ..writeln();

  for (final method in module.methods) {
    for (final docLine in method.docLines) {
      buffer.writeln(_normalizeDocLine(docLine));
    }
    if (method.docLines.isNotEmpty) {
      buffer.writeln('///');
      buffer.writeln('/// Module getter: `${module.getterName}`.');
    }

    if (method.parameters.isEmpty) {
      buffer
        ..writeln('${method.returnType} ${method.name}() =>')
        ..writeln('    ${module.getterName}.${method.name}();')
        ..writeln();
      continue;
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
    buffer
      ..writeln('    );')
      ..writeln();
  }

  return buffer.toString();
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
