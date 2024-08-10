import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParser.dart';
import 'package:apexdocs_dart/src/antlr/lib/apexdoc/ApexdocParserBaseListener.dart';
import 'package:apexdocs_dart/src/model/doc_comment.dart';
import 'package:apexdocs_dart/src/model/multi_line_apex_doc_annotation.dart';

class ApexdocListener extends ApexdocParserBaseListener {
  var descriptionLines = <String>[];

  DocComment generatedDocComment = DocComment('');

  /* Description */

  @override
  void enterDescriptionLine(DescriptionLineContext ctx) {
    var descriptionText = ctx.text;
    descriptionLines.add(sanitizeLineStart(descriptionText));
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
        tagName, ctx.blockTagContent().sanitize()));
  }

  @override
  void enterParamBlockTag(ParamBlockTagContext ctx) {
    final paramName = ctx.paramName()!.text;
    final contentLines = ctx.blockTagContent().sanitize();
    generatedDocComment.paramAnnotations
        .add(ParamDocCommentAnnotation(paramName, contentLines));
  }

  @override
  void enterReturnBlockTag(ReturnBlockTagContext ctx) {
    final contentLines = ctx.blockTagContent().sanitize();
    generatedDocComment.returnAnnotation =
        ReturnDocCommentAnnotation(contentLines);
  }

  @override
  void enterThrowsBlockTag(ThrowsBlockTagContext ctx) {
    final exceptionName = ctx.exceptionName()!.text;
    final contentLines = ctx.blockTagContent().sanitize();
    generatedDocComment.throwsAnnotations
        .add(ThrowsDocCommentAnnotation(exceptionName, contentLines));
  }

  @override
  void enterExampleBlockTag(ExampleBlockTagContext ctx) {
    final contentLines = ctx.blockTagContent().sanitize();
    generatedDocComment.exampleAnnotation =
        ExampleDocCommentAnnotation(contentLines);
  }
}

extension on BlockTagContentContext? {
  List<String> sanitize() {
    return sanitizeDocContent(this?.text ?? '');
  }
}
