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
                   TOKEN_TEXT_CONTENT = 10, TOKEN_AT = 11, TOKEN_STAR = 12, 
                   TOKEN_SLASH = 13, TOKEN_JAVADOC_START = 14, TOKEN_JAVADOC_END = 15, 
                   TOKEN_INLINE_TAG_START = 16, TOKEN_BRACE_OPEN = 17, TOKEN_BRACE_CLOSE = 18;

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
      "'@'", "'*'", "'/'", null, null, "'{@'", "'{'", "'}'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "PARAM", "RETURN", "EXAMPLE", "THROWS", "EXCEPTION", "NAME", 
      "JavaLetterOrDigit", "NEWLINE", "SPACE", "TEXT_CONTENT", "AT", "STAR", 
      "SLASH", "JAVADOC_START", "JAVADOC_END", "INLINE_TAG_START", "BRACE_OPEN", 
      "BRACE_CLOSE"
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
      state = 99;
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
        state = 87; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 86;
            match(TOKEN_NEWLINE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 89; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 94;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 91;
            skipWhitespace(); 
          }
          state = 96;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 6, context);
        }
        state = 97;
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
      state = 101;
      descriptionLine();
      state = 111;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 9, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 103; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          do {
            state = 102;
            descriptionNewline();
            state = 105; 
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
          } while (_la == TOKEN_NEWLINE);
          state = 107;
          descriptionLine(); 
        }
        state = 113;
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
      state = 128;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_NAME:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
      case TOKEN_BRACE_OPEN:
      case TOKEN_BRACE_CLOSE:
        enterOuterAlt(_localctx, 1);
        state = 114;
        descriptionLineStart();
        state = 118;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 115;
            descriptionLineElement(); 
          }
          state = 120;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 10, context);
        }
        break;
      case TOKEN_INLINE_TAG_START:
        enterOuterAlt(_localctx, 2);
        state = 121;
        inlineTag();
        state = 125;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 122;
            descriptionLineElement(); 
          }
          state = 127;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 11, context);
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

  DescriptionLineStartContext descriptionLineStart() {
    dynamic _localctx = DescriptionLineStartContext(context, state);
    enterRule(_localctx, 8, RULE_descriptionLineStart);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 131;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_SPACE) {
        state = 130;
        match(TOKEN_SPACE);
      }

      state = 134; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 133;
          descriptionLineNoSpaceNoAt();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 136; 
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
          case TOKEN_STAR:
          case TOKEN_SLASH:
          case TOKEN_BRACE_OPEN:
          case TOKEN_BRACE_CLOSE:
            state = 138;
            descriptionLineNoSpaceNoAt();
            break;
          case TOKEN_SPACE:
            state = 139;
            match(TOKEN_SPACE);
            break;
          case TOKEN_AT:
            state = 140;
            match(TOKEN_AT);
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
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN) | (BigInt.one << TOKEN_BRACE_CLOSE))) != BigInt.zero))) {
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
      switch (tokenStream.LA(1)!) {
      case TOKEN_INLINE_TAG_START:
        enterOuterAlt(_localctx, 1);
        state = 148;
        inlineTag();
        break;
      case TOKEN_NAME:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_AT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
      case TOKEN_BRACE_OPEN:
      case TOKEN_BRACE_CLOSE:
        enterOuterAlt(_localctx, 2);
        state = 149;
        descriptionLineText();
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

  DescriptionLineTextContext descriptionLineText() {
    dynamic _localctx = DescriptionLineTextContext(context, state);
    enterRule(_localctx, 14, RULE_descriptionLineText);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 155; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 155;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)!) {
          case TOKEN_NAME:
          case TOKEN_TEXT_CONTENT:
          case TOKEN_STAR:
          case TOKEN_SLASH:
          case TOKEN_BRACE_OPEN:
          case TOKEN_BRACE_CLOSE:
            state = 152;
            descriptionLineNoSpaceNoAt();
            break;
          case TOKEN_SPACE:
            state = 153;
            match(TOKEN_SPACE);
            break;
          case TOKEN_AT:
            state = 154;
            match(TOKEN_AT);
            break;
          default:
            throw NoViableAltException(this);
          }
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 157; 
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
      state = 159;
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
      state = 164;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_PARAM) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_EXAMPLE) | (BigInt.one << TOKEN_THROWS) | (BigInt.one << TOKEN_EXCEPTION) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_AT) | (BigInt.one << TOKEN_STAR))) != BigInt.zero)) {
        state = 161;
        blockTag();
        state = 166;
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
      state = 285;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 43, context)) {
      case 1:
        _localctx = ParamBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 170;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_STAR) {
          state = 167;
          match(TOKEN_STAR);
          state = 172;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 174;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 173;
          match(TOKEN_SPACE);
        }

        state = 176;
        match(TOKEN_PARAM);
        state = 178; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 177;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 180; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 23, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 182;
        paramName();
        state = 184; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 183;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 186; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 24, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 191;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 188;
            blockTagContent(); 
          }
          state = 193;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 25, context);
        }
        break;
      case 2:
        _localctx = ThrowsBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 197;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_STAR) {
          state = 194;
          match(TOKEN_STAR);
          state = 199;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 201;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 200;
          match(TOKEN_SPACE);
        }

        state = 203;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_THROWS || _la == TOKEN_EXCEPTION)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 205; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 204;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 207; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 209;
        exceptionName();
        state = 211; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 210;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 213; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 29, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 218;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 215;
            blockTagContent(); 
          }
          state = 220;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 30, context);
        }
        break;
      case 3:
        _localctx = ReturnBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 224;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_STAR) {
          state = 221;
          match(TOKEN_STAR);
          state = 226;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 228;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 227;
          match(TOKEN_SPACE);
        }

        state = 230;
        match(TOKEN_RETURN);
        state = 232; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 231;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 234; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 239;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 34, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 236;
            blockTagContent(); 
          }
          state = 241;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 34, context);
        }
        break;
      case 4:
        _localctx = ExampleBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 245;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_STAR) {
          state = 242;
          match(TOKEN_STAR);
          state = 247;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 249;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 248;
          match(TOKEN_SPACE);
        }

        state = 251;
        match(TOKEN_EXAMPLE);
        state = 253; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 252;
            skipWhitespace();
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 255; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 260;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 38, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 257;
            blockTagContent(); 
          }
          state = 262;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 38, context);
        }
        break;
      case 5:
        _localctx = DefaultBlockTagContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 266;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_STAR) {
          state = 263;
          match(TOKEN_STAR);
          state = 268;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 270;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SPACE) {
          state = 269;
          match(TOKEN_SPACE);
        }

        state = 272;
        match(TOKEN_AT);
        state = 273;
        blockTagName();
        state = 275; 
        errorHandler.sync(this);
        _alt = 1;
        do {
          switch (_alt) {
          case 1:
            state = 274;
            match(TOKEN_SPACE);
            break;
          default:
            throw NoViableAltException(this);
          }
          state = 277; 
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 41, context);
        } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
        state = 282;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 279;
            blockTagContent(); 
          }
          state = 284;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 42, context);
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
      state = 287;
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
      state = 289;
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
      state = 291;
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
      state = 296;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_NAME:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
      case TOKEN_BRACE_OPEN:
      case TOKEN_BRACE_CLOSE:
        enterOuterAlt(_localctx, 1);
        state = 293;
        blockTagText();
        break;
      case TOKEN_INLINE_TAG_START:
        enterOuterAlt(_localctx, 2);
        state = 294;
        inlineTag();
        break;
      case TOKEN_NEWLINE:
        enterOuterAlt(_localctx, 3);
        state = 295;
        match(TOKEN_NEWLINE);
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
      state = 299; 
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
        case 1:
          state = 298;
          blockTagTextElement();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 301; 
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
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
      state = 303;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN) | (BigInt.one << TOKEN_BRACE_CLOSE))) != BigInt.zero))) {
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
      state = 305;
      match(TOKEN_INLINE_TAG_START);
      state = 306;
      inlineTagName();
      state = 310;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 307;
          match(TOKEN_SPACE); 
        }
        state = 312;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 46, context);
      }
      state = 314;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN))) != BigInt.zero)) {
        state = 313;
        inlineTagContent();
      }

      state = 316;
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
      state = 318;
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
      state = 321; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 320;
        braceContent();
        state = 323; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN))) != BigInt.zero));
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
      state = 325;
      match(TOKEN_BRACE_OPEN);
      state = 329;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH) | (BigInt.one << TOKEN_BRACE_OPEN))) != BigInt.zero)) {
        state = 326;
        braceContent();
        state = 331;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 332;
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
      state = 348;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_BRACE_OPEN:
        enterOuterAlt(_localctx, 1);
        state = 334;
        braceExpression();
        break;
      case TOKEN_NAME:
      case TOKEN_NEWLINE:
      case TOKEN_SPACE:
      case TOKEN_TEXT_CONTENT:
      case TOKEN_STAR:
      case TOKEN_SLASH:
        enterOuterAlt(_localctx, 2);
        state = 335;
        braceText();
        state = 345;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 339;
            errorHandler.sync(this);
            _alt = interpreter!.adaptivePredict(tokenStream, 50, context);
            while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
              if (_alt == 1) {
                state = 336;
                match(TOKEN_NEWLINE); 
              }
              state = 341;
              errorHandler.sync(this);
              _alt = interpreter!.adaptivePredict(tokenStream, 50, context);
            }
            state = 342;
            braceText(); 
          }
          state = 347;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
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
      state = 350;
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
      state = 352;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_NAME) | (BigInt.one << TOKEN_NEWLINE) | (BigInt.one << TOKEN_SPACE) | (BigInt.one << TOKEN_TEXT_CONTENT) | (BigInt.one << TOKEN_STAR) | (BigInt.one << TOKEN_SLASH))) != BigInt.zero))) {
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

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
  	'\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{14}\u{165}\u{4}\u{2}\u{9}\u{2}'
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
  	'\u{6}\u{3}\u{5A}\u{A}\u{3}\u{D}\u{3}\u{E}\u{3}\u{5B}\u{3}\u{3}\u{7}\u{3}'
  	'\u{5F}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{62}\u{B}\u{3}\u{3}\u{3}\u{3}\u{3}'
  	'\u{5}\u{3}\u{66}\u{A}\u{3}\u{3}\u{4}\u{3}\u{4}\u{6}\u{4}\u{6A}\u{A}\u{4}'
  	'\u{D}\u{4}\u{E}\u{4}\u{6B}\u{3}\u{4}\u{3}\u{4}\u{7}\u{4}\u{70}\u{A}\u{4}'
  	'\u{C}\u{4}\u{E}\u{4}\u{73}\u{B}\u{4}\u{3}\u{5}\u{3}\u{5}\u{7}\u{5}\u{77}'
  	'\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{7A}\u{B}\u{5}\u{3}\u{5}\u{3}\u{5}\u{7}'
  	'\u{5}\u{7E}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{81}\u{B}\u{5}\u{5}\u{5}\u{83}'
  	'\u{A}\u{5}\u{3}\u{6}\u{5}\u{6}\u{86}\u{A}\u{6}\u{3}\u{6}\u{6}\u{6}\u{89}'
  	'\u{A}\u{6}\u{D}\u{6}\u{E}\u{6}\u{8A}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{7}'
  	'\u{6}\u{90}\u{A}\u{6}\u{C}\u{6}\u{E}\u{6}\u{93}\u{B}\u{6}\u{3}\u{7}\u{3}'
  	'\u{7}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}\u{99}\u{A}\u{8}\u{3}\u{9}\u{3}\u{9}'
  	'\u{3}\u{9}\u{6}\u{9}\u{9E}\u{A}\u{9}\u{D}\u{9}\u{E}\u{9}\u{9F}\u{3}\u{A}'
  	'\u{3}\u{A}\u{3}\u{B}\u{7}\u{B}\u{A5}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{A8}'
  	'\u{B}\u{B}\u{3}\u{C}\u{7}\u{C}\u{AB}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{AE}'
  	'\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{B1}\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{6}'
  	'\u{C}\u{B5}\u{A}\u{C}\u{D}\u{C}\u{E}\u{C}\u{B6}\u{3}\u{C}\u{3}\u{C}\u{6}'
  	'\u{C}\u{BB}\u{A}\u{C}\u{D}\u{C}\u{E}\u{C}\u{BC}\u{3}\u{C}\u{7}\u{C}\u{C0}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{C3}\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{C6}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{C9}\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{CC}'
  	'\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{6}\u{C}\u{D0}\u{A}\u{C}\u{D}\u{C}\u{E}'
  	'\u{C}\u{D1}\u{3}\u{C}\u{3}\u{C}\u{6}\u{C}\u{D6}\u{A}\u{C}\u{D}\u{C}\u{E}'
  	'\u{C}\u{D7}\u{3}\u{C}\u{7}\u{C}\u{DB}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{DE}'
  	'\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{E1}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{E4}'
  	'\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{E7}\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{6}'
  	'\u{C}\u{EB}\u{A}\u{C}\u{D}\u{C}\u{E}\u{C}\u{EC}\u{3}\u{C}\u{7}\u{C}\u{F0}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{F3}\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{F6}'
  	'\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{F9}\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{FC}'
  	'\u{A}\u{C}\u{3}\u{C}\u{3}\u{C}\u{6}\u{C}\u{100}\u{A}\u{C}\u{D}\u{C}\u{E}'
  	'\u{C}\u{101}\u{3}\u{C}\u{7}\u{C}\u{105}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}'
  	'\u{108}\u{B}\u{C}\u{3}\u{C}\u{7}\u{C}\u{10B}\u{A}\u{C}\u{C}\u{C}\u{E}'
  	'\u{C}\u{10E}\u{B}\u{C}\u{3}\u{C}\u{5}\u{C}\u{111}\u{A}\u{C}\u{3}\u{C}'
  	'\u{3}\u{C}\u{3}\u{C}\u{6}\u{C}\u{116}\u{A}\u{C}\u{D}\u{C}\u{E}\u{C}\u{117}'
  	'\u{3}\u{C}\u{7}\u{C}\u{11B}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{11E}\u{B}'
  	'\u{C}\u{5}\u{C}\u{120}\u{A}\u{C}\u{3}\u{D}\u{3}\u{D}\u{3}\u{E}\u{3}\u{E}'
  	'\u{3}\u{F}\u{3}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{12B}'
  	'\u{A}\u{10}\u{3}\u{11}\u{6}\u{11}\u{12E}\u{A}\u{11}\u{D}\u{11}\u{E}\u{11}'
  	'\u{12F}\u{3}\u{12}\u{3}\u{12}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{7}\u{13}'
  	'\u{137}\u{A}\u{13}\u{C}\u{13}\u{E}\u{13}\u{13A}\u{B}\u{13}\u{3}\u{13}'
  	'\u{5}\u{13}\u{13D}\u{A}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{14}\u{3}\u{14}'
  	'\u{3}\u{15}\u{6}\u{15}\u{144}\u{A}\u{15}\u{D}\u{15}\u{E}\u{15}\u{145}'
  	'\u{3}\u{16}\u{3}\u{16}\u{7}\u{16}\u{14A}\u{A}\u{16}\u{C}\u{16}\u{E}\u{16}'
  	'\u{14D}\u{B}\u{16}\u{3}\u{16}\u{3}\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}'
  	'\u{7}\u{17}\u{154}\u{A}\u{17}\u{C}\u{17}\u{E}\u{17}\u{157}\u{B}\u{17}'
  	'\u{3}\u{17}\u{7}\u{17}\u{15A}\u{A}\u{17}\u{C}\u{17}\u{E}\u{17}\u{15D}'
  	'\u{B}\u{17}\u{5}\u{17}\u{15F}\u{A}\u{17}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}'
  	'\u{3}\u{19}\u{3}\u{19}\u{2}\u{2}\u{1A}\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}'
  	'\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}\u{1E}\u{20}\u{22}\u{24}'
  	'\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{2}\u{7}\u{6}\u{2}\u{8}\u{8}\u{C}'
  	'\u{C}\u{E}\u{F}\u{13}\u{14}\u{3}\u{2}\u{6}\u{7}\u{6}\u{2}\u{8}\u{8}\u{B}'
  	'\u{C}\u{E}\u{F}\u{13}\u{14}\u{3}\u{2}\u{A}\u{B}\u{5}\u{2}\u{8}\u{8}\u{A}'
  	'\u{C}\u{E}\u{F}\u{2}\u{189}\u{2}\u{47}\u{3}\u{2}\u{2}\u{2}\u{4}\u{65}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6}\u{67}\u{3}\u{2}\u{2}\u{2}\u{8}\u{82}\u{3}\u{2}'
  	'\u{2}\u{2}\u{A}\u{85}\u{3}\u{2}\u{2}\u{2}\u{C}\u{94}\u{3}\u{2}\u{2}\u{2}'
  	'\u{E}\u{98}\u{3}\u{2}\u{2}\u{2}\u{10}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{12}'
  	'\u{A1}\u{3}\u{2}\u{2}\u{2}\u{14}\u{A6}\u{3}\u{2}\u{2}\u{2}\u{16}\u{11F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{18}\u{121}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{123}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1C}\u{125}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{12A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{20}\u{12D}\u{3}\u{2}\u{2}\u{2}\u{22}\u{131}\u{3}\u{2}\u{2}'
  	'\u{2}\u{24}\u{133}\u{3}\u{2}\u{2}\u{2}\u{26}\u{140}\u{3}\u{2}\u{2}\u{2}'
  	'\u{28}\u{143}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{147}\u{3}\u{2}\u{2}\u{2}\u{2C}'
  	'\u{15E}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{160}\u{3}\u{2}\u{2}\u{2}\u{30}\u{162}'
  	'\u{3}\u{2}\u{2}\u{2}\u{32}\u{48}\u{7}\u{2}\u{2}\u{3}\u{33}\u{37}\u{7}'
  	'\u{10}\u{2}\u{2}\u{34}\u{36}\u{5}\u{2E}\u{18}\u{2}\u{35}\u{34}\u{3}\u{2}'
  	'\u{2}\u{2}\u{36}\u{39}\u{3}\u{2}\u{2}\u{2}\u{37}\u{35}\u{3}\u{2}\u{2}'
  	'\u{2}\u{37}\u{38}\u{3}\u{2}\u{2}\u{2}\u{38}\u{3A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{39}\u{37}\u{3}\u{2}\u{2}\u{2}\u{3A}\u{3B}\u{5}\u{4}\u{3}\u{2}\u{3B}'
  	'\u{3C}\u{7}\u{11}\u{2}\u{2}\u{3C}\u{3D}\u{7}\u{2}\u{2}\u{3}\u{3D}\u{48}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3E}\u{40}\u{5}\u{2E}\u{18}\u{2}\u{3F}\u{3E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{40}\u{43}\u{3}\u{2}\u{2}\u{2}\u{41}\u{3F}\u{3}\u{2}'
  	'\u{2}\u{2}\u{41}\u{42}\u{3}\u{2}\u{2}\u{2}\u{42}\u{44}\u{3}\u{2}\u{2}'
  	'\u{2}\u{43}\u{41}\u{3}\u{2}\u{2}\u{2}\u{44}\u{45}\u{5}\u{4}\u{3}\u{2}'
  	'\u{45}\u{46}\u{7}\u{2}\u{2}\u{3}\u{46}\u{48}\u{3}\u{2}\u{2}\u{2}\u{47}'
  	'\u{32}\u{3}\u{2}\u{2}\u{2}\u{47}\u{33}\u{3}\u{2}\u{2}\u{2}\u{47}\u{41}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48}\u{3}\u{3}\u{2}\u{2}\u{2}\u{49}\u{4D}\u{5}'
  	'\u{6}\u{4}\u{2}\u{4A}\u{4C}\u{5}\u{2E}\u{18}\u{2}\u{4B}\u{4A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4C}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{4D}\u{4B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4D}\u{4E}\u{3}\u{2}\u{2}\u{2}\u{4E}\u{66}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4F}\u{4D}\u{3}\u{2}\u{2}\u{2}\u{50}\u{52}\u{5}\u{2E}\u{18}\u{2}\u{51}'
  	'\u{50}\u{3}\u{2}\u{2}\u{2}\u{52}\u{55}\u{3}\u{2}\u{2}\u{2}\u{53}\u{51}'
  	'\u{3}\u{2}\u{2}\u{2}\u{53}\u{54}\u{3}\u{2}\u{2}\u{2}\u{54}\u{56}\u{3}'
  	'\u{2}\u{2}\u{2}\u{55}\u{53}\u{3}\u{2}\u{2}\u{2}\u{56}\u{66}\u{5}\u{14}'
  	'\u{B}\u{2}\u{57}\u{59}\u{5}\u{6}\u{4}\u{2}\u{58}\u{5A}\u{7}\u{A}\u{2}'
  	'\u{2}\u{59}\u{58}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{5B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5B}\u{59}\u{3}\u{2}\u{2}\u{2}\u{5B}\u{5C}\u{3}\u{2}\u{2}\u{2}\u{5C}'
  	'\u{60}\u{3}\u{2}\u{2}\u{2}\u{5D}\u{5F}\u{5}\u{2E}\u{18}\u{2}\u{5E}\u{5D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5F}\u{62}\u{3}\u{2}\u{2}\u{2}\u{60}\u{5E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{60}\u{61}\u{3}\u{2}\u{2}\u{2}\u{61}\u{63}\u{3}\u{2}'
  	'\u{2}\u{2}\u{62}\u{60}\u{3}\u{2}\u{2}\u{2}\u{63}\u{64}\u{5}\u{14}\u{B}'
  	'\u{2}\u{64}\u{66}\u{3}\u{2}\u{2}\u{2}\u{65}\u{49}\u{3}\u{2}\u{2}\u{2}'
  	'\u{65}\u{53}\u{3}\u{2}\u{2}\u{2}\u{65}\u{57}\u{3}\u{2}\u{2}\u{2}\u{66}'
  	'\u{5}\u{3}\u{2}\u{2}\u{2}\u{67}\u{71}\u{5}\u{8}\u{5}\u{2}\u{68}\u{6A}'
  	'\u{5}\u{12}\u{A}\u{2}\u{69}\u{68}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{6B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{6B}\u{69}\u{3}\u{2}\u{2}\u{2}\u{6B}\u{6C}\u{3}\u{2}'
  	'\u{2}\u{2}\u{6C}\u{6D}\u{3}\u{2}\u{2}\u{2}\u{6D}\u{6E}\u{5}\u{8}\u{5}'
  	'\u{2}\u{6E}\u{70}\u{3}\u{2}\u{2}\u{2}\u{6F}\u{69}\u{3}\u{2}\u{2}\u{2}'
  	'\u{70}\u{73}\u{3}\u{2}\u{2}\u{2}\u{71}\u{6F}\u{3}\u{2}\u{2}\u{2}\u{71}'
  	'\u{72}\u{3}\u{2}\u{2}\u{2}\u{72}\u{7}\u{3}\u{2}\u{2}\u{2}\u{73}\u{71}'
  	'\u{3}\u{2}\u{2}\u{2}\u{74}\u{78}\u{5}\u{A}\u{6}\u{2}\u{75}\u{77}\u{5}'
  	'\u{E}\u{8}\u{2}\u{76}\u{75}\u{3}\u{2}\u{2}\u{2}\u{77}\u{7A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{78}\u{76}\u{3}\u{2}\u{2}\u{2}\u{78}\u{79}\u{3}\u{2}\u{2}'
  	'\u{2}\u{79}\u{83}\u{3}\u{2}\u{2}\u{2}\u{7A}\u{78}\u{3}\u{2}\u{2}\u{2}'
  	'\u{7B}\u{7F}\u{5}\u{24}\u{13}\u{2}\u{7C}\u{7E}\u{5}\u{E}\u{8}\u{2}\u{7D}'
  	'\u{7C}\u{3}\u{2}\u{2}\u{2}\u{7E}\u{81}\u{3}\u{2}\u{2}\u{2}\u{7F}\u{7D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{7F}\u{80}\u{3}\u{2}\u{2}\u{2}\u{80}\u{83}\u{3}'
  	'\u{2}\u{2}\u{2}\u{81}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{82}\u{74}\u{3}\u{2}'
  	'\u{2}\u{2}\u{82}\u{7B}\u{3}\u{2}\u{2}\u{2}\u{83}\u{9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{84}\u{86}\u{7}\u{B}\u{2}\u{2}\u{85}\u{84}\u{3}\u{2}\u{2}\u{2}'
  	'\u{85}\u{86}\u{3}\u{2}\u{2}\u{2}\u{86}\u{88}\u{3}\u{2}\u{2}\u{2}\u{87}'
  	'\u{89}\u{5}\u{C}\u{7}\u{2}\u{88}\u{87}\u{3}\u{2}\u{2}\u{2}\u{89}\u{8A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{8A}\u{88}\u{3}\u{2}\u{2}\u{2}\u{8A}\u{8B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{8B}\u{91}\u{3}\u{2}\u{2}\u{2}\u{8C}\u{90}\u{5}\u{C}'
  	'\u{7}\u{2}\u{8D}\u{90}\u{7}\u{B}\u{2}\u{2}\u{8E}\u{90}\u{7}\u{D}\u{2}'
  	'\u{2}\u{8F}\u{8C}\u{3}\u{2}\u{2}\u{2}\u{8F}\u{8D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{8F}\u{8E}\u{3}\u{2}\u{2}\u{2}\u{90}\u{93}\u{3}\u{2}\u{2}\u{2}\u{91}'
  	'\u{8F}\u{3}\u{2}\u{2}\u{2}\u{91}\u{92}\u{3}\u{2}\u{2}\u{2}\u{92}\u{B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{93}\u{91}\u{3}\u{2}\u{2}\u{2}\u{94}\u{95}\u{9}'
  	'\u{2}\u{2}\u{2}\u{95}\u{D}\u{3}\u{2}\u{2}\u{2}\u{96}\u{99}\u{5}\u{24}'
  	'\u{13}\u{2}\u{97}\u{99}\u{5}\u{10}\u{9}\u{2}\u{98}\u{96}\u{3}\u{2}\u{2}'
  	'\u{2}\u{98}\u{97}\u{3}\u{2}\u{2}\u{2}\u{99}\u{F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{9A}\u{9E}\u{5}\u{C}\u{7}\u{2}\u{9B}\u{9E}\u{7}\u{B}\u{2}\u{2}\u{9C}'
  	'\u{9E}\u{7}\u{D}\u{2}\u{2}\u{9D}\u{9A}\u{3}\u{2}\u{2}\u{2}\u{9D}\u{9B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{9D}\u{9C}\u{3}\u{2}\u{2}\u{2}\u{9E}\u{9F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{9F}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{9F}\u{A0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{A0}\u{11}\u{3}\u{2}\u{2}\u{2}\u{A1}\u{A2}\u{7}\u{A}\u{2}'
  	'\u{2}\u{A2}\u{13}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{A5}\u{5}\u{16}\u{C}\u{2}'
  	'\u{A4}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{A5}\u{A8}\u{3}\u{2}\u{2}\u{2}\u{A6}'
  	'\u{A4}\u{3}\u{2}\u{2}\u{2}\u{A6}\u{A7}\u{3}\u{2}\u{2}\u{2}\u{A7}\u{15}'
  	'\u{3}\u{2}\u{2}\u{2}\u{A8}\u{A6}\u{3}\u{2}\u{2}\u{2}\u{A9}\u{AB}\u{7}'
  	'\u{E}\u{2}\u{2}\u{AA}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{AB}\u{AE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{AC}\u{AA}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{AD}\u{3}\u{2}\u{2}'
  	'\u{2}\u{AD}\u{B0}\u{3}\u{2}\u{2}\u{2}\u{AE}\u{AC}\u{3}\u{2}\u{2}\u{2}'
  	'\u{AF}\u{B1}\u{7}\u{B}\u{2}\u{2}\u{B0}\u{AF}\u{3}\u{2}\u{2}\u{2}\u{B0}'
  	'\u{B1}\u{3}\u{2}\u{2}\u{2}\u{B1}\u{B2}\u{3}\u{2}\u{2}\u{2}\u{B2}\u{B4}'
  	'\u{7}\u{3}\u{2}\u{2}\u{B3}\u{B5}\u{7}\u{B}\u{2}\u{2}\u{B4}\u{B3}\u{3}'
  	'\u{2}\u{2}\u{2}\u{B5}\u{B6}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{B4}\u{3}\u{2}'
  	'\u{2}\u{2}\u{B6}\u{B7}\u{3}\u{2}\u{2}\u{2}\u{B7}\u{B8}\u{3}\u{2}\u{2}'
  	'\u{2}\u{B8}\u{BA}\u{5}\u{18}\u{D}\u{2}\u{B9}\u{BB}\u{7}\u{B}\u{2}\u{2}'
  	'\u{BA}\u{B9}\u{3}\u{2}\u{2}\u{2}\u{BB}\u{BC}\u{3}\u{2}\u{2}\u{2}\u{BC}'
  	'\u{BA}\u{3}\u{2}\u{2}\u{2}\u{BC}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{BD}\u{C1}'
  	'\u{3}\u{2}\u{2}\u{2}\u{BE}\u{C0}\u{5}\u{1E}\u{10}\u{2}\u{BF}\u{BE}\u{3}'
  	'\u{2}\u{2}\u{2}\u{C0}\u{C3}\u{3}\u{2}\u{2}\u{2}\u{C1}\u{BF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{C1}\u{C2}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{120}\u{3}\u{2}\u{2}'
  	'\u{2}\u{C3}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{C4}\u{C6}\u{7}\u{E}\u{2}\u{2}'
  	'\u{C5}\u{C4}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{C7}'
  	'\u{C5}\u{3}\u{2}\u{2}\u{2}\u{C7}\u{C8}\u{3}\u{2}\u{2}\u{2}\u{C8}\u{CB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{C9}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{CA}\u{CC}\u{7}'
  	'\u{B}\u{2}\u{2}\u{CB}\u{CA}\u{3}\u{2}\u{2}\u{2}\u{CB}\u{CC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{CC}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{CD}\u{CF}\u{9}\u{3}\u{2}'
  	'\u{2}\u{CE}\u{D0}\u{7}\u{B}\u{2}\u{2}\u{CF}\u{CE}\u{3}\u{2}\u{2}\u{2}'
  	'\u{D0}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{D1}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{D1}'
  	'\u{D2}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{D3}\u{3}\u{2}\u{2}\u{2}\u{D3}\u{D5}'
  	'\u{5}\u{1A}\u{E}\u{2}\u{D4}\u{D6}\u{7}\u{B}\u{2}\u{2}\u{D5}\u{D4}\u{3}'
  	'\u{2}\u{2}\u{2}\u{D6}\u{D7}\u{3}\u{2}\u{2}\u{2}\u{D7}\u{D5}\u{3}\u{2}'
  	'\u{2}\u{2}\u{D7}\u{D8}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{DC}\u{3}\u{2}\u{2}'
  	'\u{2}\u{D9}\u{DB}\u{5}\u{1E}\u{10}\u{2}\u{DA}\u{D9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{DB}\u{DE}\u{3}\u{2}\u{2}\u{2}\u{DC}\u{DA}\u{3}\u{2}\u{2}\u{2}\u{DC}'
  	'\u{DD}\u{3}\u{2}\u{2}\u{2}\u{DD}\u{120}\u{3}\u{2}\u{2}\u{2}\u{DE}\u{DC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{DF}\u{E1}\u{7}\u{E}\u{2}\u{2}\u{E0}\u{DF}\u{3}'
  	'\u{2}\u{2}\u{2}\u{E1}\u{E4}\u{3}\u{2}\u{2}\u{2}\u{E2}\u{E0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{E2}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{E3}\u{E6}\u{3}\u{2}\u{2}'
  	'\u{2}\u{E4}\u{E2}\u{3}\u{2}\u{2}\u{2}\u{E5}\u{E7}\u{7}\u{B}\u{2}\u{2}'
  	'\u{E6}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{E7}'
  	'\u{E8}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{EA}\u{7}\u{4}\u{2}\u{2}\u{E9}\u{EB}'
  	'\u{7}\u{B}\u{2}\u{2}\u{EA}\u{E9}\u{3}\u{2}\u{2}\u{2}\u{EB}\u{EC}\u{3}'
  	'\u{2}\u{2}\u{2}\u{EC}\u{EA}\u{3}\u{2}\u{2}\u{2}\u{EC}\u{ED}\u{3}\u{2}'
  	'\u{2}\u{2}\u{ED}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{EE}\u{F0}\u{5}\u{1E}\u{10}'
  	'\u{2}\u{EF}\u{EE}\u{3}\u{2}\u{2}\u{2}\u{F0}\u{F3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{F1}\u{EF}\u{3}\u{2}\u{2}\u{2}\u{F1}\u{F2}\u{3}\u{2}\u{2}\u{2}\u{F2}'
  	'\u{120}\u{3}\u{2}\u{2}\u{2}\u{F3}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{F4}\u{F6}'
  	'\u{7}\u{E}\u{2}\u{2}\u{F5}\u{F4}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{F9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{F7}\u{F5}\u{3}\u{2}\u{2}\u{2}\u{F7}\u{F8}\u{3}\u{2}'
  	'\u{2}\u{2}\u{F8}\u{FB}\u{3}\u{2}\u{2}\u{2}\u{F9}\u{F7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{FA}\u{FC}\u{7}\u{B}\u{2}\u{2}\u{FB}\u{FA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{FB}\u{FC}\u{3}\u{2}\u{2}\u{2}\u{FC}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{FD}'
  	'\u{FF}\u{7}\u{5}\u{2}\u{2}\u{FE}\u{100}\u{5}\u{2E}\u{18}\u{2}\u{FF}\u{FE}'
  	'\u{3}\u{2}\u{2}\u{2}\u{100}\u{101}\u{3}\u{2}\u{2}\u{2}\u{101}\u{FF}\u{3}'
  	'\u{2}\u{2}\u{2}\u{101}\u{102}\u{3}\u{2}\u{2}\u{2}\u{102}\u{106}\u{3}'
  	'\u{2}\u{2}\u{2}\u{103}\u{105}\u{5}\u{1E}\u{10}\u{2}\u{104}\u{103}\u{3}'
  	'\u{2}\u{2}\u{2}\u{105}\u{108}\u{3}\u{2}\u{2}\u{2}\u{106}\u{104}\u{3}'
  	'\u{2}\u{2}\u{2}\u{106}\u{107}\u{3}\u{2}\u{2}\u{2}\u{107}\u{120}\u{3}'
  	'\u{2}\u{2}\u{2}\u{108}\u{106}\u{3}\u{2}\u{2}\u{2}\u{109}\u{10B}\u{7}'
  	'\u{E}\u{2}\u{2}\u{10A}\u{109}\u{3}\u{2}\u{2}\u{2}\u{10B}\u{10E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{10C}\u{10A}\u{3}\u{2}\u{2}\u{2}\u{10C}\u{10D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{10D}\u{110}\u{3}\u{2}\u{2}\u{2}\u{10E}\u{10C}\u{3}'
  	'\u{2}\u{2}\u{2}\u{10F}\u{111}\u{7}\u{B}\u{2}\u{2}\u{110}\u{10F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{110}\u{111}\u{3}\u{2}\u{2}\u{2}\u{111}\u{112}\u{3}'
  	'\u{2}\u{2}\u{2}\u{112}\u{113}\u{7}\u{D}\u{2}\u{2}\u{113}\u{115}\u{5}'
  	'\u{1C}\u{F}\u{2}\u{114}\u{116}\u{7}\u{B}\u{2}\u{2}\u{115}\u{114}\u{3}'
  	'\u{2}\u{2}\u{2}\u{116}\u{117}\u{3}\u{2}\u{2}\u{2}\u{117}\u{115}\u{3}'
  	'\u{2}\u{2}\u{2}\u{117}\u{118}\u{3}\u{2}\u{2}\u{2}\u{118}\u{11C}\u{3}'
  	'\u{2}\u{2}\u{2}\u{119}\u{11B}\u{5}\u{1E}\u{10}\u{2}\u{11A}\u{119}\u{3}'
  	'\u{2}\u{2}\u{2}\u{11B}\u{11E}\u{3}\u{2}\u{2}\u{2}\u{11C}\u{11A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{11C}\u{11D}\u{3}\u{2}\u{2}\u{2}\u{11D}\u{120}\u{3}'
  	'\u{2}\u{2}\u{2}\u{11E}\u{11C}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{AC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{11F}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{E2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{11F}\u{F7}\u{3}\u{2}\u{2}\u{2}\u{11F}\u{10C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{120}\u{17}\u{3}\u{2}\u{2}\u{2}\u{121}\u{122}\u{5}\u{22}\u{12}\u{2}'
  	'\u{122}\u{19}\u{3}\u{2}\u{2}\u{2}\u{123}\u{124}\u{5}\u{22}\u{12}\u{2}'
  	'\u{124}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{125}\u{126}\u{7}\u{8}\u{2}\u{2}\u{126}'
  	'\u{1D}\u{3}\u{2}\u{2}\u{2}\u{127}\u{12B}\u{5}\u{20}\u{11}\u{2}\u{128}'
  	'\u{12B}\u{5}\u{24}\u{13}\u{2}\u{129}\u{12B}\u{7}\u{A}\u{2}\u{2}\u{12A}'
  	'\u{127}\u{3}\u{2}\u{2}\u{2}\u{12A}\u{128}\u{3}\u{2}\u{2}\u{2}\u{12A}'
  	'\u{129}\u{3}\u{2}\u{2}\u{2}\u{12B}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{12E}'
  	'\u{5}\u{22}\u{12}\u{2}\u{12D}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{12E}\u{12F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{12F}\u{12D}\u{3}\u{2}\u{2}\u{2}\u{12F}\u{130}'
  	'\u{3}\u{2}\u{2}\u{2}\u{130}\u{21}\u{3}\u{2}\u{2}\u{2}\u{131}\u{132}\u{9}'
  	'\u{4}\u{2}\u{2}\u{132}\u{23}\u{3}\u{2}\u{2}\u{2}\u{133}\u{134}\u{7}\u{12}'
  	'\u{2}\u{2}\u{134}\u{138}\u{5}\u{26}\u{14}\u{2}\u{135}\u{137}\u{7}\u{B}'
  	'\u{2}\u{2}\u{136}\u{135}\u{3}\u{2}\u{2}\u{2}\u{137}\u{13A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{138}\u{136}\u{3}\u{2}\u{2}\u{2}\u{138}\u{139}\u{3}\u{2}'
  	'\u{2}\u{2}\u{139}\u{13C}\u{3}\u{2}\u{2}\u{2}\u{13A}\u{138}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13B}\u{13D}\u{5}\u{28}\u{15}\u{2}\u{13C}\u{13B}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13C}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13D}\u{13E}\u{3}\u{2}'
  	'\u{2}\u{2}\u{13E}\u{13F}\u{7}\u{14}\u{2}\u{2}\u{13F}\u{25}\u{3}\u{2}'
  	'\u{2}\u{2}\u{140}\u{141}\u{7}\u{8}\u{2}\u{2}\u{141}\u{27}\u{3}\u{2}\u{2}'
  	'\u{2}\u{142}\u{144}\u{5}\u{2C}\u{17}\u{2}\u{143}\u{142}\u{3}\u{2}\u{2}'
  	'\u{2}\u{144}\u{145}\u{3}\u{2}\u{2}\u{2}\u{145}\u{143}\u{3}\u{2}\u{2}'
  	'\u{2}\u{145}\u{146}\u{3}\u{2}\u{2}\u{2}\u{146}\u{29}\u{3}\u{2}\u{2}\u{2}'
  	'\u{147}\u{14B}\u{7}\u{13}\u{2}\u{2}\u{148}\u{14A}\u{5}\u{2C}\u{17}\u{2}'
  	'\u{149}\u{148}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{14D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{14B}\u{149}\u{3}\u{2}\u{2}\u{2}\u{14B}\u{14C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{14C}\u{14E}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{14B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{14E}\u{14F}\u{7}\u{14}\u{2}\u{2}\u{14F}\u{2B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{150}\u{15F}\u{5}\u{2A}\u{16}\u{2}\u{151}\u{15B}\u{5}\u{30}\u{19}\u{2}'
  	'\u{152}\u{154}\u{7}\u{A}\u{2}\u{2}\u{153}\u{152}\u{3}\u{2}\u{2}\u{2}'
  	'\u{154}\u{157}\u{3}\u{2}\u{2}\u{2}\u{155}\u{153}\u{3}\u{2}\u{2}\u{2}'
  	'\u{155}\u{156}\u{3}\u{2}\u{2}\u{2}\u{156}\u{158}\u{3}\u{2}\u{2}\u{2}'
  	'\u{157}\u{155}\u{3}\u{2}\u{2}\u{2}\u{158}\u{15A}\u{5}\u{30}\u{19}\u{2}'
  	'\u{159}\u{155}\u{3}\u{2}\u{2}\u{2}\u{15A}\u{15D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15B}\u{159}\u{3}\u{2}\u{2}\u{2}\u{15B}\u{15C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15C}\u{15F}\u{3}\u{2}\u{2}\u{2}\u{15D}\u{15B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15E}\u{150}\u{3}\u{2}\u{2}\u{2}\u{15E}\u{151}\u{3}\u{2}\u{2}\u{2}'
  	'\u{15F}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{160}\u{161}\u{9}\u{5}\u{2}\u{2}\u{161}'
  	'\u{2F}\u{3}\u{2}\u{2}\u{2}\u{162}\u{163}\u{9}\u{6}\u{2}\u{2}\u{163}\u{31}'
  	'\u{3}\u{2}\u{2}\u{2}\u{37}\u{37}\u{41}\u{47}\u{4D}\u{53}\u{5B}\u{60}'
  	'\u{65}\u{6B}\u{71}\u{78}\u{7F}\u{82}\u{85}\u{8A}\u{8F}\u{91}\u{98}\u{9D}'
  	'\u{9F}\u{A6}\u{AC}\u{B0}\u{B6}\u{BC}\u{C1}\u{C7}\u{CB}\u{D1}\u{D7}\u{DC}'
  	'\u{E2}\u{E6}\u{EC}\u{F1}\u{F7}\u{FB}\u{101}\u{106}\u{10C}\u{110}\u{117}'
  	'\u{11C}\u{11F}\u{12A}\u{12F}\u{138}\u{13C}\u{145}\u{14B}\u{155}\u{15B}'
  	'\u{15E}';
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
  List<TerminalNode> ATs() => getTokens(ApexdocParser.TOKEN_AT);
  TerminalNode? AT(int i) => getToken(ApexdocParser.TOKEN_AT, i);
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
  List<TerminalNode> ATs() => getTokens(ApexdocParser.TOKEN_AT);
  TerminalNode? AT(int i) => getToken(ApexdocParser.TOKEN_AT, i);
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
  TerminalNode? NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);
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
  List<TerminalNode> STARs() => getTokens(ApexdocParser.TOKEN_STAR);
  TerminalNode? STAR(int i) => getToken(ApexdocParser.TOKEN_STAR, i);
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
  List<TerminalNode> STARs() => getTokens(ApexdocParser.TOKEN_STAR);
  TerminalNode? STAR(int i) => getToken(ApexdocParser.TOKEN_STAR, i);
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
  List<TerminalNode> STARs() => getTokens(ApexdocParser.TOKEN_STAR);
  TerminalNode? STAR(int i) => getToken(ApexdocParser.TOKEN_STAR, i);
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
  List<TerminalNode> STARs() => getTokens(ApexdocParser.TOKEN_STAR);
  TerminalNode? STAR(int i) => getToken(ApexdocParser.TOKEN_STAR, i);
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
  List<TerminalNode> STARs() => getTokens(ApexdocParser.TOKEN_STAR);
  TerminalNode? STAR(int i) => getToken(ApexdocParser.TOKEN_STAR, i);
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