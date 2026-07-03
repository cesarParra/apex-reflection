import 'package:petitparser/petitparser.dart';

import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/multi_line_apex_doc_annotation.dart';

/// A petitparser-based replacement for the ANTLR ApexdocParser.
///
/// The Apexdoc "grammar" is fundamentally line-oriented: an optional
/// description followed by a series of `@tag` block tags. Embedded `@`
/// characters are protected when they live inside backticks, inline
/// `{@link ...}` tags, or balanced `{ ... }` groups. `{@hidden ...}` regions
/// are dropped entirely (they used to live on ANTLR's HIDDEN channel).
///
/// The heavy lifting of whitespace / leading-star normalisation is delegated
/// to [sanitizeDocContent], exactly as the ANTLR listener did, so the produced
/// [DocComment] is identical.
class ApexdocPpParser {
  static final Parser<DocComment> _parser = _buildParser();

  static DocComment parse(String body) {
    final stripped = _stripWrapper(body.trim());
    final result = _parser.parse(stripped);
    if (result is Failure) {
      return DocComment.error(
          'Error parsing Apex doc. ${result.message} at ${result.position}');
    }
    return result.value;
  }

  /// Removes the `/** ... */` (or block-style `/***** ... *****/`) wrapper.
  /// ponytail: string strip instead of a grammar rule for the wrapper — the
  /// stars carry no structure, [sanitizeDocContent] discards them anyway.
  static String _stripWrapper(String s) {
    if (!s.startsWith('/*')) return s;
    return s
        .replaceFirst(RegExp(r'^/\*+'), '')
        .replaceFirst(RegExp(r'\s*\*+/\s*$'), '');
  }

  static Parser<DocComment> _buildParser() {
    // Balanced `{ ... }` group (covers inline tags like `{@link}` / `{@code}`).
    final braceGroup = undefined();
    braceGroup.set(
        (char('{') & (braceGroup | pattern('^{}')).star() & char('}')));

    // `` `...` `` ticked content — no newlines allowed inside.
    final tick = char('`') & pattern('^`\n\r').star() & char('`');

    // One unit of running text: a protected region or a single non-`@` char.
    // `@` is never consumed here, so it always ends the current run and (maybe)
    // starts a new block tag.
    final segment = (braceGroup.flatten().map(_stripHidden)) |
        tick.flatten() |
        pattern('^@');

    final run = segment.star().map((parts) => parts.join());

    final tagName = pattern('a-zA-Z0-9\$_-').plus().flatten();
    final tag = (char('@') & tagName & run).map((v) => _Tag(v[1] as String, v[2] as String));

    return (run & tag.star()).end().map((v) {
      final description = v[0] as String;
      final tags = (v[1] as List).cast<_Tag>();
      return _build(description, tags);
    });
  }

  static String _stripHidden(String braceText) {
    return RegExp(r'^\{@hidden', caseSensitive: false).hasMatch(braceText)
        ? ''
        : braceText;
  }

  static DocComment _build(String description, List<_Tag> tags) {
    final descriptionLines = sanitizeDocContent(description);
    final doc = DocComment.withLines(descriptionLines);

    for (final tag in tags) {
      final name = tag.name.toLowerCase();
      switch (name) {
        case 'param':
          final (first, rest) = _splitFirstWord(tag.body);
          doc.paramAnnotations
              .add(ParamDocCommentAnnotation(first, sanitizeDocContent(rest)));
          break;
        case 'throws':
        case 'exception':
          final (first, rest) = _splitFirstWord(tag.body);
          doc.throwsAnnotations.add(
              ThrowsDocCommentAnnotation(first, sanitizeDocContent(rest)));
          break;
        case 'return':
          doc.returnAnnotation =
              ReturnDocCommentAnnotation(sanitizeDocContent(tag.body));
          break;
        case 'example':
          doc.exampleAnnotation =
              ExampleDocCommentAnnotation(sanitizeDocContent(tag.body));
          break;
        default:
          doc.annotations
              .add(DocCommentAnnotation(tag.name, sanitizeDocContent(tag.body)));
      }
    }
    return doc;
  }

  /// Splits the block-tag body into (first token, remainder). Used for the
  /// param name / exception name, which the grammar captures as the first
  /// text element followed by the rest of the content.
  static (String, String) _splitFirstWord(String body) {
    final trimmed = body.trimLeft();
    final match = RegExp(r'^\S+').firstMatch(trimmed);
    if (match == null) return ('', '');
    final first = match.group(0)!;
    final rest = trimmed.substring(first.length);
    return (first, rest);
  }
}

class _Tag {
  final String name;
  final String body;

  _Tag(this.name, this.body);
}
