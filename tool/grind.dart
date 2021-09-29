import 'dart:io';

import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task('Converts Dart code to Node compatible JS code')
toJs() async {
  log("Converting to JS");
  final file = FilePath('./lib/apexdocs_dart.dart');
  const outputDir = './js';
  const compiledOutputJsPath = '$outputDir/dart2jsout.js';
  Dart2js.compile(file.asFile, outFile: FilePath(compiledOutputJsPath).asFile);

  final preambleContents = await File('$outputDir/preamble.js').readAsString();
  final nodeOutputFile = File('$outputDir/out.js');
  nodeOutputFile.writeAsString(preambleContents, mode: FileMode.write);
  final compiledJsContents = await File(compiledOutputJsPath).readAsString();
  nodeOutputFile.writeAsString(compiledJsContents, mode: FileMode.append);
}
