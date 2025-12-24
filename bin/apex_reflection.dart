import 'dart:convert';
import 'dart:io';

import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:args/args.dart';

Future<void> main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'type',
      allowed: ['reflectType', 'reflectTrigger'],
      mandatory: true,
    );

  final results = parser.parse(arguments);
  final type = results['type'] as String;

  // Read entire stdin (supports multiline content including backticks).
  final source = await stdin.transform(utf8.decoder).join();
  if (source.trim().isEmpty) {
    throw ArgumentError(
      'No source provided. Pipe the source via stdin.',
    );
  }

  switch (type) {
    case 'reflectType':
      final reflected = Reflection.reflect(source);
      final asJson = reflected.toJson();
      asJson['raw_source'] = source;
      print(jsonEncode(asJson));
      break;
    case 'reflectTrigger':
      final reflected = Reflection.reflectTrigger(source);
      print(const JsonEncoder.withIndent('  ').convert(reflected.toJson()));
      break;
  }
}
