import 'package:petitparser/petitparser.dart';

import 'package:apex_reflection/src/model/doc_comment.dart';
import 'package:apex_reflection/src/model/multi_line_apex_doc_annotation.dart';

/// The Apexdoc doc-comment grammar.
///
/// Apexdoc is line-oriented rather than token-oriented: a doc comment is an
/// optional free-text description followed by a series of `@tag` block tags,
/// where each tag's content runs until the next `@tag` or the end of the
/// comment. A literal `@` inside running text does not start a tag when it is
/// protected inside backticks, an inline `{@link ...}`-style tag, or any
/// balanced `{ ... }` group. `{@hidden ...}` regions are dropped from the
/// output entirely.
///
/// [wrappedComment] matches a full `/** ... */` comment *including* the
/// delimiters. Because the wrapper is part of the grammar (instead of being
/// stripped by string preprocessing), this parser can be composed directly
/// into the Apex grammar and consume doc comments from the source stream in
/// the same single parse as the surrounding declarations.
class ApexdocGrammar {
  /// Matches a `/** ... */` doc comment and produces a [DocComment] whose
  /// `rawDeclaration` is the exact consumed source text.
  static final Parser<DocComment> wrappedComment = _buildWrappedComment();

  /// Matches bare doc content with no `/** */` delimiters. Only used when
  /// parsing a standalone doc string that arrives already unwrapped.
  static final Parser<DocComment> _bareContent =
      _buildContent(stopAtCommentClose: false).end();

  /// Parses a standalone doc-comment string, wrapped or not. Parse failures
  /// are reported on the returned [DocComment] rather than thrown, because a
  /// malformed doc comment should never abort reflection of the whole file.
  static DocComment parse(String body) {
    final trimmed = body.trim();
    final parser = trimmed.startsWith('/*') ? wrappedComment : _bareContent;
    final result = parser.parse(trimmed);
    if (result is Failure) {
      return DocComment.error(
          'Error parsing Apex doc. ${result.message} at ${result.position}');
    }
    return result.value;
  }

  static Parser<DocComment> _buildWrappedComment() {
    // `.token()` captures the exact consumed span, delimiters included, which
    // becomes the doc comment's rawDeclaration.
    return (string('/**') & _buildContent(stopAtCommentClose: true) & string('*/'))
        .map((values) => values[1] as DocComment)
        .token()
        .map((token) => token.value..rawDeclaration = token.input);
  }

  /// Doc content: a description run followed by block tags. When
  /// [stopAtCommentClose] is set the running text halts at `*/` so it never
  /// consumes the closing delimiter of a wrapped comment.
  static Parser<DocComment> _buildContent({required bool stopAtCommentClose}) {
    // A balanced `{ ... }` group protects everything inside it, which covers
    // inline tags such as `{@link ...}` and `{@code ...}`. Inside a wrapped
    // comment no protected region may cross `*/`: an unbalanced `{` in the
    // comment (say, a JSON example) must fall back to plain text instead of
    // swallowing the comment close and overrunning into the code after it.
    Parser guarded(Parser characters) => stopAtCommentClose
        ? (string('*/').not() & characters).map((values) => values[1])
        : characters;
    final braceGroup = undefined();
    braceGroup.set(
        char('{') & (braceGroup | guarded(pattern('^{}'))).star() & char('}'));

    // Backticked content also protects `@`; it cannot span lines.
    final backtickedSpan =
        char('`') & guarded(pattern('^`\n\r')).star() & char('`');

    // One unit of running text: a protected region or a single character that
    // is not `@` (an unprotected `@` always ends the current run because it
    // may start a block tag).
    final plainCharacter = stopAtCommentClose
        ? (string('*/').not() & pattern('^@')).map((values) => values[1] as String)
        : pattern('^@');
    final segment = braceGroup.flatten().map(_dropHiddenRegion) |
        backtickedSpan.flatten() |
        plainCharacter;

    final textRun = segment.star().map((parts) => parts.join());
    final tagName = pattern('a-zA-Z0-9\$_-').plus().flatten();
    final blockTag = (char('@') & tagName & textRun)
        .map((values) => _BlockTag(values[1] as String, values[2] as String));

    return (textRun & blockTag.star()).map((values) {
      final description = values[0] as String;
      final tags = (values[1] as List).cast<_BlockTag>();
      return _buildDocComment(description, tags);
    });
  }

  static String _dropHiddenRegion(String braceGroupText) {
    return RegExp(r'^\{@hidden', caseSensitive: false).hasMatch(braceGroupText)
        ? ''
        : braceGroupText;
  }

  static DocComment _buildDocComment(String description, List<_BlockTag> tags) {
    final docComment = DocComment.withLines(sanitizeDocContent(description));

    for (final tag in tags) {
      switch (tag.name.toLowerCase()) {
        case 'param':
          final (parameterName, content) = _splitLeadingName(tag.content);
          docComment.paramAnnotations.add(ParamDocCommentAnnotation(
              parameterName, sanitizeDocContent(content)));
        case 'throws' || 'exception':
          final (exceptionName, content) = _splitLeadingName(tag.content);
          docComment.throwsAnnotations.add(ThrowsDocCommentAnnotation(
              exceptionName, sanitizeDocContent(content)));
        // `@returns` is a pervasive JSDoc-ism; honoring it as an alias keeps
        // the author's clear intent instead of demoting it to an unknown tag.
        case 'return' || 'returns':
          docComment.returnAnnotation =
              ReturnDocCommentAnnotation(sanitizeDocContent(tag.content));
        case 'example':
          docComment.exampleAnnotation =
              ExampleDocCommentAnnotation(sanitizeDocContent(tag.content));
        default:
          docComment.annotations.add(
              DocCommentAnnotation(tag.name, sanitizeDocContent(tag.content)));
      }
    }
    return docComment;
  }

  /// Splits a block tag's content into its leading name token (the parameter
  /// or exception name) and the remaining content. The name is a full
  /// type-like token: a dotted identifier, optionally followed by balanced
  /// `<...>` type arguments and `[]` array suffixes, so `@throws System.Ex`
  /// names `System.Ex` and `@param Map<Id, Foo> x` names `Map<Id, Foo>`. An
  /// unbalanced `<` (a comparison, say) is not part of the name.
  static (String, String) _splitLeadingName(String content) {
    final trimmed = content.trimLeft();
    final match =
        RegExp(r'^[A-Za-z0-9$_-]+(?:\.[A-Za-z0-9$_-]+)*').firstMatch(trimmed);
    if (match == null) {
      return ('', '');
    }
    var end = match.end;
    if (end < trimmed.length && trimmed[end] == '<') {
      var depth = 0;
      var position = end;
      while (position < trimmed.length) {
        final character = trimmed[position];
        if (character == '<') {
          depth++;
        } else if (character == '>') {
          depth--;
          if (depth == 0) {
            end = position + 1;
            break;
          }
        }
        position++;
      }
    }
    while (trimmed.startsWith('[]', end)) {
      end += 2;
    }
    return (trimmed.substring(0, end), trimmed.substring(end));
  }
}

/// An `@tag` block tag as read from the doc comment: its name and everything
/// up to the next tag or the end of the comment.
class _BlockTag {
  final String name;
  final String content;

  _BlockTag(this.name, this.content);
}
