import 'dart:convert';

import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';

class ApexdocListener extends ApexdocParserBaseListener {
  var descriptionLines = <String>[];

  DocComment generatedDocComment = DocComment('');

  /* Description */

  @override
  void enterDescriptionLineStart(DescriptionLineStartContext ctx) {
    var descriptionText = ctx.text;
    descriptionLines.add(_sanitizeLineStart(descriptionText));
  }

  @override
  void exitDescriptionLineStart(DescriptionLineStartContext ctx) {
    generatedDocComment.descriptionLines = descriptionLines;
  }

  /* Block tag (annotations) */

  @override
  void enterDefaultBlockTag(DefaultBlockTagContext ctx) {
    final tagName = ctx.blockTagName().text;
    generatedDocComment.annotations.add(DocCommentAnnotation(
        tagName, _getContentLines(ctx.blockTagContents())));
  }

  @override
  void enterParamBlockTag(ParamBlockTagContext ctx) {
    final paramName = ctx.paramName().text;
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
    final exceptionName = ctx.exceptionName().text;
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
    final rawContent = blockTagContents.map((e) => e.text).join('');
    return LineSplitter.split(rawContent)
        .map((e) => _sanitizeLineStart(e))
        .where((element) => element.isNotEmpty)
        .toList();
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
