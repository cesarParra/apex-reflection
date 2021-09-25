import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';

class ApexdocListener extends ApexdocParserBaseListener {
  var descriptionLines = <String>[];

  DocComment generatedDocComment = DocComment('');

  /// Description

  @override
  void enterDescriptionLineStart(DescriptionLineStartContext ctx) {
    var descriptionText = ctx.text;
    descriptionLines.add(_sanitizeLineStart(descriptionText));
  }

  @override
  void exitDescriptionLineStart(DescriptionLineStartContext ctx) {
    generatedDocComment.description = descriptionLines.join(' ');
  }

  // Block tag

  @override
  void enterBlockTag(BlockTagContext ctx) {
    final tagName = ctx.blockTagName().text;
    final tagContentLines = ctx
        .blockTagContents()
        .where((element) => element.blockTagText() != null)
        .map((e) => _sanitizeLineStart(e.blockTagText().text));
    final tagText = tagContentLines.join(' ').trimRight();
    if (tagName == 'param') {
      // @param tags are followed by the name of the param, so we extract that fist.
      final paramName = tagText.substring(0, tagText.indexOf(' '));
      final paramBody =
          tagText.substring(tagText.indexOf(' ') + 1, tagText.length);
      generatedDocComment.paramAnnotations
          .add(ParamDocCommentAnnotation(paramName, paramBody));
      return;
    }

    // @description or any other custom annotations
    generatedDocComment.annotations
        .add(DocCommentAnnotation(tagName, body: tagContentLines.join(' ')));
  }

  String _sanitizeLineStart(String line) {
    var sanitizedLine = line;
    if (sanitizedLine.startsWith('*')) {
      sanitizedLine = sanitizedLine.replaceFirst('*', '');
    }
    if (sanitizedLine.startsWith(' ')) {
      sanitizedLine = sanitizedLine.replaceFirst(' ', '');
    }
    return sanitizedLine;
  }
}
