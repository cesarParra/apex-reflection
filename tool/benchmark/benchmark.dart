// Benchmark: ANTLR vs petitparser, end-to-end (source → JSON).
//
// Compares the original ANTLR-based pipeline (ANTLR Apex parser + ANTLR two-stage
// Apexdoc parser) against the new petitparser pipeline, over a real corpus of
// Apex `.cls` files. Both pipelines are still present on this branch (strangler
// pattern), so the ANTLR baseline is faithful — it does NOT use the petitparser
// doc parser that the library entry points were repointed to.
//
// The measured unit of work is a full `body -> JSON string`, which is the real
// shipped workload (the library compiles to WASM and emits JSON). Serialising to
// JSON also forces every doc comment to be parsed, so doc-parsing cost is
// included on both sides.
//
// Usage:
//   dart run tool/benchmark/benchmark.dart --dir=/path/to/apex/project
//   dart run tool/benchmark/benchmark.dart --dir=... --iterations=5 --limit=500 --check
//
// Flags:
//   --dir=PATH        Directory to scan recursively for *.cls files (required).
//   --iterations=N    Timed passes over the whole corpus per parser (default 3).
//   --limit=N         Only use the first N files (after sorting) — quick runs.
//   --check           Also compare full JSON output and report parity + mismatches.
//
// The corpus is intentionally NOT committed to this repo (it is external and
// often proprietary); point --dir at any Salesforce project's `classes` folder.

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:antlr4/antlr4.dart';
import 'package:apex_reflection/src/model/declaration_mirror.dart';
import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/members.dart';
import 'package:apex_reflection/src/model/types.dart';
import 'package:apex_reflection/src/service/apex_pp/apex_pp_parser.dart';
import 'package:apex_reflection/src/service/case_insensitive_input_stream.dart';
import 'package:apex_reflection/src/service/walker.dart';

import 'package:apex_reflection/src/antlr/grammars/apex/ApexParser.dart'
    as antlr_apex;
import 'package:apex_reflection/src/antlr/grammars/Apexdoc/ApexdocParser.dart'
    as antlr_doc;

// ---------------------------------------------------------------------------
// ANTLR pipeline (original library behaviour), reconstructed for the baseline.
// ---------------------------------------------------------------------------

TypeMirror _antlrParse(String body) {
  final def = ApexWalkerDefinition();
  Walker.walk(CaseInsensitiveInputStream.fromString(body), def,
      (antlr_apex.ApexParser p) => p.compilationUnit());
  return def.getGeneratedApexType()!;
}

/// The original two-stage (SLL → LL) ANTLR Apexdoc parser.
DocComment _antlrDocParse(String body) {
  final sanitized = body.trim();
  try {
    return _antlrDocWalk(sanitized, PredictionMode.SLL);
  } catch (_) {
    try {
      return _antlrDocWalk(sanitized, PredictionMode.LL);
    } catch (e) {
      return DocComment.error(e.toString());
    }
  }
}

DocComment _antlrDocWalk(String sanitized, PredictionMode mode) {
  final def = ApexdocWalkerDefinition(predictionMode: mode);
  Walker.walk(InputStream.fromString(sanitized), def,
      (antlr_doc.ApexdocParser p) => p.documentation());
  return def.getGeneratedDocComment();
}

/// Forces every declaration's doc comment to be parsed with the ANTLR doc parser
/// (the model getter would otherwise lazily use the petitparser one).
void _forceAntlrDocs(TypeMirror type) {
  void set(DocsCommentAwareness d) {
    final raw = d.rawDocComment;
    if (raw != null) d.docComment = _antlrDocParse(raw)..rawDeclaration = raw;
  }

  set(type);
  switch (type) {
    case ClassMirror c:
      c.methods.forEach(set);
      c.fields.forEach(set);
      c.properties.forEach(set);
      c.constructors.forEach(set);
      c.enums.forEach(_forceAntlrDocs);
      c.interfaces.forEach(_forceAntlrDocs);
      c.classes.forEach(_forceAntlrDocs);
    case InterfaceMirror i:
      i.methods.forEach(set);
    case EnumMirror e:
      e.values.forEach(set);
    default:
  }
}

String antlrToJson(String body) {
  final type = _antlrParse(body);
  _forceAntlrDocs(type);
  return jsonEncode(type.toJson());
}

String ppToJson(String body) {
  // petitparser parses docs eagerly during the parse.
  return jsonEncode(ApexPpParser.parseType(body).toJson());
}

// ---------------------------------------------------------------------------
// Harness
// ---------------------------------------------------------------------------

class Sample {
  final String name;
  final String body;
  Sample(this.name, this.body);
}

/// Times `run` over every sample once; returns (totalMicros, perFileMicros).
(int, List<int>) _pass(List<Sample> samples, String Function(String) run,
    {Set<int>? skip}) {
  final per = List<int>.filled(samples.length, 0);
  final sw = Stopwatch();
  final total = Stopwatch()..start();
  for (var i = 0; i < samples.length; i++) {
    if (skip != null && skip.contains(i)) continue;
    sw
      ..reset()
      ..start();
    try {
      run(samples[i].body);
    } catch (_) {
      // Failures are accounted for separately; time is still recorded.
    }
    sw.stop();
    per[i] = sw.elapsedMicroseconds;
  }
  total.stop();
  return (total.elapsedMicroseconds, per);
}

/// Which sample indices a parser fails on.
Set<int> _failures(List<Sample> samples, String Function(String) run) {
  final failed = <int>{};
  for (var i = 0; i < samples.length; i++) {
    try {
      run(samples[i].body);
    } catch (_) {
      failed.add(i);
    }
  }
  return failed;
}

double _pct(List<int> sortedMicros, double p) {
  if (sortedMicros.isEmpty) return 0;
  final idx = ((sortedMicros.length - 1) * p).round();
  return sortedMicros[idx] / 1000.0; // -> ms
}

String _ms(num micros) => (micros / 1000).toStringAsFixed(1);

void main(List<String> args) {
  final opts = {
    for (final a in args)
      if (a.startsWith('--'))
        a.substring(2).split('=').first: a.contains('=')
            ? a.substring(2).split('=').sublist(1).join('=')
            : 'true',
  };

  final dir = opts['dir'];
  if (dir == null) {
    stderr.writeln('Missing --dir=PATH. See the header of this file for usage.');
    exit(2);
  }
  final iterations = int.tryParse(opts['iterations'] ?? '3') ?? 3;
  final limit = int.tryParse(opts['limit'] ?? '');
  final check = opts.containsKey('check');

  // Load corpus.
  final files = Directory(dir)
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.cls'))
      .toList()
    ..sort((a, b) => a.path.compareTo(b.path));
  var samples = [
    for (final f in files) Sample(f.path.split('/').last, f.readAsStringSync())
  ];
  if (limit != null && limit < samples.length) {
    samples = samples.sublist(0, limit);
  }
  final totalBytes =
      samples.fold<int>(0, (s, e) => s + e.body.codeUnits.length);
  final mb = totalBytes / (1024 * 1024);

  stdout.writeln('Corpus: ${samples.length} .cls files, '
      '${mb.toStringAsFixed(1)} MB, from $dir');
  stdout.writeln('Iterations: $iterations   Unit of work: body -> JSON string');
  stdout.writeln('');

  // Correctness: which files each parser can handle.
  final antlrFail = _failures(samples, antlrToJson);
  final ppFail = _failures(samples, ppToJson);
  stdout.writeln('Parse failures (of ${samples.length}):');
  stdout.writeln('  ANTLR      : ${antlrFail.length}');
  stdout.writeln('  petitparser: ${ppFail.length}');
  if (ppFail.isNotEmpty && ppFail.length <= 20) {
    stdout.writeln('  petitparser failed on: '
        '${ppFail.map((i) => samples[i].name).join(', ')}');
  }
  // Only time files BOTH parsers handle, for a fair comparison.
  final skip = {...antlrFail, ...ppFail};
  final timedCount = samples.length - skip.length;
  stdout.writeln('Timing ${timedCount} files parseable by both.');
  stdout.writeln('');

  if (check) {
    var identical = 0;
    final mismatches = <String>[];
    for (var i = 0; i < samples.length; i++) {
      if (skip.contains(i)) continue;
      try {
        if (antlrToJson(samples[i].body) == ppToJson(samples[i].body)) {
          identical++;
        } else {
          mismatches.add(samples[i].name);
        }
      } catch (_) {}
    }
    stdout.writeln('Output parity (full JSON): $identical/$timedCount identical');
    if (mismatches.isNotEmpty) {
      stdout.writeln('  first mismatches: '
          '${mismatches.take(15).join(', ')}'
          '${mismatches.length > 15 ? ' …(+${mismatches.length - 15})' : ''}');
    }
    stdout.writeln('');
  }

  // Warmup (not timed).
  _pass(samples, antlrToJson, skip: skip);
  _pass(samples, ppToJson, skip: skip);

  // Timed passes.
  final antlrPasses = <int>[];
  final ppPasses = <int>[];
  List<int> antlrPer = [], ppPer = [];
  for (var it = 0; it < iterations; it++) {
    final (at, ap) = _pass(samples, antlrToJson, skip: skip);
    final (pt, pp) = _pass(samples, ppToJson, skip: skip);
    antlrPasses.add(at);
    ppPasses.add(pt);
    antlrPer = ap;
    ppPer = pp;
    stdout.writeln('  pass ${it + 1}/$iterations  '
        'ANTLR ${_ms(at)} ms   petitparser ${_ms(pt)} ms');
  }
  stdout.writeln('');

  antlrPasses.sort();
  ppPasses.sort();
  final antlrMed = antlrPasses[antlrPasses.length ~/ 2];
  final ppMed = ppPasses[ppPasses.length ~/ 2];
  final timedMb = samples
          .asMap()
          .entries
          .where((e) => !skip.contains(e.key))
          .fold<int>(0, (s, e) => s + e.value.body.codeUnits.length) /
      (1024 * 1024);

  String tp(int micros) {
    final s = micros / 1e6;
    return '${(timedCount / s).toStringAsFixed(0)} files/s, '
        '${(timedMb / s).toStringAsFixed(1)} MB/s';
  }

  stdout.writeln('== Throughput (median of $iterations passes) ==');
  stdout.writeln('  ANTLR      : ${_ms(antlrMed)} ms   ${tp(antlrMed)}');
  stdout.writeln('  petitparser: ${_ms(ppMed)} ms   ${tp(ppMed)}');
  stdout.writeln('  speedup    : ${(antlrMed / ppMed).toStringAsFixed(2)}x '
      '(petitparser vs ANTLR)');
  stdout.writeln('');

  final antlrSorted = [...antlrPer.where((v) => v > 0)]..sort();
  final ppSorted = [...ppPer.where((v) => v > 0)]..sort();
  stdout.writeln('== Per-file latency (ms), last pass ==');
  stdout.writeln('  parser        p50     p90     p99     max');
  stdout.writeln('  ANTLR       '
      '${_pct(antlrSorted, .5).toStringAsFixed(2).padLeft(6)}  '
      '${_pct(antlrSorted, .9).toStringAsFixed(2).padLeft(6)}  '
      '${_pct(antlrSorted, .99).toStringAsFixed(2).padLeft(6)}  '
      '${(antlrSorted.last / 1000).toStringAsFixed(2).padLeft(6)}');
  stdout.writeln('  petitparser '
      '${_pct(ppSorted, .5).toStringAsFixed(2).padLeft(6)}  '
      '${_pct(ppSorted, .9).toStringAsFixed(2).padLeft(6)}  '
      '${_pct(ppSorted, .99).toStringAsFixed(2).padLeft(6)}  '
      '${(ppSorted.last / 1000).toStringAsFixed(2).padLeft(6)}');
  stdout.writeln('');

  // Slowest files per parser (surfaces pathological cases).
  void slowest(String label, List<int> per) {
    final idx = [
      for (var i = 0; i < per.length; i++)
        if (!skip.contains(i)) i
    ]..sort((a, b) => per[b].compareTo(per[a]));
    stdout.writeln('  $label slowest:');
    for (final i in idx.take(5)) {
      stdout.writeln('    ${_ms(per[i]).padLeft(8)} ms  ${samples[i].name}');
    }
  }

  stdout.writeln('== Slowest files (last pass) ==');
  slowest('ANTLR      ', antlrPer);
  slowest('petitparser', ppPer);
}
