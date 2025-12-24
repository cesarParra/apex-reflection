import 'dart:convert';
import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:args/args.dart';

Future<void> main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'type',
      allowed: ['reflectType', 'reflectTrigger'],
      mandatory: true,
    )..addOption('source', mandatory: true);

  final results = parser.parse(arguments);
  final type = results['type'] as String;
  final source = results['source'] as String;

  switch (type) {
    case 'reflectType':
      final reflected = Reflection.reflect(source);
      print(const JsonEncoder.withIndent('  ').convert(reflected.toJson()));
    case 'reflectTrigger':
      final reflected = Reflection.reflectTrigger(source);
      print(const JsonEncoder.withIndent('  ').convert(reflected.toJson()));
  }
}
