// Generated from lib/src/antlr/grammars/apexdoc/ApexdocParser.g4 by ANTLR 4.9.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'ApexdocParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [ApexdocParser].
abstract class ApexdocParserListener extends ParseTreeListener {
  /// Enter a parse tree produced by [ApexdocParser.documentation].
  /// [ctx] the parse tree
  void enterDocumentation(DocumentationContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.documentation].
  /// [ctx] the parse tree
  void exitDocumentation(DocumentationContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.documentationContent].
  /// [ctx] the parse tree
  void enterDocumentationContent(DocumentationContentContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.documentationContent].
  /// [ctx] the parse tree
  void exitDocumentationContent(DocumentationContentContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.description].
  /// [ctx] the parse tree
  void enterDescription(DescriptionContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.description].
  /// [ctx] the parse tree
  void exitDescription(DescriptionContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.descriptionLine].
  /// [ctx] the parse tree
  void enterDescriptionLine(DescriptionLineContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.descriptionLine].
  /// [ctx] the parse tree
  void exitDescriptionLine(DescriptionLineContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.descriptionLineStart].
  /// [ctx] the parse tree
  void enterDescriptionLineStart(DescriptionLineStartContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.descriptionLineStart].
  /// [ctx] the parse tree
  void exitDescriptionLineStart(DescriptionLineStartContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.descriptionLineNoSpaceNoAt].
  /// [ctx] the parse tree
  void enterDescriptionLineNoSpaceNoAt(DescriptionLineNoSpaceNoAtContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.descriptionLineNoSpaceNoAt].
  /// [ctx] the parse tree
  void exitDescriptionLineNoSpaceNoAt(DescriptionLineNoSpaceNoAtContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.descriptionLineElement].
  /// [ctx] the parse tree
  void enterDescriptionLineElement(DescriptionLineElementContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.descriptionLineElement].
  /// [ctx] the parse tree
  void exitDescriptionLineElement(DescriptionLineElementContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.descriptionLineText].
  /// [ctx] the parse tree
  void enterDescriptionLineText(DescriptionLineTextContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.descriptionLineText].
  /// [ctx] the parse tree
  void exitDescriptionLineText(DescriptionLineTextContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.descriptionNewline].
  /// [ctx] the parse tree
  void enterDescriptionNewline(DescriptionNewlineContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.descriptionNewline].
  /// [ctx] the parse tree
  void exitDescriptionNewline(DescriptionNewlineContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.blockTag].
  /// [ctx] the parse tree
  void enterBlockTag(BlockTagContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.blockTag].
  /// [ctx] the parse tree
  void exitBlockTag(BlockTagContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.tagSection].
  /// [ctx] the parse tree
  void enterTagSection(TagSectionContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.tagSection].
  /// [ctx] the parse tree
  void exitTagSection(TagSectionContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.blockTagName].
  /// [ctx] the parse tree
  void enterBlockTagName(BlockTagNameContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.blockTagName].
  /// [ctx] the parse tree
  void exitBlockTagName(BlockTagNameContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.blockTagContent].
  /// [ctx] the parse tree
  void enterBlockTagContent(BlockTagContentContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.blockTagContent].
  /// [ctx] the parse tree
  void exitBlockTagContent(BlockTagContentContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.blockTagText].
  /// [ctx] the parse tree
  void enterBlockTagText(BlockTagTextContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.blockTagText].
  /// [ctx] the parse tree
  void exitBlockTagText(BlockTagTextContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.blockTagTextElement].
  /// [ctx] the parse tree
  void enterBlockTagTextElement(BlockTagTextElementContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.blockTagTextElement].
  /// [ctx] the parse tree
  void exitBlockTagTextElement(BlockTagTextElementContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.inlineTag].
  /// [ctx] the parse tree
  void enterInlineTag(InlineTagContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.inlineTag].
  /// [ctx] the parse tree
  void exitInlineTag(InlineTagContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.inlineTagName].
  /// [ctx] the parse tree
  void enterInlineTagName(InlineTagNameContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.inlineTagName].
  /// [ctx] the parse tree
  void exitInlineTagName(InlineTagNameContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.inlineTagContent].
  /// [ctx] the parse tree
  void enterInlineTagContent(InlineTagContentContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.inlineTagContent].
  /// [ctx] the parse tree
  void exitInlineTagContent(InlineTagContentContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.braceExpression].
  /// [ctx] the parse tree
  void enterBraceExpression(BraceExpressionContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.braceExpression].
  /// [ctx] the parse tree
  void exitBraceExpression(BraceExpressionContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.braceContent].
  /// [ctx] the parse tree
  void enterBraceContent(BraceContentContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.braceContent].
  /// [ctx] the parse tree
  void exitBraceContent(BraceContentContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.skipWhitespace].
  /// [ctx] the parse tree
  void enterSkipWhitespace(SkipWhitespaceContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.skipWhitespace].
  /// [ctx] the parse tree
  void exitSkipWhitespace(SkipWhitespaceContext ctx);

  /// Enter a parse tree produced by [ApexdocParser.braceText].
  /// [ctx] the parse tree
  void enterBraceText(BraceTextContext ctx);
  /// Exit a parse tree produced by [ApexdocParser.braceText].
  /// [ctx] the parse tree
  void exitBraceText(BraceTextContext ctx);
}