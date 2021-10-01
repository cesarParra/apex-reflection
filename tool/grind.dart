import 'dart:io';

import 'package:grinder/grinder.dart';

main(args) => grind(args);

@DefaultTask()
build() {
  toJs();
}

toJs() async {
  log("Converting to JS");
  final file = FilePath('./lib/src/node/node.dart');
  const jsRoot = './js';
  const nodeOutputDir = '$jsRoot/apex-reflection-node';
  const compiledOutputJsPath = '$nodeOutputDir/dart2jsout.js';

  log('Running dart2js compile');
  final compiledOutputJs = FilePath(compiledOutputJsPath);
  Dart2js.compile(file.asFile, outFile: compiledOutputJs.asFile, minify: true);

  log('Building Node file');
  final preambleContents =
      await File('$jsRoot/preamble/preamble.js').readAsString();
  final nodeOutputFile = File('$nodeOutputDir/out.js');
  nodeOutputFile.writeAsString(preambleContents, mode: FileMode.write);
  final compiledJsContents = await File(compiledOutputJsPath).readAsString();
  nodeOutputFile.writeAsString(compiledJsContents, mode: FileMode.append);

  log('Cleaning up Node module');
  compiledOutputJs.delete();
  FilePath('$nodeOutputDir/dart2jsout.js.deps').delete();
  FilePath('$nodeOutputDir/dart2jsout.js.map').delete();
}
