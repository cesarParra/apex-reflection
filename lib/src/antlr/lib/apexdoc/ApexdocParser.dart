// Generated from lib/src/antlr/grammars/apexdoc/ApexdocParser.g4 by ANTLR 4.13.2
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
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_PARAM = 1, TOKEN_RETURN = 2, TOKEN_EXAMPLE = 3, 
                   TOKEN_THROWS = 4, TOKEN_EXCEPTION = 5, TOKEN_NAME = 6, 
                   TOKEN_JavaLetterOrDigit = 7, TOKEN_NEWLINE = 8, TOKEN_SPACE = 9, 
                   TOKEN_TEXT_CONTENT = 10, TOKEN_TICKED_CONTENT = 11, TOKEN_AT = 12, 
                   TOKEN_STAR = 13, TOKEN_SLASH = 14, TOKEN_DOT = 15, TOKEN_TICK = 16, 
                   TOKEN_JAVADOC_START = 17, TOKEN_JAVADOC_END = 18, TOKEN_INLINE_TAG_START = 19, 
                   TOKEN_BRACE_OPEN = 20, TOKEN_BRACE_CLOSE = 21;

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
      null, "'@'", "'*'", "'/'", "'.'", "'`'", null, null, "'{@'", "'{'", 
      "'}'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "PARAM", "RETURN", "EXAMPLE", "THROWS", "EXCEPTION", "NAME", 
      "JavaLetterOrDigit", "NEWLINE", "SPACE", "TEXT_CONTENT", "TICKED_CONTENT", 
      "AT", "STAR", "SLASH", "DOT", "TICK", "JAVADOC_START", "JAVADOC_END", 
      "INLINE_TAG_START", "BRACE_OPEN", "BRACE_CLOSE"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'ApexdocParser.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  ApexdocParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  DocumentationContext documentation() {
    dynamic _localctx = DocumentationContext(context, state);
    enterRule(_localctx, 0, RULE_documentation);
    try {
      int _alt;
      state = 69;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 2, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 48;
        match(TOKEN_EOF);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 49;
        match(TOKEN_JAVADOC_START);
        state = 53;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 0, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 50;
            skipWhitespace(); 
          }
          state = 55;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 0, context);
        }
        state = 56;
        documentationContent();
        state = 57;
        match(TOKEN_JAVADOC_END);
        state = 58;
        match(TOKEN_EOF);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 63;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 60;
            skipWhitespace(); 
          }
          state = 65;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
        }
        state = 66;
        documentationContent();
        state = 67;
        match(TOKEN_EOF);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DocumentationContentContext documentationContent() {
    dynamic _localctx = DocumentationContentContext(context, state);
    enterRule(_localctx, 2, RULE_documentationContent);
    int _la;
    try {
      int _alt;
      state = 100;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 71;
        description();
        state = 75;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_NEWLINE || _la == TOKEN_SPACE) {
          state = 72;
          skipWhitespace();
          state = 77;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 81;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 4, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 78;
            skipWhitespace(); 
          }
          state = 83;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 4, context);
        }
        state = 84;
        tagSection();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 85;
        description();
        state = 89;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 86;
            match(TOKEN_NEWLINE); 
          }
          state = 91;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        }
        state = 95;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 92;
            skipWhitespace(); 
          }
          state = 97;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        }
        state = 98;
        tagSection();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionContext description() {
    dynamic _localctx = DescriptionContext(context, state);
    enterRule(_localctx, 4, RULE_description);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 102;
      descriptionLine();
      state = 112;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 9, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 104; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 103;
            descriptionNewline();
            state = 106; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_NEWLINE);
          state = 108;
          descriptionLine(); 
        }
        state = 114;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 9, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionLineContext descriptionLine() {
    dynamic _localctx = DescriptionLineContext(context, state);
    enterRule(_localctx, 6, RULE_descriptionLine);
    try {
      int _alt;
      state = 129;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 12, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 115;
        descriptionLineStart();
        state = 119;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 116;
            descriptionLineElement(); 
          }
          state = 121;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 122;
        inlineTag();
        state = 126;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 123;
            descriptionLineElement(); 
          }
          state = 128;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionLineStartContext descriptionLineStart() {
    dynamic _localctx = DescriptionLineStartContext(context, state);
    enterRule(_localctx, 8, RULE_descriptionLineStart);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 132;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_SPACE) {
        state = 131;
        match(TOKEN_SPACE);
      }

      state = 135; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 134;
          descriptionLineNoSpaceNoAt();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 137; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 14, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
      state = 143;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 16, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
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
        _alt = interpreter!.adaptivePredict(tokenStream, 16, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionLineNoSpaceNoAtContext descriptionLineNoSpaceNoAt() {
    dynamic _localctx = DescriptionLineNoSpaceNoAtContext(context, state);
    enterRule(_localctx, 10, RULE_descriptionLineNoSpaceNoAt);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 146;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3697728) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionLineElementContext descriptionLineElement() {
    dynamic _localctx = DescriptionLineElementContext(context, state);
    enterRule(_localctx, 12, RULE_descriptionLineElement);
    try {
      state = 150;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 17, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 148;
        inlineTag();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 149;
        descriptionLineText();
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionLineTextContext descriptionLineText() {
    dynamic _localctx = DescriptionLineTextContext(context, state);
    enterRule(_localctx, 14, RULE_descriptionLineText);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 154; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
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
        _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DescriptionNewlineContext descriptionNewline() {
    dynamic _localctx = DescriptionNewlineContext(context, state);
    enterRule(_localctx, 16, RULE_descriptionNewline);
    try {
      enterOuterAlt(_localctx, 1);
      state = 158;
      match(TOKEN_NEWLINE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TagSectionContext tagSection() {
    dynamic _localctx = TagSectionContext(context, state);
    enterRule(_localctx, 18, RULE_tagSection);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 163;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 4670) != 0)) {
        state = 160;
        blockTag();
        state = 165;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockTagContext blockTag() {
    dynamic _localctx = BlockTagContext(context, state);
    enterRule(_localctx, 20, RULE_blockTag);
    int _la;
    try {
      int _alt;
      state = 246;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
      case 1:
        _localctx = ParamBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 167;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 166;
          match(TOKEN_SPACE);
        }

        state = 169;
        match(TOKEN_PARAM);
        state = 173;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 170;
            match(TOKEN_SPACE); 
          }
          state = 175;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 22, context);
        }
        state = 176;
        paramName();
        state = 180;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 177;
            match(TOKEN_SPACE); 
          }
          state = 182;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
        }
        state = 184;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 24, context)) {
        case 1:
          state = 183;
          blockTagContent();
          break;
        }
        break;
      case 2:
        _localctx = ThrowsBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 187;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 186;
          match(TOKEN_SPACE);
        }

        state = 189;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_THROWS || _la == TOKEN_EXCEPTION)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 193;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 26, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 190;
            match(TOKEN_SPACE); 
          }
          state = 195;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 26, context);
        }
        state = 196;
        exceptionName();
        state = 200;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 197;
            match(TOKEN_SPACE); 
          }
          state = 202;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 27, context);
        }
        state = 204;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 28, context)) {
        case 1:
          state = 203;
          blockTagContent();
          break;
        }
        break;
      case 3:
        _localctx = ReturnBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 207;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 206;
          match(TOKEN_SPACE);
        }

        state = 209;
        match(TOKEN_RETURN);
        state = 213;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 210;
            match(TOKEN_SPACE); 
          }
          state = 215;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        }
        state = 217;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 31, context)) {
        case 1:
          state = 216;
          blockTagContent();
          break;
        }
        break;
      case 4:
        _localctx = ExampleBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 220;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 219;
          match(TOKEN_SPACE);
        }

        state = 222;
        match(TOKEN_EXAMPLE);
        state = 226;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 223;
            skipWhitespace(); 
          }
          state = 228;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        }
        state = 230;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 34, context)) {
        case 1:
          state = 229;
          blockTagContent();
          break;
        }
        break;
      case 5:
        _localctx = DefaultBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 233;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 232;
          match(TOKEN_SPACE);
        }

        state = 235;
        match(TOKEN_AT);
        state = 236;
        blockTagName();
        state = 240;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 237;
            match(TOKEN_SPACE); 
          }
          state = 242;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
        }
        state = 244;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          state = 243;
          blockTagContent();
          break;
        }
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParamNameContext paramName() {
    dynamic _localctx = ParamNameContext(context, state);
    enterRule(_localctx, 22, RULE_paramName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 248;
      blockTagTextElement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExceptionNameContext exceptionName() {
    dynamic _localctx = ExceptionNameContext(context, state);
    enterRule(_localctx, 24, RULE_exceptionName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 250;
      blockTagTextElement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockTagNameContext blockTagName() {
    dynamic _localctx = BlockTagNameContext(context, state);
    enterRule(_localctx, 26, RULE_blockTagName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 252;
      match(TOKEN_NAME);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockTagContentContext blockTagContent() {
    dynamic _localctx = BlockTagContentContext(context, state);
    enterRule(_localctx, 28, RULE_blockTagContent);
    try {
      state = 256;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_NAME:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_TICKED_CONTENT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
      case TOKEN_BRACE_OPEN:
      case TOKEN_BRACE_CLOSE:
        enterOuterAlt(_localctx, 1);
        state = 254;
        blockTagText();
        break;
      case TOKEN_INLINE_TAG_START:
        enterOuterAlt(_localctx, 2);
        state = 255;
        inlineTag();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockTagTextContext blockTagText() {
    dynamic _localctx = BlockTagTextContext(context, state);
    enterRule(_localctx, 30, RULE_blockTagText);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 259; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 258;
          blockTagTextElement();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 261; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 40, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockTagTextElementContext blockTagTextElement() {
    dynamic _localctx = BlockTagTextElementContext(context, state);
    enterRule(_localctx, 32, RULE_blockTagTextElement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 263;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 3173952) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InlineTagContext inlineTag() {
    dynamic _localctx = InlineTagContext(context, state);
    enterRule(_localctx, 34, RULE_inlineTag);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 265;
      match(TOKEN_INLINE_TAG_START);
      state = 266;
      inlineTagName();
      state = 270;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 267;
          match(TOKEN_SPACE); 
        }
        state = 272;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
      }
      state = 274;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1079104) != 0)) {
        state = 273;
        inlineTagContent();
      }

      state = 276;
      match(TOKEN_BRACE_CLOSE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InlineTagNameContext inlineTagName() {
    dynamic _localctx = InlineTagNameContext(context, state);
    enterRule(_localctx, 36, RULE_inlineTagName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 278;
      match(TOKEN_NAME);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InlineTagContentContext inlineTagContent() {
    dynamic _localctx = InlineTagContentContext(context, state);
    enterRule(_localctx, 38, RULE_inlineTagContent);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 281; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 280;
        braceContent();
        state = 283; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1079104) != 0));
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BraceExpressionContext braceExpression() {
    dynamic _localctx = BraceExpressionContext(context, state);
    enterRule(_localctx, 40, RULE_braceExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 285;
      match(TOKEN_BRACE_OPEN);
      state = 289;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 1079104) != 0)) {
        state = 286;
        braceContent();
        state = 291;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 292;
      match(TOKEN_BRACE_CLOSE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BraceContentContext braceContent() {
    dynamic _localctx = BraceContentContext(context, state);
    enterRule(_localctx, 42, RULE_braceContent);
    try {
      int _alt;
      state = 308;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BRACE_OPEN:
        enterOuterAlt(_localctx, 1);
        state = 294;
        braceExpression();
        break;
      case TOKEN_NAME:
      case TOKEN_NEWLINE:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_AT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
        enterOuterAlt(_localctx, 2);
        state = 295;
        braceText();
        state = 305;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 299;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
            while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
              if (_alt == 1) {
                state = 296;
                match(TOKEN_NEWLINE); 
              }
              state = 301;
              errorHandler.sync(this);
              _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
            }
            state = 302;
            braceText(); 
          }
          state = 307;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
        }
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SkipWhitespaceContext skipWhitespace() {
    dynamic _localctx = SkipWhitespaceContext(context, state);
    enterRule(_localctx, 44, RULE_skipWhitespace);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 310;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_NEWLINE || _la == TOKEN_SPACE)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BraceTextContext braceText() {
    dynamic _localctx = BraceTextContext(context, state);
    enterRule(_localctx, 46, RULE_braceText);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 312;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 30528) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,21,315,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,
      14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
      2,21,7,21,2,22,7,22,2,23,7,23,1,0,1,0,1,0,5,0,52,8,0,10,0,12,0,55,
      9,0,1,0,1,0,1,0,1,0,1,0,5,0,62,8,0,10,0,12,0,65,9,0,1,0,1,0,1,0,3,
      0,70,8,0,1,1,1,1,5,1,74,8,1,10,1,12,1,77,9,1,1,1,5,1,80,8,1,10,1,12,
      1,83,9,1,1,1,1,1,1,1,5,1,88,8,1,10,1,12,1,91,9,1,1,1,5,1,94,8,1,10,
      1,12,1,97,9,1,1,1,1,1,3,1,101,8,1,1,2,1,2,4,2,105,8,2,11,2,12,2,106,
      1,2,1,2,5,2,111,8,2,10,2,12,2,114,9,2,1,3,1,3,5,3,118,8,3,10,3,12,
      3,121,9,3,1,3,1,3,5,3,125,8,3,10,3,12,3,128,9,3,3,3,130,8,3,1,4,3,
      4,133,8,4,1,4,4,4,136,8,4,11,4,12,4,137,1,4,1,4,5,4,142,8,4,10,4,12,
      4,145,9,4,1,5,1,5,1,6,1,6,3,6,151,8,6,1,7,1,7,4,7,155,8,7,11,7,12,
      7,156,1,8,1,8,1,9,5,9,162,8,9,10,9,12,9,165,9,9,1,10,3,10,168,8,10,
      1,10,1,10,5,10,172,8,10,10,10,12,10,175,9,10,1,10,1,10,5,10,179,8,
      10,10,10,12,10,182,9,10,1,10,3,10,185,8,10,1,10,3,10,188,8,10,1,10,
      1,10,5,10,192,8,10,10,10,12,10,195,9,10,1,10,1,10,5,10,199,8,10,10,
      10,12,10,202,9,10,1,10,3,10,205,8,10,1,10,3,10,208,8,10,1,10,1,10,
      5,10,212,8,10,10,10,12,10,215,9,10,1,10,3,10,218,8,10,1,10,3,10,221,
      8,10,1,10,1,10,5,10,225,8,10,10,10,12,10,228,9,10,1,10,3,10,231,8,
      10,1,10,3,10,234,8,10,1,10,1,10,1,10,5,10,239,8,10,10,10,12,10,242,
      9,10,1,10,3,10,245,8,10,3,10,247,8,10,1,11,1,11,1,12,1,12,1,13,1,13,
      1,14,1,14,3,14,257,8,14,1,15,4,15,260,8,15,11,15,12,15,261,1,16,1,
      16,1,17,1,17,1,17,5,17,269,8,17,10,17,12,17,272,9,17,1,17,3,17,275,
      8,17,1,17,1,17,1,18,1,18,1,19,4,19,282,8,19,11,19,12,19,283,1,20,1,
      20,5,20,288,8,20,10,20,12,20,291,9,20,1,20,1,20,1,21,1,21,1,21,5,21,
      298,8,21,10,21,12,21,301,9,21,1,21,5,21,304,8,21,10,21,12,21,307,9,
      21,3,21,309,8,21,1,22,1,22,1,23,1,23,1,23,0,0,24,0,2,4,6,8,10,12,14,
      16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,0,5,4,0,6,6,10,11,
      13,14,19,21,1,0,4,5,4,0,6,6,9,11,13,14,20,21,1,0,8,9,3,0,6,6,8,10,
      12,14,343,0,69,1,0,0,0,2,100,1,0,0,0,4,102,1,0,0,0,6,129,1,0,0,0,8,
      132,1,0,0,0,10,146,1,0,0,0,12,150,1,0,0,0,14,154,1,0,0,0,16,158,1,
      0,0,0,18,163,1,0,0,0,20,246,1,0,0,0,22,248,1,0,0,0,24,250,1,0,0,0,
      26,252,1,0,0,0,28,256,1,0,0,0,30,259,1,0,0,0,32,263,1,0,0,0,34,265,
      1,0,0,0,36,278,1,0,0,0,38,281,1,0,0,0,40,285,1,0,0,0,42,308,1,0,0,
      0,44,310,1,0,0,0,46,312,1,0,0,0,48,70,5,0,0,1,49,53,5,17,0,0,50,52,
      3,44,22,0,51,50,1,0,0,0,52,55,1,0,0,0,53,51,1,0,0,0,53,54,1,0,0,0,
      54,56,1,0,0,0,55,53,1,0,0,0,56,57,3,2,1,0,57,58,5,18,0,0,58,59,5,0,
      0,1,59,70,1,0,0,0,60,62,3,44,22,0,61,60,1,0,0,0,62,65,1,0,0,0,63,61,
      1,0,0,0,63,64,1,0,0,0,64,66,1,0,0,0,65,63,1,0,0,0,66,67,3,2,1,0,67,
      68,5,0,0,1,68,70,1,0,0,0,69,48,1,0,0,0,69,49,1,0,0,0,69,63,1,0,0,0,
      70,1,1,0,0,0,71,75,3,4,2,0,72,74,3,44,22,0,73,72,1,0,0,0,74,77,1,0,
      0,0,75,73,1,0,0,0,75,76,1,0,0,0,76,101,1,0,0,0,77,75,1,0,0,0,78,80,
      3,44,22,0,79,78,1,0,0,0,80,83,1,0,0,0,81,79,1,0,0,0,81,82,1,0,0,0,
      82,84,1,0,0,0,83,81,1,0,0,0,84,101,3,18,9,0,85,89,3,4,2,0,86,88,5,
      8,0,0,87,86,1,0,0,0,88,91,1,0,0,0,89,87,1,0,0,0,89,90,1,0,0,0,90,95,
      1,0,0,0,91,89,1,0,0,0,92,94,3,44,22,0,93,92,1,0,0,0,94,97,1,0,0,0,
      95,93,1,0,0,0,95,96,1,0,0,0,96,98,1,0,0,0,97,95,1,0,0,0,98,99,3,18,
      9,0,99,101,1,0,0,0,100,71,1,0,0,0,100,81,1,0,0,0,100,85,1,0,0,0,101,
      3,1,0,0,0,102,112,3,6,3,0,103,105,3,16,8,0,104,103,1,0,0,0,105,106,
      1,0,0,0,106,104,1,0,0,0,106,107,1,0,0,0,107,108,1,0,0,0,108,109,3,
      6,3,0,109,111,1,0,0,0,110,104,1,0,0,0,111,114,1,0,0,0,112,110,1,0,
      0,0,112,113,1,0,0,0,113,5,1,0,0,0,114,112,1,0,0,0,115,119,3,8,4,0,
      116,118,3,12,6,0,117,116,1,0,0,0,118,121,1,0,0,0,119,117,1,0,0,0,119,
      120,1,0,0,0,120,130,1,0,0,0,121,119,1,0,0,0,122,126,3,34,17,0,123,
      125,3,12,6,0,124,123,1,0,0,0,125,128,1,0,0,0,126,124,1,0,0,0,126,127,
      1,0,0,0,127,130,1,0,0,0,128,126,1,0,0,0,129,115,1,0,0,0,129,122,1,
      0,0,0,130,7,1,0,0,0,131,133,5,9,0,0,132,131,1,0,0,0,132,133,1,0,0,
      0,133,135,1,0,0,0,134,136,3,10,5,0,135,134,1,0,0,0,136,137,1,0,0,0,
      137,135,1,0,0,0,137,138,1,0,0,0,138,143,1,0,0,0,139,142,3,10,5,0,140,
      142,5,9,0,0,141,139,1,0,0,0,141,140,1,0,0,0,142,145,1,0,0,0,143,141,
      1,0,0,0,143,144,1,0,0,0,144,9,1,0,0,0,145,143,1,0,0,0,146,147,7,0,
      0,0,147,11,1,0,0,0,148,151,3,34,17,0,149,151,3,14,7,0,150,148,1,0,
      0,0,150,149,1,0,0,0,151,13,1,0,0,0,152,155,3,10,5,0,153,155,5,9,0,
      0,154,152,1,0,0,0,154,153,1,0,0,0,155,156,1,0,0,0,156,154,1,0,0,0,
      156,157,1,0,0,0,157,15,1,0,0,0,158,159,5,8,0,0,159,17,1,0,0,0,160,
      162,3,20,10,0,161,160,1,0,0,0,162,165,1,0,0,0,163,161,1,0,0,0,163,
      164,1,0,0,0,164,19,1,0,0,0,165,163,1,0,0,0,166,168,5,9,0,0,167,166,
      1,0,0,0,167,168,1,0,0,0,168,169,1,0,0,0,169,173,5,1,0,0,170,172,5,
      9,0,0,171,170,1,0,0,0,172,175,1,0,0,0,173,171,1,0,0,0,173,174,1,0,
      0,0,174,176,1,0,0,0,175,173,1,0,0,0,176,180,3,22,11,0,177,179,5,9,
      0,0,178,177,1,0,0,0,179,182,1,0,0,0,180,178,1,0,0,0,180,181,1,0,0,
      0,181,184,1,0,0,0,182,180,1,0,0,0,183,185,3,28,14,0,184,183,1,0,0,
      0,184,185,1,0,0,0,185,247,1,0,0,0,186,188,5,9,0,0,187,186,1,0,0,0,
      187,188,1,0,0,0,188,189,1,0,0,0,189,193,7,1,0,0,190,192,5,9,0,0,191,
      190,1,0,0,0,192,195,1,0,0,0,193,191,1,0,0,0,193,194,1,0,0,0,194,196,
      1,0,0,0,195,193,1,0,0,0,196,200,3,24,12,0,197,199,5,9,0,0,198,197,
      1,0,0,0,199,202,1,0,0,0,200,198,1,0,0,0,200,201,1,0,0,0,201,204,1,
      0,0,0,202,200,1,0,0,0,203,205,3,28,14,0,204,203,1,0,0,0,204,205,1,
      0,0,0,205,247,1,0,0,0,206,208,5,9,0,0,207,206,1,0,0,0,207,208,1,0,
      0,0,208,209,1,0,0,0,209,213,5,2,0,0,210,212,5,9,0,0,211,210,1,0,0,
      0,212,215,1,0,0,0,213,211,1,0,0,0,213,214,1,0,0,0,214,217,1,0,0,0,
      215,213,1,0,0,0,216,218,3,28,14,0,217,216,1,0,0,0,217,218,1,0,0,0,
      218,247,1,0,0,0,219,221,5,9,0,0,220,219,1,0,0,0,220,221,1,0,0,0,221,
      222,1,0,0,0,222,226,5,3,0,0,223,225,3,44,22,0,224,223,1,0,0,0,225,
      228,1,0,0,0,226,224,1,0,0,0,226,227,1,0,0,0,227,230,1,0,0,0,228,226,
      1,0,0,0,229,231,3,28,14,0,230,229,1,0,0,0,230,231,1,0,0,0,231,247,
      1,0,0,0,232,234,5,9,0,0,233,232,1,0,0,0,233,234,1,0,0,0,234,235,1,
      0,0,0,235,236,5,12,0,0,236,240,3,26,13,0,237,239,5,9,0,0,238,237,1,
      0,0,0,239,242,1,0,0,0,240,238,1,0,0,0,240,241,1,0,0,0,241,244,1,0,
      0,0,242,240,1,0,0,0,243,245,3,28,14,0,244,243,1,0,0,0,244,245,1,0,
      0,0,245,247,1,0,0,0,246,167,1,0,0,0,246,187,1,0,0,0,246,207,1,0,0,
      0,246,220,1,0,0,0,246,233,1,0,0,0,247,21,1,0,0,0,248,249,3,32,16,0,
      249,23,1,0,0,0,250,251,3,32,16,0,251,25,1,0,0,0,252,253,5,6,0,0,253,
      27,1,0,0,0,254,257,3,30,15,0,255,257,3,34,17,0,256,254,1,0,0,0,256,
      255,1,0,0,0,257,29,1,0,0,0,258,260,3,32,16,0,259,258,1,0,0,0,260,261,
      1,0,0,0,261,259,1,0,0,0,261,262,1,0,0,0,262,31,1,0,0,0,263,264,7,2,
      0,0,264,33,1,0,0,0,265,266,5,19,0,0,266,270,3,36,18,0,267,269,5,9,
      0,0,268,267,1,0,0,0,269,272,1,0,0,0,270,268,1,0,0,0,270,271,1,0,0,
      0,271,274,1,0,0,0,272,270,1,0,0,0,273,275,3,38,19,0,274,273,1,0,0,
      0,274,275,1,0,0,0,275,276,1,0,0,0,276,277,5,21,0,0,277,35,1,0,0,0,
      278,279,5,6,0,0,279,37,1,0,0,0,280,282,3,42,21,0,281,280,1,0,0,0,282,
      283,1,0,0,0,283,281,1,0,0,0,283,284,1,0,0,0,284,39,1,0,0,0,285,289,
      5,20,0,0,286,288,3,42,21,0,287,286,1,0,0,0,288,291,1,0,0,0,289,287,
      1,0,0,0,289,290,1,0,0,0,290,292,1,0,0,0,291,289,1,0,0,0,292,293,5,
      21,0,0,293,41,1,0,0,0,294,309,3,40,20,0,295,305,3,46,23,0,296,298,
      5,8,0,0,297,296,1,0,0,0,298,301,1,0,0,0,299,297,1,0,0,0,299,300,1,
      0,0,0,300,302,1,0,0,0,301,299,1,0,0,0,302,304,3,46,23,0,303,299,1,
      0,0,0,304,307,1,0,0,0,305,303,1,0,0,0,305,306,1,0,0,0,306,309,1,0,
      0,0,307,305,1,0,0,0,308,294,1,0,0,0,308,295,1,0,0,0,309,43,1,0,0,0,
      310,311,7,3,0,0,311,45,1,0,0,0,312,313,7,4,0,0,313,47,1,0,0,0,48,53,
      63,69,75,81,89,95,100,106,112,119,126,129,132,137,141,143,150,154,
      156,163,167,173,180,184,187,193,200,204,207,213,217,220,226,230,233,
      240,244,246,256,261,270,274,283,289,299,305,308
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class DocumentationContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(ApexdocParser.TOKEN_EOF, 0);
  TerminalNode? JAVADOC_START() => getToken(ApexdocParser.TOKEN_JAVADOC_START, 0);
  DocumentationContentContext? documentationContent() => getRuleContext<DocumentationContentContext>(0);
  TerminalNode? JAVADOC_END() => getToken(ApexdocParser.TOKEN_JAVADOC_END, 0);
  List<SkipWhitespaceContext> skipWhitespaces() => getRuleContexts<SkipWhitespaceContext>();
  SkipWhitespaceContext? skipWhitespace(int i) => getRuleContext<SkipWhitespaceContext>(i);
  DocumentationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DocumentationContentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionLineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionLineStartContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionLineNoSpaceNoAtContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionLineElementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionLineTextContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  DescriptionNewlineContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TagSectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BlockTagContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_blockTag;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ParamNameContext extends ParserRuleContext {
  BlockTagTextElementContext? blockTagTextElement() => getRuleContext<BlockTagTextElementContext>(0);
  ParamNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExceptionNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BlockTagNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BlockTagContentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BlockTagTextContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BlockTagTextElementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  InlineTagContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  InlineTagNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  InlineTagContentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BraceExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BraceContentContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  SkipWhitespaceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BraceTextContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  BlockTagContentContext? blockTagContent() => getRuleContext<BlockTagContentContext>(0);
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
  BlockTagContentContext? blockTagContent() => getRuleContext<BlockTagContentContext>(0);
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
  BlockTagContentContext? blockTagContent() => getRuleContext<BlockTagContentContext>(0);
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
  BlockTagContentContext? blockTagContent() => getRuleContext<BlockTagContentContext>(0);
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
  BlockTagContentContext? blockTagContent() => getRuleContext<BlockTagContentContext>(0);
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