// Generated from lib/src/antlr/grammars/apexdoc/ApexdocParser.g4 by ANTLR 4.9.3
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'ApexdocParserListener.dart';
import 'ApexdocParserBaseListener.dart';
const int RULE_documentation = 0, RULE_documentationContent = 1, RULE_description = 2, 
          RULE_descriptionLine = 3, RULE_descriptionLineStart = 4, RULE_descriptionLineNoSpaceNoAt = 5, 
          RULE_descriptionLineElement = 6, RULE_descriptionLineText = 7, 
          RULE_descriptionNewline = 8, RULE_tagSection = 9, RULE_blockTag = 10, 
          RULE_paramName = 11, RULE_exceptionName = 12, RULE_blockTagName = 13, 
          RULE_blockTagContent = 14, RULE_blockTagText = 15, RULE_blockTagTextElement = 16, 
          RULE_inlineTag = 17, RULE_inlineTagName = 18, RULE_inlineTagContent = 19, 
          RULE_braceExpression = 20, RULE_braceContent = 21, RULE_skipWhitespace = 22, 
          RULE_braceText = 23;
class ApexdocParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.9.3', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_PARAM = 1, TOKEN_RETURN = 2, TOKEN_EXAMPLE = 3, 
                   TOKEN_THROWS = 4, TOKEN_EXCEPTION = 5, TOKEN_NAME = 6, 
                   TOKEN_JavaLetterOrDigit = 7, TOKEN_NEWLINE = 8, TOKEN_SPACE = 9, 
                   TOKEN_TEXT_CONTENT = 10, TOKEN_TICKED_CONTENT = 11, TOKEN_CODE_BLOCK = 12, 
                   TOKEN_AT = 13, TOKEN_STAR = 14, TOKEN_SLASH = 15, TOKEN_DOT = 16, 
                   TOKEN_TICK = 17, TOKEN_JAVADOC_START = 18, TOKEN_JAVADOC_END = 19, 
                   TOKEN_INLINE_TAG_START = 20, TOKEN_BRACE_OPEN = 21, TOKEN_BRACE_CLOSE = 22;

  @override
  final List<String> ruleNames = [
    'documentation', 'documentationContent', 'description', 'descriptionLine', 
    'descriptionLineStart', 'descriptionLineNoSpaceNoAt', 'descriptionLineElement', 
    'descriptionLineText', 'descriptionNewline', 'tagSection', 'blockTag', 
    'paramName', 'exceptionName', 'blockTagName', 'blockTagContent', 'blockTagText', 
    'blockTagTextElement', 'inlineTag', 'inlineTagName', 'inlineTagContent', 
    'braceExpression', 'braceContent', 'skipWhitespace', 'braceText'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, null, null, null, null, null, null, null, null, null, null, 
      null, null, "'@'", "'*'", "'/'", "'.'", "'`'", null, null, "'{@'", 
      "'{'", "'}'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "PARAM", "RETURN", "EXAMPLE", "THROWS", "EXCEPTION", "NAME", 
      "JavaLetterOrDigit", "NEWLINE", "SPACE", "TEXT_CONTENT", "TICKED_CONTENT", 
      "CODE_BLOCK", "AT", "STAR", "SLASH", "DOT", "TICK", "JAVADOC_START", 
      "JAVADOC_END", "INLINE_TAG_START", "BRACE_OPEN", "BRACE_CLOSE"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'ApexdocParser.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  ApexdocParser(super.input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  DocumentationContext documentation() {
    dynamic localctx = DocumentationContext(context, state);
    enterRule(localctx, 0, RULE_documentation);
    try {
      int alt;
      state = 69;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(localctx, 1);
        state = 48;
        match(TOKEN_EOF);
        break;
      case 2:
        enterOuterAlt(localctx, 2);
        state = 49;
        match(TOKEN_JAVADOC_START);
        state = 53;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 0, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 50;
            skipWhitespace(); 
          }
          state = 55;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 0, context);
        }
        state = 56;
        documentationContent();
        state = 57;
        match(TOKEN_JAVADOC_END);
        state = 58;
        match(TOKEN_EOF);
        break;
      case 3:
        enterOuterAlt(localctx, 3);
        state = 63;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 1, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 60;
            skipWhitespace(); 
          }
          state = 65;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 1, context);
        }
        state = 66;
        documentationContent();
        state = 67;
        match(TOKEN_EOF);
        break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DocumentationContentContext documentationContent() {
    dynamic localctx = DocumentationContentContext(context, state);
    enterRule(localctx, 2, RULE_documentationContent);
    int la;
    try {
      int alt;
      state = 100;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(localctx, 1);
        state = 71;
        description();
        state = 75;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        while (la == TOKEN_NEWLINE || la == TOKEN_SPACE) {
          state = 72;
          skipWhitespace();
          state = 77;
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
        }
        break;
      case 2:
        enterOuterAlt(localctx, 2);
        state = 81;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 4, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 78;
            skipWhitespace(); 
          }
          state = 83;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 4, context);
        }
        state = 84;
        tagSection();
        break;
      case 3:
        enterOuterAlt(localctx, 3);
        state = 85;
        description();
        state = 89;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 86;
            match(TOKEN_NEWLINE); 
          }
          state = 91;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        }
        state = 95;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 92;
            skipWhitespace(); 
          }
          state = 97;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        }
        state = 98;
        tagSection();
        break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionContext description() {
    dynamic localctx = DescriptionContext(context, state);
    enterRule(localctx, 4, RULE_description);
    int la;
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 102;
      descriptionLine();
      state = 112;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 9, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 104; 
          errorHandler.sync(this);
          la = tokenStream.LA(1)!;
          do {
            state = 103;
            descriptionNewline();
            state = 106; 
            errorHandler.sync(this);
            la = tokenStream.LA(1)!;
          } while (la == TOKEN_NEWLINE);
          state = 108;
          descriptionLine(); 
        }
        state = 114;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 9, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionLineContext descriptionLine() {
    dynamic localctx = DescriptionLineContext(context, state);
    enterRule(localctx, 6, RULE_descriptionLine);
    try {
      int alt;
      state = 129;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
      case 1:
        enterOuterAlt(localctx, 1);
        state = 115;
        descriptionLineStart();
        state = 119;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 116;
            descriptionLineElement(); 
          }
          state = 121;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        }
        break;
      case 2:
        enterOuterAlt(localctx, 2);
        state = 122;
        inlineTag();
        state = 126;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 123;
            descriptionLineElement(); 
          }
          state = 128;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        }
        break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionLineStartContext descriptionLineStart() {
    dynamic localctx = DescriptionLineStartContext(context, state);
    enterRule(localctx, 8, RULE_descriptionLineStart);
    int la;
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 132;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if (la == TOKEN_SPACE) {
        state = 131;
        match(TOKEN_SPACE);
      }

      state = 135; 
      errorHandler.sync(this);
      alt = 1;
      do {
        switch (alt) {
        case 1:
          state = 134;
          descriptionLineNoSpaceNoAt();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 137; 
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      } while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER);
      state = 143;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 16, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 141;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_NAME:
          case TOKEN_TEXT_CONTENT:
          case TOKEN_TICKED_CONTENT:
          case TOKEN_STAR:
          case TOKEN_SLASH:
          case TOKEN_INLINE_TAG_START:
          case TOKEN_BRACE_OPEN:
          case TOKEN_BRACE_CLOSE:
            state = 139;
            descriptionLineNoSpaceNoAt();
            break;
          case TOKEN_SPACE:
            state = 140;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          } 
        }
        state = 145;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 16, context);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionLineNoSpaceNoAtContext descriptionLineNoSpaceNoAt() {
    dynamic localctx = DescriptionLineNoSpaceNoAtContext(context, state);
    enterRule(localctx, 10, RULE_descriptionLineNoSpaceNoAt);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 146;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_TICKED_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_INLINE_TAG_START) | (BigInt.one << TOKEN_BRACE_OPEN) | (BigInt.one << TOKEN_BRACE_CLOSE))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionLineElementContext descriptionLineElement() {
    dynamic localctx = DescriptionLineElementContext(context, state);
    enterRule(localctx, 12, RULE_descriptionLineElement);
    try {
      state = 150;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 17, context)) {
      case 1:
        enterOuterAlt(localctx, 1);
        state = 148;
        inlineTag();
        break;
      case 2:
        enterOuterAlt(localctx, 2);
        state = 149;
        descriptionLineText();
        break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionLineTextContext descriptionLineText() {
    dynamic localctx = DescriptionLineTextContext(context, state);
    enterRule(localctx, 14, RULE_descriptionLineText);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 154; 
      errorHandler.sync(this);
      alt = 1;
      do {
        switch (alt) {
        case 1:
          state = 154;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_NAME:
          case TOKEN_TEXT_CONTENT:
          case TOKEN_TICKED_CONTENT:
          case TOKEN_STAR:
          case TOKEN_SLASH:
          case TOKEN_INLINE_TAG_START:
          case TOKEN_BRACE_OPEN:
          case TOKEN_BRACE_CLOSE:
            state = 152;
            descriptionLineNoSpaceNoAt();
            break;
          case TOKEN_SPACE:
            state = 153;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 156; 
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 19, context);
      } while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  DescriptionNewlineContext descriptionNewline() {
    dynamic localctx = DescriptionNewlineContext(context, state);
    enterRule(localctx, 16, RULE_descriptionNewline);
    try {
      enterOuterAlt(localctx, 1);
      state = 158;
      match(TOKEN_NEWLINE);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  TagSectionContext tagSection() {
    dynamic localctx = TagSectionContext(context, state);
    enterRule(localctx, 18, RULE_tagSection);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 163;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while ((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_PARAM) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_EXAMPLE) | (BigInt.one << TOKEN_THROWS) | (BigInt.one << TOKEN_EXCEPTION) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_AT))) != BigInt.zero)) {
        state = 160;
        blockTag();
        state = 165;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BlockTagContext blockTag() {
    dynamic localctx = BlockTagContext(context, state);
    enterRule(localctx, 20, RULE_blockTag);
    int la;
    try {
      int alt;
      state = 261;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
      case 1:
        localctx = ParamBlockTagContext(localctx);
        enterOuterAlt(localctx, 1);
        state = 167;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        if (la == TOKEN_SPACE) {
          state = 166;
          match(TOKEN_SPACE);
        }

        state = 169;
        match(TOKEN_PARAM);
        state = 173;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 170;
            match(TOKEN_SPACE); 
          }
          state = 175;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        }
        state = 176;
        paramName();
        state = 180;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 23, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 177;
            match(TOKEN_SPACE); 
          }
          state = 182;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 23, context);
        }
        state = 186;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 183;
            blockTagContent(); 
          }
          state = 188;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        }
        break;
      case 2:
        localctx = ThrowsBlockTagContext(localctx);
        enterOuterAlt(localctx, 2);
        state = 190;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        if (la == TOKEN_SPACE) {
          state = 189;
          match(TOKEN_SPACE);
        }

        state = 192;
        la = tokenStream.LA(1)!;
        if (!(la == TOKEN_THROWS || la == TOKEN_EXCEPTION)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 196;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 26, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 193;
            match(TOKEN_SPACE); 
          }
          state = 198;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 26, context);
        }
        state = 199;
        exceptionName();
        state = 203;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 200;
            match(TOKEN_SPACE); 
          }
          state = 205;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        }
        state = 209;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 206;
            blockTagContent(); 
          }
          state = 211;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        }
        break;
      case 3:
        localctx = ReturnBlockTagContext(localctx);
        enterOuterAlt(localctx, 3);
        state = 213;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        if (la == TOKEN_SPACE) {
          state = 212;
          match(TOKEN_SPACE);
        }

        state = 215;
        match(TOKEN_RETURN);
        state = 219;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 216;
            match(TOKEN_SPACE); 
          }
          state = 221;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        }
        state = 225;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 31, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 222;
            blockTagContent(); 
          }
          state = 227;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 31, context);
        }
        break;
      case 4:
        localctx = ExampleBlockTagContext(localctx);
        enterOuterAlt(localctx, 4);
        state = 229;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        if (la == TOKEN_SPACE) {
          state = 228;
          match(TOKEN_SPACE);
        }

        state = 231;
        match(TOKEN_EXAMPLE);
        state = 235;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 232;
            skipWhitespace(); 
          }
          state = 237;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        }
        state = 241;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 34, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 238;
            blockTagContent(); 
          }
          state = 243;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 34, context);
        }
        break;
      case 5:
        localctx = DefaultBlockTagContext(localctx);
        enterOuterAlt(localctx, 5);
        state = 245;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
        if (la == TOKEN_SPACE) {
          state = 244;
          match(TOKEN_SPACE);
        }

        state = 247;
        match(TOKEN_AT);
        state = 248;
        blockTagName();
        state = 252;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 36, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 249;
            match(TOKEN_SPACE); 
          }
          state = 254;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 36, context);
        }
        state = 258;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 37, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 255;
            blockTagContent(); 
          }
          state = 260;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 37, context);
        }
        break;
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ParamNameContext paramName() {
    dynamic localctx = ParamNameContext(context, state);
    enterRule(localctx, 22, RULE_paramName);
    try {
      enterOuterAlt(localctx, 1);
      state = 263;
      blockTagTextElement();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  ExceptionNameContext exceptionName() {
    dynamic localctx = ExceptionNameContext(context, state);
    enterRule(localctx, 24, RULE_exceptionName);
    try {
      enterOuterAlt(localctx, 1);
      state = 265;
      blockTagTextElement();
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BlockTagNameContext blockTagName() {
    dynamic localctx = BlockTagNameContext(context, state);
    enterRule(localctx, 26, RULE_blockTagName);
    try {
      enterOuterAlt(localctx, 1);
      state = 267;
      match(TOKEN_NAME);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BlockTagContentContext blockTagContent() {
    dynamic localctx = BlockTagContentContext(context, state);
    enterRule(localctx, 28, RULE_blockTagContent);
    try {
      state = 271;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_NAME:
      case TOKEN_NEWLINE:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_TICKED_CONTENT:
      case TOKEN_CODE_BLOCK:
      case TOKEN_STAR:
      case TOKEN_SLASH:
      case TOKEN_BRACE_OPEN:
      case TOKEN_BRACE_CLOSE:
        enterOuterAlt(localctx, 1);
        state = 269;
        blockTagText();
        break;
      case TOKEN_INLINE_TAG_START:
        enterOuterAlt(localctx, 2);
        state = 270;
        inlineTag();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BlockTagTextContext blockTagText() {
    dynamic localctx = BlockTagTextContext(context, state);
    enterRule(localctx, 30, RULE_blockTagText);
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 274; 
      errorHandler.sync(this);
      alt = 1;
      do {
        switch (alt) {
        case 1:
          state = 273;
          blockTagTextElement();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 276; 
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 40, context);
      } while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BlockTagTextElementContext blockTagTextElement() {
    dynamic localctx = BlockTagTextElementContext(context, state);
    enterRule(localctx, 32, RULE_blockTagTextElement);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 278;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_TICKED_CONTENT) | (BigInt.one << TOKEN_CODE_BLOCK) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN) | (BigInt.one << TOKEN_BRACE_CLOSE))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  InlineTagContext inlineTag() {
    dynamic localctx = InlineTagContext(context, state);
    enterRule(localctx, 34, RULE_inlineTag);
    int la;
    try {
      int alt;
      enterOuterAlt(localctx, 1);
      state = 280;
      match(TOKEN_INLINE_TAG_START);
      state = 281;
      inlineTagName();
      state = 285;
      errorHandler.sync(this);
      alt = interpreter!.adaptivePredict(tokenStream, 41, context);
      while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
        if (alt == 1) {
          state = 282;
          match(TOKEN_SPACE); 
        }
        state = 287;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 41, context);
      }
      state = 289;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      if ((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_AT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN))) != BigInt.zero)) {
        state = 288;
        inlineTagContent();
      }

      state = 291;
      match(TOKEN_BRACE_CLOSE);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  InlineTagNameContext inlineTagName() {
    dynamic localctx = InlineTagNameContext(context, state);
    enterRule(localctx, 36, RULE_inlineTagName);
    try {
      enterOuterAlt(localctx, 1);
      state = 293;
      match(TOKEN_NAME);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  InlineTagContentContext inlineTagContent() {
    dynamic localctx = InlineTagContentContext(context, state);
    enterRule(localctx, 38, RULE_inlineTagContent);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 296; 
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      do {
        state = 295;
        braceContent();
        state = 298; 
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      } while ((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_AT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN))) != BigInt.zero));
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BraceExpressionContext braceExpression() {
    dynamic localctx = BraceExpressionContext(context, state);
    enterRule(localctx, 40, RULE_braceExpression);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 300;
      match(TOKEN_BRACE_OPEN);
      state = 304;
      errorHandler.sync(this);
      la = tokenStream.LA(1)!;
      while ((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_AT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN))) != BigInt.zero)) {
        state = 301;
        braceContent();
        state = 306;
        errorHandler.sync(this);
        la = tokenStream.LA(1)!;
      }
      state = 307;
      match(TOKEN_BRACE_CLOSE);
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BraceContentContext braceContent() {
    dynamic localctx = BraceContentContext(context, state);
    enterRule(localctx, 42, RULE_braceContent);
    try {
      int alt;
      state = 323;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BRACE_OPEN:
        enterOuterAlt(localctx, 1);
        state = 309;
        braceExpression();
        break;
      case TOKEN_NAME:
      case TOKEN_NEWLINE:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_AT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
        enterOuterAlt(localctx, 2);
        state = 310;
        braceText();
        state = 320;
        errorHandler.sync(this);
        alt = interpreter!.adaptivePredict(tokenStream, 46, context);
        while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
          if (alt == 1) {
            state = 314;
            errorHandler.sync(this);
            alt = interpreter!.adaptivePredict(tokenStream, 45, context);
            while (alt != 2 && alt != ATN.INVALID_ALT_NUMBER) {
              if (alt == 1) {
                state = 311;
                match(TOKEN_NEWLINE); 
              }
              state = 316;
              errorHandler.sync(this);
              alt = interpreter!.adaptivePredict(tokenStream, 45, context);
            }
            state = 317;
            braceText(); 
          }
          state = 322;
          errorHandler.sync(this);
          alt = interpreter!.adaptivePredict(tokenStream, 46, context);
        }
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  SkipWhitespaceContext skipWhitespace() {
    dynamic localctx = SkipWhitespaceContext(context, state);
    enterRule(localctx, 44, RULE_skipWhitespace);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 325;
      la = tokenStream.LA(1)!;
      if (!(la == TOKEN_NEWLINE || la == TOKEN_SPACE)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  BraceTextContext braceText() {
    dynamic localctx = BraceTextContext(context, state);
    enterRule(localctx, 46, RULE_braceText);
    int la;
    try {
      enterOuterAlt(localctx, 1);
      state = 327;
      la = tokenStream.LA(1)!;
      if (!((((la) & ~0x3f) == 0 && ((BigInt.one << la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_AT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return localctx;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
  	'\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{18}\u{14C}\u{4}\u{2}\u{9}\u{2}'
  	'\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
  	'\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
  	'\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
  	'\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
  	'\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
  	'\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
  	'\u{9}\u{17}\u{4}\u{18}\u{9}\u{18}\u{4}\u{19}\u{9}\u{19}\u{3}\u{2}\u{3}'
  	'\u{2}\u{3}\u{2}\u{7}\u{2}\u{36}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{39}\u{B}'
  	'\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}\u{2}\u{40}'
  	'\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{43}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}'
  	'\u{2}\u{5}\u{2}\u{48}\u{A}\u{2}\u{3}\u{3}\u{3}\u{3}\u{7}\u{3}\u{4C}\u{A}'
  	'\u{3}\u{C}\u{3}\u{E}\u{3}\u{4F}\u{B}\u{3}\u{3}\u{3}\u{7}\u{3}\u{52}\u{A}'
  	'\u{3}\u{C}\u{3}\u{E}\u{3}\u{55}\u{B}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}'
  	'\u{7}\u{3}\u{5A}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{5D}\u{B}\u{3}\u{3}\u{3}'
  	'\u{7}\u{3}\u{60}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{63}\u{B}\u{3}\u{3}\u{3}'
  	'\u{3}\u{3}\u{5}\u{3}\u{67}\u{A}\u{3}\u{3}\u{4}\u{3}\u{4}\u{6}\u{4}\u{6B}'
  	'\u{A}\u{4}\u{D}\u{4}\u{E}\u{4}\u{6C}\u{3}\u{4}\u{3}\u{4}\u{7}\u{4}\u{71}'
  	'\u{A}\u{4}\u{C}\u{4}\u{E}\u{4}\u{74}\u{B}\u{4}\u{3}\u{5}\u{3}\u{5}\u{7}'
  	'\u{5}\u{78}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{7B}\u{B}\u{5}\u{3}\u{5}\u{3}'
  	'\u{5}\u{7}\u{5}\u{7F}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{82}\u{B}\u{5}\u{5}'
  	'\u{5}\u{84}\u{A}\u{5}\u{3}\u{6}\u{5}\u{6}\u{87}\u{A}\u{6}\u{3}\u{6}\u{6}'
  	'\u{6}\u{8A}\u{A}\u{6}\u{D}\u{6}\u{E}\u{6}\u{8B}\u{3}\u{6}\u{3}\u{6}\u{7}'
  	'\u{6}\u{90}\u{A}\u{6}\u{C}\u{6}\u{E}\u{6}\u{93}\u{B}\u{6}\u{3}\u{7}\u{3}'
  	'\u{7}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{99}\u{A}\u{8}\u{3}\u{9}\u{3}\u{9}'
  	'\u{6}\u{9}\u{9D}\u{A}\u{9}\u{D}\u{9}\u{E}\u{9}\u{9E}\u{3}\u{A}\u{3}\u{A}'
  	'\u{3}\u{B}\u{7}\u{B}\u{A4}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{A7}\u{B}\u{B}'
  	'\u{3}\u{C}\u{5}\u{C}\u{AA}\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{7}\u{C}\u{AE}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{B1}\u{B}\u{C}\u{3}\u{C}\u{3}\u{C}\u{7}'
  	'\u{C}\u{B5}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{B8}\u{B}\u{C}\u{3}\u{C}\u{7}'
  	'\u{C}\u{BB}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{BE}\u{B}\u{C}\u{3}\u{C}\u{5}'
  	'\u{C}\u{C1}\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{7}\u{C}\u{C5}\u{A}\u{C}\u{C}'
  	'\u{C}\u{E}\u{C}\u{C8}\u{B}\u{C}\u{3}\u{C}\u{3}\u{C}\u{7}\u{C}\u{CC}\u{A}'
  	'\u{C}\u{C}\u{C}\u{E}\u{C}\u{CF}\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{D2}\u{A}'
  	'\u{C}\u{C}\u{C}\u{E}\u{C}\u{D5}\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{D8}\u{A}'
  	'\u{C}\u{3}\u{C}\u{3}\u{C}\u{7}\u{C}\u{DC}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}'
  	'\u{DF}\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{E2}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}'
  	'\u{E5}\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{E8}\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}'
  	'\u{7}\u{C}\u{EC}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{EF}\u{B}\u{C}\u{3}\u{C}'
  	'\u{7}\u{C}\u{F2}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{F5}\u{B}\u{C}\u{3}\u{C}'
  	'\u{5}\u{C}\u{F8}\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{C}\u{7}\u{C}\u{FD}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{100}\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{103}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{106}\u{B}\u{C}\u{5}\u{C}\u{108}\u{A}'
  	'\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}\u{E}\u{3}\u{E}\u{3}\u{F}\u{3}\u{F}\u{3}'
  	'\u{10}\u{3}\u{10}\u{5}\u{10}\u{112}\u{A}\u{10}\u{3}\u{11}\u{6}\u{11}'
  	'\u{115}\u{A}\u{11}\u{D}\u{11}\u{E}\u{11}\u{116}\u{3}\u{12}\u{3}\u{12}'
  	'\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{7}\u{13}\u{11E}\u{A}\u{13}\u{C}\u{13}'
  	'\u{E}\u{13}\u{121}\u{B}\u{13}\u{3}\u{13}\u{5}\u{13}\u{124}\u{A}\u{13}'
  	'\u{3}\u{13}\u{3}\u{13}\u{3}\u{14}\u{3}\u{14}\u{3}\u{15}\u{6}\u{15}\u{12B}'
  	'\u{A}\u{15}\u{D}\u{15}\u{E}\u{15}\u{12C}\u{3}\u{16}\u{3}\u{16}\u{7}\u{16}'
  	'\u{131}\u{A}\u{16}\u{C}\u{16}\u{E}\u{16}\u{134}\u{B}\u{16}\u{3}\u{16}'
  	'\u{3}\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{7}\u{17}\u{13B}\u{A}\u{17}'
  	'\u{C}\u{17}\u{E}\u{17}\u{13E}\u{B}\u{17}\u{3}\u{17}\u{7}\u{17}\u{141}'
  	'\u{A}\u{17}\u{C}\u{17}\u{E}\u{17}\u{144}\u{B}\u{17}\u{5}\u{17}\u{146}'
  	'\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}\u{3}\u{19}\u{3}\u{19}\u{2}'
  	'\u{2}\u{1A}\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}'
  	'\u{18}\u{1A}\u{1C}\u{1E}\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}'
  	'\u{30}\u{2}\u{7}\u{6}\u{2}\u{8}\u{8}\u{C}\u{D}\u{10}\u{11}\u{16}\u{18}'
  	'\u{3}\u{2}\u{6}\u{7}\u{6}\u{2}\u{8}\u{8}\u{A}\u{E}\u{10}\u{11}\u{17}'
  	'\u{18}\u{3}\u{2}\u{A}\u{B}\u{5}\u{2}\u{8}\u{8}\u{A}\u{C}\u{F}\u{11}\u{2}'
  	'\u{168}\u{2}\u{47}\u{3}\u{2}\u{2}\u{2}\u{4}\u{66}\u{3}\u{2}\u{2}\u{2}'
  	'\u{6}\u{68}\u{3}\u{2}\u{2}\u{2}\u{8}\u{83}\u{3}\u{2}\u{2}\u{2}\u{A}\u{86}'
  	'\u{3}\u{2}\u{2}\u{2}\u{C}\u{94}\u{3}\u{2}\u{2}\u{2}\u{E}\u{98}\u{3}\u{2}'
  	'\u{2}\u{2}\u{10}\u{9C}\u{3}\u{2}\u{2}\u{2}\u{12}\u{A0}\u{3}\u{2}\u{2}'
  	'\u{2}\u{14}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{16}\u{107}\u{3}\u{2}\u{2}\u{2}'
  	'\u{18}\u{109}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{10B}\u{3}\u{2}\u{2}\u{2}\u{1C}'
  	'\u{10D}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{111}\u{3}\u{2}\u{2}\u{2}\u{20}\u{114}'
  	'\u{3}\u{2}\u{2}\u{2}\u{22}\u{118}\u{3}\u{2}\u{2}\u{2}\u{24}\u{11A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{26}\u{127}\u{3}\u{2}\u{2}\u{2}\u{28}\u{12A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2A}\u{12E}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{145}\u{3}\u{2}\u{2}'
  	'\u{2}\u{2E}\u{147}\u{3}\u{2}\u{2}\u{2}\u{30}\u{149}\u{3}\u{2}\u{2}\u{2}'
  	'\u{32}\u{48}\u{7}\u{2}\u{2}\u{3}\u{33}\u{37}\u{7}\u{14}\u{2}\u{2}\u{34}'
  	'\u{36}\u{5}\u{2E}\u{18}\u{2}\u{35}\u{34}\u{3}\u{2}\u{2}\u{2}\u{36}\u{39}'
  	'\u{3}\u{2}\u{2}\u{2}\u{37}\u{35}\u{3}\u{2}\u{2}\u{2}\u{37}\u{38}\u{3}'
  	'\u{2}\u{2}\u{2}\u{38}\u{3A}\u{3}\u{2}\u{2}\u{2}\u{39}\u{37}\u{3}\u{2}'
  	'\u{2}\u{2}\u{3A}\u{3B}\u{5}\u{4}\u{3}\u{2}\u{3B}\u{3C}\u{7}\u{15}\u{2}'
  	'\u{2}\u{3C}\u{3D}\u{7}\u{2}\u{2}\u{3}\u{3D}\u{48}\u{3}\u{2}\u{2}\u{2}'
  	'\u{3E}\u{40}\u{5}\u{2E}\u{18}\u{2}\u{3F}\u{3E}\u{3}\u{2}\u{2}\u{2}\u{40}'
  	'\u{43}\u{3}\u{2}\u{2}\u{2}\u{41}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{41}\u{42}'
  	'\u{3}\u{2}\u{2}\u{2}\u{42}\u{44}\u{3}\u{2}\u{2}\u{2}\u{43}\u{41}\u{3}'
  	'\u{2}\u{2}\u{2}\u{44}\u{45}\u{5}\u{4}\u{3}\u{2}\u{45}\u{46}\u{7}\u{2}'
  	'\u{2}\u{3}\u{46}\u{48}\u{3}\u{2}\u{2}\u{2}\u{47}\u{32}\u{3}\u{2}\u{2}'
  	'\u{2}\u{47}\u{33}\u{3}\u{2}\u{2}\u{2}\u{47}\u{41}\u{3}\u{2}\u{2}\u{2}'
  	'\u{48}\u{3}\u{3}\u{2}\u{2}\u{2}\u{49}\u{4D}\u{5}\u{6}\u{4}\u{2}\u{4A}'
  	'\u{4C}\u{5}\u{2E}\u{18}\u{2}\u{4B}\u{4A}\u{3}\u{2}\u{2}\u{2}\u{4C}\u{4F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{4D}\u{4B}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{4E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{4E}\u{67}\u{3}\u{2}\u{2}\u{2}\u{4F}\u{4D}\u{3}\u{2}'
  	'\u{2}\u{2}\u{50}\u{52}\u{5}\u{2E}\u{18}\u{2}\u{51}\u{50}\u{3}\u{2}\u{2}'
  	'\u{2}\u{52}\u{55}\u{3}\u{2}\u{2}\u{2}\u{53}\u{51}\u{3}\u{2}\u{2}\u{2}'
  	'\u{53}\u{54}\u{3}\u{2}\u{2}\u{2}\u{54}\u{56}\u{3}\u{2}\u{2}\u{2}\u{55}'
  	'\u{53}\u{3}\u{2}\u{2}\u{2}\u{56}\u{67}\u{5}\u{14}\u{B}\u{2}\u{57}\u{5B}'
  	'\u{5}\u{6}\u{4}\u{2}\u{58}\u{5A}\u{7}\u{A}\u{2}\u{2}\u{59}\u{58}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5A}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{59}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5B}\u{5C}\u{3}\u{2}\u{2}\u{2}\u{5C}\u{61}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5D}\u{5B}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{60}\u{5}\u{2E}\u{18}\u{2}'
  	'\u{5F}\u{5E}\u{3}\u{2}\u{2}\u{2}\u{60}\u{63}\u{3}\u{2}\u{2}\u{2}\u{61}'
  	'\u{5F}\u{3}\u{2}\u{2}\u{2}\u{61}\u{62}\u{3}\u{2}\u{2}\u{2}\u{62}\u{64}'
  	'\u{3}\u{2}\u{2}\u{2}\u{63}\u{61}\u{3}\u{2}\u{2}\u{2}\u{64}\u{65}\u{5}'
  	'\u{14}\u{B}\u{2}\u{65}\u{67}\u{3}\u{2}\u{2}\u{2}\u{66}\u{49}\u{3}\u{2}'
  	'\u{2}\u{2}\u{66}\u{53}\u{3}\u{2}\u{2}\u{2}\u{66}\u{57}\u{3}\u{2}\u{2}'
  	'\u{2}\u{67}\u{5}\u{3}\u{2}\u{2}\u{2}\u{68}\u{72}\u{5}\u{8}\u{5}\u{2}'
  	'\u{69}\u{6B}\u{5}\u{12}\u{A}\u{2}\u{6A}\u{69}\u{3}\u{2}\u{2}\u{2}\u{6B}'
  	'\u{6C}\u{3}\u{2}\u{2}\u{2}\u{6C}\u{6A}\u{3}\u{2}\u{2}\u{2}\u{6C}\u{6D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6D}\u{6E}\u{3}\u{2}\u{2}\u{2}\u{6E}\u{6F}\u{5}'
  	'\u{8}\u{5}\u{2}\u{6F}\u{71}\u{3}\u{2}\u{2}\u{2}\u{70}\u{6A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{71}\u{74}\u{3}\u{2}\u{2}\u{2}\u{72}\u{70}\u{3}\u{2}\u{2}'
  	'\u{2}\u{72}\u{73}\u{3}\u{2}\u{2}\u{2}\u{73}\u{7}\u{3}\u{2}\u{2}\u{2}'
  	'\u{74}\u{72}\u{3}\u{2}\u{2}\u{2}\u{75}\u{79}\u{5}\u{A}\u{6}\u{2}\u{76}'
  	'\u{78}\u{5}\u{E}\u{8}\u{2}\u{77}\u{76}\u{3}\u{2}\u{2}\u{2}\u{78}\u{7B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{79}\u{77}\u{3}\u{2}\u{2}\u{2}\u{79}\u{7A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{7A}\u{84}\u{3}\u{2}\u{2}\u{2}\u{7B}\u{79}\u{3}\u{2}'
  	'\u{2}\u{2}\u{7C}\u{80}\u{5}\u{24}\u{13}\u{2}\u{7D}\u{7F}\u{5}\u{E}\u{8}'
  	'\u{2}\u{7E}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{7F}\u{82}\u{3}\u{2}\u{2}\u{2}'
  	'\u{80}\u{7E}\u{3}\u{2}\u{2}\u{2}\u{80}\u{81}\u{3}\u{2}\u{2}\u{2}\u{81}'
  	'\u{84}\u{3}\u{2}\u{2}\u{2}\u{82}\u{80}\u{3}\u{2}\u{2}\u{2}\u{83}\u{75}'
  	'\u{3}\u{2}\u{2}\u{2}\u{83}\u{7C}\u{3}\u{2}\u{2}\u{2}\u{84}\u{9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{85}\u{87}\u{7}\u{B}\u{2}\u{2}\u{86}\u{85}\u{3}\u{2}'
  	'\u{2}\u{2}\u{86}\u{87}\u{3}\u{2}\u{2}\u{2}\u{87}\u{89}\u{3}\u{2}\u{2}'
  	'\u{2}\u{88}\u{8A}\u{5}\u{C}\u{7}\u{2}\u{89}\u{88}\u{3}\u{2}\u{2}\u{2}'
  	'\u{8A}\u{8B}\u{3}\u{2}\u{2}\u{2}\u{8B}\u{89}\u{3}\u{2}\u{2}\u{2}\u{8B}'
  	'\u{8C}\u{3}\u{2}\u{2}\u{2}\u{8C}\u{91}\u{3}\u{2}\u{2}\u{2}\u{8D}\u{90}'
  	'\u{5}\u{C}\u{7}\u{2}\u{8E}\u{90}\u{7}\u{B}\u{2}\u{2}\u{8F}\u{8D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{8F}\u{8E}\u{3}\u{2}\u{2}\u{2}\u{90}\u{93}\u{3}\u{2}'
  	'\u{2}\u{2}\u{91}\u{8F}\u{3}\u{2}\u{2}\u{2}\u{91}\u{92}\u{3}\u{2}\u{2}'
  	'\u{2}\u{92}\u{B}\u{3}\u{2}\u{2}\u{2}\u{93}\u{91}\u{3}\u{2}\u{2}\u{2}'
  	'\u{94}\u{95}\u{9}\u{2}\u{2}\u{2}\u{95}\u{D}\u{3}\u{2}\u{2}\u{2}\u{96}'
  	'\u{99}\u{5}\u{24}\u{13}\u{2}\u{97}\u{99}\u{5}\u{10}\u{9}\u{2}\u{98}\u{96}'
  	'\u{3}\u{2}\u{2}\u{2}\u{98}\u{97}\u{3}\u{2}\u{2}\u{2}\u{99}\u{F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{9A}\u{9D}\u{5}\u{C}\u{7}\u{2}\u{9B}\u{9D}\u{7}\u{B}'
  	'\u{2}\u{2}\u{9C}\u{9A}\u{3}\u{2}\u{2}\u{2}\u{9C}\u{9B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{9D}\u{9E}\u{3}\u{2}\u{2}\u{2}\u{9E}\u{9C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{9E}\u{9F}\u{3}\u{2}\u{2}\u{2}\u{9F}\u{11}\u{3}\u{2}\u{2}\u{2}\u{A0}'
  	'\u{A1}\u{7}\u{A}\u{2}\u{2}\u{A1}\u{13}\u{3}\u{2}\u{2}\u{2}\u{A2}\u{A4}'
  	'\u{5}\u{16}\u{C}\u{2}\u{A3}\u{A2}\u{3}\u{2}\u{2}\u{2}\u{A4}\u{A7}\u{3}'
  	'\u{2}\u{2}\u{2}\u{A5}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{A5}\u{A6}\u{3}\u{2}'
  	'\u{2}\u{2}\u{A6}\u{15}\u{3}\u{2}\u{2}\u{2}\u{A7}\u{A5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{A8}\u{AA}\u{7}\u{B}\u{2}\u{2}\u{A9}\u{A8}\u{3}\u{2}\u{2}\u{2}'
  	'\u{A9}\u{AA}\u{3}\u{2}\u{2}\u{2}\u{AA}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{AB}'
  	'\u{AF}\u{7}\u{3}\u{2}\u{2}\u{AC}\u{AE}\u{7}\u{B}\u{2}\u{2}\u{AD}\u{AC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{AE}\u{B1}\u{3}\u{2}\u{2}\u{2}\u{AF}\u{AD}\u{3}'
  	'\u{2}\u{2}\u{2}\u{AF}\u{B0}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{B2}\u{3}\u{2}'
  	'\u{2}\u{2}\u{B1}\u{AF}\u{3}\u{2}\u{2}\u{2}\u{B2}\u{B6}\u{5}\u{18}\u{D}'
  	'\u{2}\u{B3}\u{B5}\u{7}\u{B}\u{2}\u{2}\u{B4}\u{B3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{B5}\u{B8}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{B4}\u{3}\u{2}\u{2}\u{2}\u{B6}'
  	'\u{B7}\u{3}\u{2}\u{2}\u{2}\u{B7}\u{BC}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{B6}'
  	'\u{3}\u{2}\u{2}\u{2}\u{B9}\u{BB}\u{5}\u{1E}\u{10}\u{2}\u{BA}\u{B9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{BB}\u{BE}\u{3}\u{2}\u{2}\u{2}\u{BC}\u{BA}\u{3}\u{2}'
  	'\u{2}\u{2}\u{BC}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{BD}\u{108}\u{3}\u{2}\u{2}'
  	'\u{2}\u{BE}\u{BC}\u{3}\u{2}\u{2}\u{2}\u{BF}\u{C1}\u{7}\u{B}\u{2}\u{2}'
  	'\u{C0}\u{BF}\u{3}\u{2}\u{2}\u{2}\u{C0}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{C1}'
  	'\u{C2}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{C6}\u{9}\u{3}\u{2}\u{2}\u{C3}\u{C5}'
  	'\u{7}\u{B}\u{2}\u{2}\u{C4}\u{C3}\u{3}\u{2}\u{2}\u{2}\u{C5}\u{C8}\u{3}'
  	'\u{2}\u{2}\u{2}\u{C6}\u{C4}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{C7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{C7}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{C8}\u{C6}\u{3}\u{2}\u{2}'
  	'\u{2}\u{C9}\u{CD}\u{5}\u{1A}\u{E}\u{2}\u{CA}\u{CC}\u{7}\u{B}\u{2}\u{2}'
  	'\u{CB}\u{CA}\u{3}\u{2}\u{2}\u{2}\u{CC}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{CD}'
  	'\u{CB}\u{3}\u{2}\u{2}\u{2}\u{CD}\u{CE}\u{3}\u{2}\u{2}\u{2}\u{CE}\u{D3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{CF}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{D0}\u{D2}\u{5}'
  	'\u{1E}\u{10}\u{2}\u{D1}\u{D0}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{D5}\u{3}\u{2}'
  	'\u{2}\u{2}\u{D3}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{D3}\u{D4}\u{3}\u{2}\u{2}'
  	'\u{2}\u{D4}\u{108}\u{3}\u{2}\u{2}\u{2}\u{D5}\u{D3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{D6}\u{D8}\u{7}\u{B}\u{2}\u{2}\u{D7}\u{D6}\u{3}\u{2}\u{2}\u{2}\u{D7}'
  	'\u{D8}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{D9}\u{DD}'
  	'\u{7}\u{4}\u{2}\u{2}\u{DA}\u{DC}\u{7}\u{B}\u{2}\u{2}\u{DB}\u{DA}\u{3}'
  	'\u{2}\u{2}\u{2}\u{DC}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{DD}\u{DB}\u{3}\u{2}'
  	'\u{2}\u{2}\u{DD}\u{DE}\u{3}\u{2}\u{2}\u{2}\u{DE}\u{E3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{DF}\u{DD}\u{3}\u{2}\u{2}\u{2}\u{E0}\u{E2}\u{5}\u{1E}\u{10}\u{2}'
  	'\u{E1}\u{E0}\u{3}\u{2}\u{2}\u{2}\u{E2}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{E3}'
  	'\u{E1}\u{3}\u{2}\u{2}\u{2}\u{E3}\u{E4}\u{3}\u{2}\u{2}\u{2}\u{E4}\u{108}'
  	'\u{3}\u{2}\u{2}\u{2}\u{E5}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{E8}\u{7}'
  	'\u{B}\u{2}\u{2}\u{E7}\u{E6}\u{3}\u{2}\u{2}\u{2}\u{E7}\u{E8}\u{3}\u{2}'
  	'\u{2}\u{2}\u{E8}\u{E9}\u{3}\u{2}\u{2}\u{2}\u{E9}\u{ED}\u{7}\u{5}\u{2}'
  	'\u{2}\u{EA}\u{EC}\u{5}\u{2E}\u{18}\u{2}\u{EB}\u{EA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{EC}\u{EF}\u{3}\u{2}\u{2}\u{2}\u{ED}\u{EB}\u{3}\u{2}\u{2}\u{2}\u{ED}'
  	'\u{EE}\u{3}\u{2}\u{2}\u{2}\u{EE}\u{F3}\u{3}\u{2}\u{2}\u{2}\u{EF}\u{ED}'
  	'\u{3}\u{2}\u{2}\u{2}\u{F0}\u{F2}\u{5}\u{1E}\u{10}\u{2}\u{F1}\u{F0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{F2}\u{F5}\u{3}\u{2}\u{2}\u{2}\u{F3}\u{F1}\u{3}\u{2}'
  	'\u{2}\u{2}\u{F3}\u{F4}\u{3}\u{2}\u{2}\u{2}\u{F4}\u{108}\u{3}\u{2}\u{2}'
  	'\u{2}\u{F5}\u{F3}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{F8}\u{7}\u{B}\u{2}\u{2}'
  	'\u{F7}\u{F6}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{F8}\u{3}\u{2}\u{2}\u{2}\u{F8}'
  	'\u{F9}\u{3}\u{2}\u{2}\u{2}\u{F9}\u{FA}\u{7}\u{F}\u{2}\u{2}\u{FA}\u{FE}'
  	'\u{5}\u{1C}\u{F}\u{2}\u{FB}\u{FD}\u{7}\u{B}\u{2}\u{2}\u{FC}\u{FB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{FD}\u{100}\u{3}\u{2}\u{2}\u{2}\u{FE}\u{FC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{FE}\u{FF}\u{3}\u{2}\u{2}\u{2}\u{FF}\u{104}\u{3}\u{2}\u{2}'
  	'\u{2}\u{100}\u{FE}\u{3}\u{2}\u{2}\u{2}\u{101}\u{103}\u{5}\u{1E}\u{10}'
  	'\u{2}\u{102}\u{101}\u{3}\u{2}\u{2}\u{2}\u{103}\u{106}\u{3}\u{2}\u{2}'
  	'\u{2}\u{104}\u{102}\u{3}\u{2}\u{2}\u{2}\u{104}\u{105}\u{3}\u{2}\u{2}'
  	'\u{2}\u{105}\u{108}\u{3}\u{2}\u{2}\u{2}\u{106}\u{104}\u{3}\u{2}\u{2}'
  	'\u{2}\u{107}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{107}\u{C0}\u{3}\u{2}\u{2}\u{2}'
  	'\u{107}\u{D7}\u{3}\u{2}\u{2}\u{2}\u{107}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{107}'
  	'\u{F7}\u{3}\u{2}\u{2}\u{2}\u{108}\u{17}\u{3}\u{2}\u{2}\u{2}\u{109}\u{10A}'
  	'\u{5}\u{22}\u{12}\u{2}\u{10A}\u{19}\u{3}\u{2}\u{2}\u{2}\u{10B}\u{10C}'
  	'\u{5}\u{22}\u{12}\u{2}\u{10C}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{10D}\u{10E}'
  	'\u{7}\u{8}\u{2}\u{2}\u{10E}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{10F}\u{112}\u{5}'
  	'\u{20}\u{11}\u{2}\u{110}\u{112}\u{5}\u{24}\u{13}\u{2}\u{111}\u{10F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{111}\u{110}\u{3}\u{2}\u{2}\u{2}\u{112}\u{1F}\u{3}\u{2}'
  	'\u{2}\u{2}\u{113}\u{115}\u{5}\u{22}\u{12}\u{2}\u{114}\u{113}\u{3}\u{2}'
  	'\u{2}\u{2}\u{115}\u{116}\u{3}\u{2}\u{2}\u{2}\u{116}\u{114}\u{3}\u{2}'
  	'\u{2}\u{2}\u{116}\u{117}\u{3}\u{2}\u{2}\u{2}\u{117}\u{21}\u{3}\u{2}\u{2}'
  	'\u{2}\u{118}\u{119}\u{9}\u{4}\u{2}\u{2}\u{119}\u{23}\u{3}\u{2}\u{2}\u{2}'
  	'\u{11A}\u{11B}\u{7}\u{16}\u{2}\u{2}\u{11B}\u{11F}\u{5}\u{26}\u{14}\u{2}'
  	'\u{11C}\u{11E}\u{7}\u{B}\u{2}\u{2}\u{11D}\u{11C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{11E}\u{121}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{11D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{11F}\u{120}\u{3}\u{2}\u{2}\u{2}\u{120}\u{123}\u{3}\u{2}\u{2}\u{2}'
  	'\u{121}\u{11F}\u{3}\u{2}\u{2}\u{2}\u{122}\u{124}\u{5}\u{28}\u{15}\u{2}'
  	'\u{123}\u{122}\u{3}\u{2}\u{2}\u{2}\u{123}\u{124}\u{3}\u{2}\u{2}\u{2}'
  	'\u{124}\u{125}\u{3}\u{2}\u{2}\u{2}\u{125}\u{126}\u{7}\u{18}\u{2}\u{2}'
  	'\u{126}\u{25}\u{3}\u{2}\u{2}\u{2}\u{127}\u{128}\u{7}\u{8}\u{2}\u{2}\u{128}'
  	'\u{27}\u{3}\u{2}\u{2}\u{2}\u{129}\u{12B}\u{5}\u{2C}\u{17}\u{2}\u{12A}'
  	'\u{129}\u{3}\u{2}\u{2}\u{2}\u{12B}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{12C}'
  	'\u{12A}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{12D}\u{3}\u{2}\u{2}\u{2}\u{12D}'
  	'\u{29}\u{3}\u{2}\u{2}\u{2}\u{12E}\u{132}\u{7}\u{17}\u{2}\u{2}\u{12F}'
  	'\u{131}\u{5}\u{2C}\u{17}\u{2}\u{130}\u{12F}\u{3}\u{2}\u{2}\u{2}\u{131}'
  	'\u{134}\u{3}\u{2}\u{2}\u{2}\u{132}\u{130}\u{3}\u{2}\u{2}\u{2}\u{132}'
  	'\u{133}\u{3}\u{2}\u{2}\u{2}\u{133}\u{135}\u{3}\u{2}\u{2}\u{2}\u{134}'
  	'\u{132}\u{3}\u{2}\u{2}\u{2}\u{135}\u{136}\u{7}\u{18}\u{2}\u{2}\u{136}'
  	'\u{2B}\u{3}\u{2}\u{2}\u{2}\u{137}\u{146}\u{5}\u{2A}\u{16}\u{2}\u{138}'
  	'\u{142}\u{5}\u{30}\u{19}\u{2}\u{139}\u{13B}\u{7}\u{A}\u{2}\u{2}\u{13A}'
  	'\u{139}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{13E}\u{3}\u{2}\u{2}\u{2}\u{13C}'
  	'\u{13A}\u{3}\u{2}\u{2}\u{2}\u{13C}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13D}'
  	'\u{13F}\u{3}\u{2}\u{2}\u{2}\u{13E}\u{13C}\u{3}\u{2}\u{2}\u{2}\u{13F}'
  	'\u{141}\u{5}\u{30}\u{19}\u{2}\u{140}\u{13C}\u{3}\u{2}\u{2}\u{2}\u{141}'
  	'\u{144}\u{3}\u{2}\u{2}\u{2}\u{142}\u{140}\u{3}\u{2}\u{2}\u{2}\u{142}'
  	'\u{143}\u{3}\u{2}\u{2}\u{2}\u{143}\u{146}\u{3}\u{2}\u{2}\u{2}\u{144}'
  	'\u{142}\u{3}\u{2}\u{2}\u{2}\u{145}\u{137}\u{3}\u{2}\u{2}\u{2}\u{145}'
  	'\u{138}\u{3}\u{2}\u{2}\u{2}\u{146}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{147}\u{148}'
  	'\u{9}\u{5}\u{2}\u{2}\u{148}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{149}\u{14A}\u{9}'
  	'\u{6}\u{2}\u{2}\u{14A}\u{31}\u{3}\u{2}\u{2}\u{2}\u{32}\u{37}\u{41}\u{47}'
  	'\u{4D}\u{53}\u{5B}\u{61}\u{66}\u{6C}\u{72}\u{79}\u{80}\u{83}\u{86}\u{8B}'
  	'\u{8F}\u{91}\u{98}\u{9C}\u{9E}\u{A5}\u{A9}\u{AF}\u{B6}\u{BC}\u{C0}\u{C6}'
  	'\u{CD}\u{D3}\u{D7}\u{DD}\u{E3}\u{E7}\u{ED}\u{F3}\u{F7}\u{FE}\u{104}\u{107}'
  	'\u{111}\u{116}\u{11F}\u{123}\u{12C}\u{132}\u{13C}\u{142}\u{145}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}
class DocumentationContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(ApexdocParser.TOKEN_EOF, 0);
  TerminalNode? JAVADOC_START() => getToken(ApexdocParser.TOKEN_JAVADOC_START, 0);
  DocumentationContentContext? documentationContent() => getRuleContext<DocumentationContentContext>(0);
  TerminalNode? JAVADOC_END() => getToken(ApexdocParser.TOKEN_JAVADOC_END, 0);
  List<SkipWhitespaceContext> skipWhitespaces() => getRuleContexts<SkipWhitespaceContext>();
  SkipWhitespaceContext? skipWhitespace(int i) => getRuleContext<SkipWhitespaceContext>(i);
  DocumentationContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_documentation;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDocumentation(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDocumentation(this);
  }
}

class DocumentationContentContext extends ParserRuleContext {
  DescriptionContext? description() => getRuleContext<DescriptionContext>(0);
  List<SkipWhitespaceContext> skipWhitespaces() => getRuleContexts<SkipWhitespaceContext>();
  SkipWhitespaceContext? skipWhitespace(int i) => getRuleContext<SkipWhitespaceContext>(i);
  TagSectionContext? tagSection() => getRuleContext<TagSectionContext>(0);
  List<TerminalNode> NEWLINEs() => getTokens(ApexdocParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(ApexdocParser.TOKEN_NEWLINE, i);
  DocumentationContentContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_documentationContent;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDocumentationContent(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDocumentationContent(this);
  }
}

class DescriptionContext extends ParserRuleContext {
  List<DescriptionLineContext> descriptionLines() => getRuleContexts<DescriptionLineContext>();
  DescriptionLineContext? descriptionLine(int i) => getRuleContext<DescriptionLineContext>(i);
  List<DescriptionNewlineContext> descriptionNewlines() => getRuleContexts<DescriptionNewlineContext>();
  DescriptionNewlineContext? descriptionNewline(int i) => getRuleContext<DescriptionNewlineContext>(i);
  DescriptionContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_description;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescription(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescription(this);
  }
}

class DescriptionLineContext extends ParserRuleContext {
  DescriptionLineStartContext? descriptionLineStart() => getRuleContext<DescriptionLineStartContext>(0);
  List<DescriptionLineElementContext> descriptionLineElements() => getRuleContexts<DescriptionLineElementContext>();
  DescriptionLineElementContext? descriptionLineElement(int i) => getRuleContext<DescriptionLineElementContext>(i);
  InlineTagContext? inlineTag() => getRuleContext<InlineTagContext>(0);
  DescriptionLineContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_descriptionLine;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescriptionLine(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescriptionLine(this);
  }
}

class DescriptionLineStartContext extends ParserRuleContext {
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  List<DescriptionLineNoSpaceNoAtContext> descriptionLineNoSpaceNoAts() => getRuleContexts<DescriptionLineNoSpaceNoAtContext>();
  DescriptionLineNoSpaceNoAtContext? descriptionLineNoSpaceNoAt(int i) => getRuleContext<DescriptionLineNoSpaceNoAtContext>(i);
  DescriptionLineStartContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_descriptionLineStart;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescriptionLineStart(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescriptionLineStart(this);
  }
}

class DescriptionLineNoSpaceNoAtContext extends ParserRuleContext {
  TerminalNode? TEXT_CONTENT() => getToken(ApexdocParser.TOKEN_TEXT_CONTENT, 0);
  TerminalNode? NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);
  TerminalNode? STAR() => getToken(ApexdocParser.TOKEN_STAR, 0);
  TerminalNode? SLASH() => getToken(ApexdocParser.TOKEN_SLASH, 0);
  TerminalNode? BRACE_OPEN() => getToken(ApexdocParser.TOKEN_BRACE_OPEN, 0);
  TerminalNode? BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);
  TerminalNode? INLINE_TAG_START() => getToken(ApexdocParser.TOKEN_INLINE_TAG_START, 0);
  TerminalNode? TICKED_CONTENT() => getToken(ApexdocParser.TOKEN_TICKED_CONTENT, 0);
  DescriptionLineNoSpaceNoAtContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_descriptionLineNoSpaceNoAt;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescriptionLineNoSpaceNoAt(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescriptionLineNoSpaceNoAt(this);
  }
}

class DescriptionLineElementContext extends ParserRuleContext {
  InlineTagContext? inlineTag() => getRuleContext<InlineTagContext>(0);
  DescriptionLineTextContext? descriptionLineText() => getRuleContext<DescriptionLineTextContext>(0);
  DescriptionLineElementContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_descriptionLineElement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescriptionLineElement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescriptionLineElement(this);
  }
}

class DescriptionLineTextContext extends ParserRuleContext {
  List<DescriptionLineNoSpaceNoAtContext> descriptionLineNoSpaceNoAts() => getRuleContexts<DescriptionLineNoSpaceNoAtContext>();
  DescriptionLineNoSpaceNoAtContext? descriptionLineNoSpaceNoAt(int i) => getRuleContext<DescriptionLineNoSpaceNoAtContext>(i);
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  DescriptionLineTextContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_descriptionLineText;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescriptionLineText(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescriptionLineText(this);
  }
}

class DescriptionNewlineContext extends ParserRuleContext {
  TerminalNode? NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);
  DescriptionNewlineContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_descriptionNewline;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDescriptionNewline(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDescriptionNewline(this);
  }
}

class TagSectionContext extends ParserRuleContext {
  List<BlockTagContext> blockTags() => getRuleContexts<BlockTagContext>();
  BlockTagContext? blockTag(int i) => getRuleContext<BlockTagContext>(i);
  TagSectionContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_tagSection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterTagSection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitTagSection(this);
  }
}

class BlockTagContext extends ParserRuleContext {
  BlockTagContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_blockTag;
 
}

class ParamNameContext extends ParserRuleContext {
  BlockTagTextElementContext? blockTagTextElement() => getRuleContext<BlockTagTextElementContext>(0);
  ParamNameContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_paramName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterParamName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitParamName(this);
  }
}

class ExceptionNameContext extends ParserRuleContext {
  BlockTagTextElementContext? blockTagTextElement() => getRuleContext<BlockTagTextElementContext>(0);
  ExceptionNameContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_exceptionName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterExceptionName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitExceptionName(this);
  }
}

class BlockTagNameContext extends ParserRuleContext {
  TerminalNode? NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);
  BlockTagNameContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_blockTagName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBlockTagName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBlockTagName(this);
  }
}

class BlockTagContentContext extends ParserRuleContext {
  BlockTagTextContext? blockTagText() => getRuleContext<BlockTagTextContext>(0);
  InlineTagContext? inlineTag() => getRuleContext<InlineTagContext>(0);
  BlockTagContentContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_blockTagContent;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBlockTagContent(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBlockTagContent(this);
  }
}

class BlockTagTextContext extends ParserRuleContext {
  List<BlockTagTextElementContext> blockTagTextElements() => getRuleContexts<BlockTagTextElementContext>();
  BlockTagTextElementContext? blockTagTextElement(int i) => getRuleContext<BlockTagTextElementContext>(i);
  BlockTagTextContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_blockTagText;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBlockTagText(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBlockTagText(this);
  }
}

class BlockTagTextElementContext extends ParserRuleContext {
  TerminalNode? TEXT_CONTENT() => getToken(ApexdocParser.TOKEN_TEXT_CONTENT, 0);
  TerminalNode? NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);
  TerminalNode? SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);
  TerminalNode? STAR() => getToken(ApexdocParser.TOKEN_STAR, 0);
  TerminalNode? SLASH() => getToken(ApexdocParser.TOKEN_SLASH, 0);
  TerminalNode? BRACE_OPEN() => getToken(ApexdocParser.TOKEN_BRACE_OPEN, 0);
  TerminalNode? BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);
  TerminalNode? TICKED_CONTENT() => getToken(ApexdocParser.TOKEN_TICKED_CONTENT, 0);
  TerminalNode? CODE_BLOCK() => getToken(ApexdocParser.TOKEN_CODE_BLOCK, 0);
  TerminalNode? NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);
  BlockTagTextElementContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_blockTagTextElement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBlockTagTextElement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBlockTagTextElement(this);
  }
}

class InlineTagContext extends ParserRuleContext {
  TerminalNode? INLINE_TAG_START() => getToken(ApexdocParser.TOKEN_INLINE_TAG_START, 0);
  InlineTagNameContext? inlineTagName() => getRuleContext<InlineTagNameContext>(0);
  TerminalNode? BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  InlineTagContentContext? inlineTagContent() => getRuleContext<InlineTagContentContext>(0);
  InlineTagContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_inlineTag;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterInlineTag(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitInlineTag(this);
  }
}

class InlineTagNameContext extends ParserRuleContext {
  TerminalNode? NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);
  InlineTagNameContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_inlineTagName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterInlineTagName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitInlineTagName(this);
  }
}

class InlineTagContentContext extends ParserRuleContext {
  List<BraceContentContext> braceContents() => getRuleContexts<BraceContentContext>();
  BraceContentContext? braceContent(int i) => getRuleContext<BraceContentContext>(i);
  InlineTagContentContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_inlineTagContent;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterInlineTagContent(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitInlineTagContent(this);
  }
}

class BraceExpressionContext extends ParserRuleContext {
  TerminalNode? BRACE_OPEN() => getToken(ApexdocParser.TOKEN_BRACE_OPEN, 0);
  TerminalNode? BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);
  List<BraceContentContext> braceContents() => getRuleContexts<BraceContentContext>();
  BraceContentContext? braceContent(int i) => getRuleContext<BraceContentContext>(i);
  BraceExpressionContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_braceExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBraceExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBraceExpression(this);
  }
}

class BraceContentContext extends ParserRuleContext {
  BraceExpressionContext? braceExpression() => getRuleContext<BraceExpressionContext>(0);
  List<BraceTextContext> braceTexts() => getRuleContexts<BraceTextContext>();
  BraceTextContext? braceText(int i) => getRuleContext<BraceTextContext>(i);
  List<TerminalNode> NEWLINEs() => getTokens(ApexdocParser.TOKEN_NEWLINE);
  TerminalNode? NEWLINE(int i) => getToken(ApexdocParser.TOKEN_NEWLINE, i);
  BraceContentContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_braceContent;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBraceContent(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBraceContent(this);
  }
}

class SkipWhitespaceContext extends ParserRuleContext {
  TerminalNode? SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);
  TerminalNode? NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);
  SkipWhitespaceContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_skipWhitespace;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterSkipWhitespace(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitSkipWhitespace(this);
  }
}

class BraceTextContext extends ParserRuleContext {
  TerminalNode? TEXT_CONTENT() => getToken(ApexdocParser.TOKEN_TEXT_CONTENT, 0);
  TerminalNode? NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);
  TerminalNode? SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);
  TerminalNode? STAR() => getToken(ApexdocParser.TOKEN_STAR, 0);
  TerminalNode? SLASH() => getToken(ApexdocParser.TOKEN_SLASH, 0);
  TerminalNode? NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);
  TerminalNode? AT() => getToken(ApexdocParser.TOKEN_AT, 0);
  BraceTextContext([ParserRuleContext? super.parent, super.invokingState]);
  @override
  int get ruleIndex => RULE_braceText;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBraceText(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBraceText(this);
  }
}

class DefaultBlockTagContext extends BlockTagContext {
  TerminalNode? AT() => getToken(ApexdocParser.TOKEN_AT, 0);
  BlockTagNameContext? blockTagName() => getRuleContext<BlockTagNameContext>(0);
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  List<BlockTagContentContext> blockTagContents() => getRuleContexts<BlockTagContentContext>();
  BlockTagContentContext? blockTagContent(int i) => getRuleContext<BlockTagContentContext>(i);
  DefaultBlockTagContext(BlockTagContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterDefaultBlockTag(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitDefaultBlockTag(this);
  }
}

class ParamBlockTagContext extends BlockTagContext {
  TerminalNode? PARAM() => getToken(ApexdocParser.TOKEN_PARAM, 0);
  ParamNameContext? paramName() => getRuleContext<ParamNameContext>(0);
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  List<BlockTagContentContext> blockTagContents() => getRuleContexts<BlockTagContentContext>();
  BlockTagContentContext? blockTagContent(int i) => getRuleContext<BlockTagContentContext>(i);
  ParamBlockTagContext(BlockTagContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterParamBlockTag(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitParamBlockTag(this);
  }
}

class ReturnBlockTagContext extends BlockTagContext {
  TerminalNode? RETURN() => getToken(ApexdocParser.TOKEN_RETURN, 0);
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  List<BlockTagContentContext> blockTagContents() => getRuleContexts<BlockTagContentContext>();
  BlockTagContentContext? blockTagContent(int i) => getRuleContext<BlockTagContentContext>(i);
  ReturnBlockTagContext(BlockTagContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterReturnBlockTag(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitReturnBlockTag(this);
  }
}

class ExampleBlockTagContext extends BlockTagContext {
  TerminalNode? EXAMPLE() => getToken(ApexdocParser.TOKEN_EXAMPLE, 0);
  TerminalNode? SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);
  List<SkipWhitespaceContext> skipWhitespaces() => getRuleContexts<SkipWhitespaceContext>();
  SkipWhitespaceContext? skipWhitespace(int i) => getRuleContext<SkipWhitespaceContext>(i);
  List<BlockTagContentContext> blockTagContents() => getRuleContexts<BlockTagContentContext>();
  BlockTagContentContext? blockTagContent(int i) => getRuleContext<BlockTagContentContext>(i);
  ExampleBlockTagContext(BlockTagContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterExampleBlockTag(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitExampleBlockTag(this);
  }
}

class ThrowsBlockTagContext extends BlockTagContext {
  ExceptionNameContext? exceptionName() => getRuleContext<ExceptionNameContext>(0);
  TerminalNode? THROWS() => getToken(ApexdocParser.TOKEN_THROWS, 0);
  TerminalNode? EXCEPTION() => getToken(ApexdocParser.TOKEN_EXCEPTION, 0);
  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);
  TerminalNode? SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);
  List<BlockTagContentContext> blockTagContents() => getRuleContexts<BlockTagContentContext>();
  BlockTagContentContext? blockTagContent(int i) => getRuleContext<BlockTagContentContext>(i);
  ThrowsBlockTagContext(BlockTagContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterThrowsBlockTag(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitThrowsBlockTag(this);
  }
}