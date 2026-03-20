import 'dart:io';

import 'src/doxygen_to_dartdoc.dart';

void main(List<String> args) {
  if (args.isEmpty || args.contains('--help') || args.contains('-h')) {
    stdout.writeln(
      'Usage: dart run tool/convert_doxygen_to_dartdoc.dart <dart-file> '
      '[more-dart-files...]',
    );
    exit(args.isEmpty ? 64 : 0);
  }

  var changedCount = 0;
  for (final path in args) {
    if (path.startsWith('-')) {
      stderr.writeln('Unknown option: $path');
      exitCode = 64;
      return;
    }
    if (!path.endsWith('.dart')) {
      stderr.writeln('Expected a Dart file path, got: $path');
      exitCode = 64;
      return;
    }

    try {
      final changed = convertDoxygenCommentsInDartFile(path);
      if (changed) {
        stdout.writeln('Converted: $path');
        changedCount++;
      } else {
        stdout.writeln('No changes: $path');
      }
    } on Object catch (error) {
      stderr.writeln(error);
      exitCode = 1;
      return;
    }
  }

  if (changedCount == 0) {
    stdout.writeln('No doxygen-style doc comments were rewritten.');
  }
}
