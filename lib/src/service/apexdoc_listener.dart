import 'dart:convert';

import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';

class ApexdocListener extends ApexdocParserBaseListener {
  var descriptionLines = <String>[];

  DocComment generatedDocComment = DocComment('');

  /* Description */

  @override
  void enterDescriptionLine(DescriptionLineContext ctx) {
    var descriptionText = ctx.text;
    descriptionLines.add(_sanitizeLineStart(descriptionText));
  }

  @override
  void enterDescriptionNewline(DescriptionNewlineContext ctx) {
    descriptionLines.add('');
  }

  @override
  void exitDescriptionLine(DescriptionLineContext ctx) {
    generatedDocComment.descriptionLines = descriptionLines;
  }

  /* Block tag (annotations) */

  @override
  void enterDefaultBlockTag(DefaultBlockTagContext ctx) {
    final tagName = ctx.blockTagName()!.text;
    generatedDocComment.annotations.add(DocCommentAnnotation(
        tagName, _getContentLines(ctx.blockTagContents())));
  }

  @override
  void enterParamBlockTag(ParamBlockTagContext ctx) {
    final paramName = ctx.paramName()!.text;
    final contentLines = _getContentLines(ctx.blockTagContents());
    generatedDocComment.paramAnnotations
        .add(ParamDocCommentAnnotation(paramName, contentLines));
  }

  @override
  void enterReturnBlockTag(ReturnBlockTagContext ctx) {
    final contentLines = _getContentLines(ctx.blockTagContents());
    generatedDocComment.returnAnnotation =
        ReturnDocCommentAnnotation(contentLines);
  }

  @override
  void enterThrowsBlockTag(ThrowsBlockTagContext ctx) {
    final exceptionName = ctx.exceptionName()!.text;
    final contentLines = _getContentLines(ctx.blockTagContents());
    generatedDocComment.throwsAnnotations
        .add(ThrowsDocCommentAnnotation(exceptionName, contentLines));
  }

  @override
  void enterExampleBlockTag(ExampleBlockTagContext ctx) {
    final contentLines = _getContentLines(ctx.blockTagContents());
    generatedDocComment.exampleAnnotation =
        ExampleDocCommentAnnotation(contentLines);
  }

  List<String> _getContentLines(List<BlockTagContentContext> blockTagContents) {
    final contentLines = blockTagContents
        .map((e) => e.text)
        .map((e) => _sanitizeLineStart(e))
        .map((e) => LineSplitter.split(e)
            .map((e) => _sanitizeLineStart(e))
            .map((e) => e.trim())
            .join(''))
        .map((e) => e.trim())
        .toList();

    // if there are 2 consecutive empty lines, remove one
    for (var i = 0; i < contentLines.length - 1; i++) {
      if (contentLines[i].isEmpty && contentLines[i + 1].isEmpty) {
        contentLines.removeAt(i);
      }
    }

    // if the first line is empty, remove it
    if (contentLines.isNotEmpty && contentLines.first.isEmpty) {
      contentLines.removeAt(0);
    }

    // if the last line is empty, remove it
    if (contentLines.isNotEmpty && contentLines.last.isEmpty) {
      contentLines.removeLast();
    }

    print('about to return content lines $contentLines');
    return contentLines;
  }

  String _sanitizeLineStart(String line) {
    var sanitizedLine = line.trimLeft();
    if (sanitizedLine.startsWith('*')) {
      sanitizedLine = sanitizedLine.replaceFirst('*', '');
    }
    if (sanitizedLine.startsWith(' ')) {
      sanitizedLine = sanitizedLine.replaceFirst(' ', '');
    }
    return sanitizedLine.trimRight();
  }
}
