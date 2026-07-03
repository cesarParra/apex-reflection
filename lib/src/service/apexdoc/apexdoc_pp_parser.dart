import 'package:petitparser/petitparser.dart';

import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/multi_line_apex_doc_annotation.dart';

/// petitparser Apexdoc grammar, exposed as composable [Parser]s.
///
/// The Apexdoc "grammar" is line-oriented: an optional description followed by a
/// series of `@tag` block tags. Embedded `@` characters are protected inside
/// backticks, inline `{@link ...}` tags, or balanced `{ ... }` groups.
/// `{@hidden ...}` regions are dropped entirely.
///
/// [wrapped] matches a full `/** ... */` (or block-style) doc comment
/// *in-grammar* — the wrapper is part of the parser, not stripped by string
/// preprocessing — so it can be **composed directly into the Apex grammar** and
/// consume the doc comment from the source stream in the same single parse.
/// [sanitizeDocContent] still does whitespace / leading-star normalisation, so
/// the produced [DocComment] is identical to the ANTLR one.
class ApexdocPpParser {
  /// Matches a wrapped `/** ... */` doc comment, producing a [DocComment] with
  /// `rawDeclaration` set to the exact consumed text. Composed into the Apex
  /// parser; also used for wrapped standalone input.
  static final Parser<DocComment> wrapped = _buildWrapped();

  /// Bare content (no `/** */` wrapper) — standalone fallback only.
  static final Parser<DocComment> _bare = _buildBare();

  /// Standalone entry point (e.g. the legacy `ApexdocParser.parseFromBody`).
  static DocComment parse(String body) {
    final trimmed = body.trim();
    final parser = trimmed.startsWith('/*') ? wrapped : _bare;
    final result = parser.parse(trimmed);
    if (result is Failure) {
      return DocComment.error(
          'Error parsing Apex doc. ${result.message} at ${result.position}');
    }
    return result.value;
  }

  // ---- Shared grammar pieces --------------------------------------------

  /// Content run + block tags → DocComment. `stopAtClose` makes the run halt at
  /// a `*/` (the wrapper close) so it never eats the closing delimiter.
  static Parser<DocComment> _content({required bool stopAtClose}) {
    // Balanced `{ ... }` group (covers inline tags like `{@link}` / `{@code}`).
    final braceGroup = undefined();
    braceGroup.set(char('{') & (braceGroup | pattern('^{}')).star() & char('}'));

    // `` `...` `` ticked content — no newlines allowed inside.
    final tick = char('`') & pattern('^`\n\r').star() & char('`');

    // One unit of running text: a protected region or a single non-`@` char.
    // `@` always ends the current run (and maybe starts a block tag); when
    // [stopAtClose] is set, an upcoming `*/` ends it too.
    final plainChar = stopAtClose
        ? (string('*/').not() & pattern('^@')).map((v) => v[1] as String)
        : pattern('^@');
    final segment =
        braceGroup.flatten().map(_stripHidden) | tick.flatten() | plainChar;

    final run = segment.star().map((parts) => parts.join());
    final tagName = pattern('a-zA-Z0-9\$_-').plus().flatten();
    final tag =
        (char('@') & tagName & run).map((v) => _Tag(v[1] as String, v[2] as String));

    return (run & tag.star()).map((v) {
      final description = v[0] as String;
      final tags = (v[1] as List).cast<_Tag>();
      return _build(description, tags);
    });
  }

  static Parser<DocComment> _buildWrapped() {
    final open = string('/**');
    final close = string('*/');
    // `.token()` captures the exact consumed span for `rawDeclaration`.
    return (open & _content(stopAtClose: true) & close)
        .map((v) => v[1] as DocComment)
        .token()
        .map((t) => t.value..rawDeclaration = t.input);
  }

  static Parser<DocComment> _buildBare() => _content(stopAtClose: false).end();

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

  /// Splits the block-tag body into (first token, remainder) — the param /
  /// exception name followed by the rest of the content.
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
