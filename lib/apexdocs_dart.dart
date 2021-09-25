// @dart=2.9

library apexdocs_dart;

import 'dart:convert';
import 'dart:io';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexLexer.dart';
import 'package:apexdocs_dart/src/antlr/lib/apex/ApexParser.dart'
    as antlr_parser;
import 'package:apexdocs_dart/src/model/apex_file_manifest.dart';
import 'package:apexdocs_dart/src/model/types.dart';
import 'package:apexdocs_dart/src/service/parsers.dart';
import 'package:args/args.dart';

main(List<String> arguments) async {
  exitCode = 0;
  ApexLexer.checkVersion();
  antlr_parser.ApexParser.checkVersion();

  final parser = ArgParser()
    ..addOption('sourceDir',
        abbr: 's',
        mandatory: true,
        help: 'The directory location which contains your apex .cls classes.');

  final parseResults = parser.parse(arguments);
  final sourceDirectory = parseResults['sourceDir'];
  if (await FileSystemEntity.isDirectory(sourceDirectory) == false) {
    stderr.writeln('Error: $sourceDirectory is not a directory');
    exitCode = 2;
    return;
  }

  final dir = Directory(sourceDirectory);
  final List<FileSystemEntity> entities =
      await dir.list(recursive: true).toList();
  var generatedTypeFutures = entities
      .whereType<File>()
      .where((element) => element.path.endsWith('.cls'))
      .map((e) async => await ApexParser.parseFromPath(e.path))
      .toList();

  final generatedTypes = <Type>[];
  for (var element in generatedTypeFutures) {
    final generatedType = await element;
    generatedTypes.add(generatedType);
  }

  final manifest = ApexFileManifest(generatedTypes);
  print(jsonEncode(manifest));
}
