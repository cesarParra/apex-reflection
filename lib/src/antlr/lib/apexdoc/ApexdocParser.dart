// Generated from lib/src/antlr/grammars/apexdoc/ApexdocParser.g4 by ANTLR 4.9.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'dart:io';

import 'ApexdocParserListener.dart';
import 'ApexdocParserBaseListener.dart';

const int RULE_documentation = 0,
    RULE_documentationContent = 1,
    RULE_description = 2,
    RULE_descriptionLine = 3,
    RULE_descriptionLineStart = 4,
    RULE_descriptionLineNoSpaceNoAt = 5,
    RULE_descriptionLineElement = 6,
    RULE_descriptionLineText = 7,
    RULE_descriptionNewline = 8,
    RULE_blockTag = 9,
    RULE_tagSection = 10,
    RULE_blockTagName = 11,
    RULE_blockTagContent = 12,
    RULE_blockTagText = 13,
    RULE_blockTagTextElement = 14,
    RULE_inlineTag = 15,
    RULE_inlineTagName = 16,
    RULE_inlineTagContent = 17,
    RULE_braceExpression = 18,
    RULE_braceContent = 19,
    RULE_skipWhitespace = 20,
    RULE_braceText = 21;

class ApexdocParser extends Parser {
  static final checkVersion =
      () => RuntimeMetaData.checkVersion('4.9.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache =
      PredictionContextCache();
  static const int TOKEN_NAME = 1,
      TOKEN_NEWLINE = 2,
      TOKEN_SPACE = 3,
      TOKEN_TEXT_CONTENT = 4,
      TOKEN_AT = 5,
      TOKEN_STAR = 6,
      TOKEN_SLASH = 7,
      TOKEN_JAVADOC_START = 8,
      TOKEN_JAVADOC_END = 9,
      TOKEN_INLINE_TAG_START = 10,
      TOKEN_BRACE_OPEN = 11,
      TOKEN_BRACE_CLOSE = 12;

  @override
  final List<String> ruleNames = [
    'documentation',
    'documentationContent',
    'description',
    'descriptionLine',
    'descriptionLineStart',
    'descriptionLineNoSpaceNoAt',
    'descriptionLineElement',
    'descriptionLineText',
    'descriptionNewline',
    'blockTag',
    'tagSection',
    'blockTagName',
    'blockTagContent',
    'blockTagText',
    'blockTagTextElement',
    'inlineTag',
    'inlineTagName',
    'inlineTagContent',
    'braceExpression',
    'braceContent',
    'skipWhitespace',
    'braceText'
  ];

  static final List<String?> _LITERAL_NAMES = [
    null,
    null,
    null,
    null,
    null,
    "'@'",
    "'*'",
    "'/'",
    null,
    null,
    "'{@'",
    "'{'",
    "'}'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
    null,
    "NAME",
    "NEWLINE",
    "SPACE",
    "TEXT_CONTENT",
    "AT",
    "STAR",
    "SLASH",
    "JAVADOC_START",
    "JAVADOC_END",
    "INLINE_TAG_START",
    "BRACE_OPEN",
    "BRACE_CLOSE"
  ];
  static final Vocabulary VOCABULARY =
      VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

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
    interpreter =
        ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  DocumentationContext documentation() {
    dynamic _localctx = DocumentationContext(context, state);
    enterRule(_localctx, 0, RULE_documentation);
    try {
      int _alt;
      state = 65;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 2, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 44;
          match(TOKEN_EOF);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 45;
          match(TOKEN_JAVADOC_START);
          state = 49;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 0, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 46;
              skipWhitespace();
            }
            state = 51;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 0, context);
          }
          state = 52;
          documentationContent();
          state = 53;
          match(TOKEN_JAVADOC_END);
          state = 54;
          match(TOKEN_EOF);
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 59;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 1, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 56;
              skipWhitespace();
            }
            state = 61;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 1, context);
          }
          state = 62;
          documentationContent();
          state = 63;
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
      state = 95;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 7, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 67;
          description();
          state = 71;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_NEWLINE || _la == TOKEN_SPACE) {
            state = 68;
            skipWhitespace();
            state = 73;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 77;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 4, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 74;
              skipWhitespace();
            }
            state = 79;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 4, context);
          }
          state = 80;
          tagSection();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 81;
          description();
          state = 83;
          errorHandler.sync(this);
          _alt = 1;
          do {
            switch (_alt) {
              case 1:
                state = 82;
                match(TOKEN_NEWLINE);
                break;
              default:
                throw NoViableAltException(this);
            }
            state = 85;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 5, context);
          } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
          state = 90;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 6, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 87;
              skipWhitespace();
            }
            state = 92;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 6, context);
          }
          state = 93;
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
      state = 97;
      descriptionLine();
      state = 107;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 9, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 99;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          do {
            state = 98;
            descriptionNewline();
            state = 101;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          } while (_la == TOKEN_NEWLINE);
          state = 103;
          descriptionLine();
        }
        state = 109;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 9, context);
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
      state = 124;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_NAME:
        case TOKEN_SPACE:
        case TOKEN_TEXT_CONTENT:
        case TOKEN_STAR:
        case TOKEN_SLASH:
        case TOKEN_BRACE_OPEN:
        case TOKEN_BRACE_CLOSE:
          enterOuterAlt(_localctx, 1);
          state = 110;
          descriptionLineStart();
          state = 114;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 10, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 111;
              descriptionLineElement();
            }
            state = 116;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 10, context);
          }
          break;
        case TOKEN_INLINE_TAG_START:
          enterOuterAlt(_localctx, 2);
          state = 117;
          inlineTag();
          state = 121;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 11, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 118;
              descriptionLineElement();
            }
            state = 123;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 11, context);
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
      state = 127;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_SPACE) {
        state = 126;
        match(TOKEN_SPACE);
      }

      state = 130;
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
          case 1:
            state = 129;
            descriptionLineNoSpaceNoAt();
            break;
          default:
            throw NoViableAltException(this);
        }
        state = 132;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 14, context);
      } while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER);
      state = 139;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 16, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 137;
          errorHandler.sync(this);
          switch (tokenStream.LA(1)) {
            case TOKEN_NAME:
            case TOKEN_TEXT_CONTENT:
            case TOKEN_STAR:
            case TOKEN_SLASH:
            case TOKEN_BRACE_OPEN:
            case TOKEN_BRACE_CLOSE:
              state = 134;
              descriptionLineNoSpaceNoAt();
              break;
            case TOKEN_SPACE:
              state = 135;
              match(TOKEN_SPACE);
              break;
            case TOKEN_AT:
              state = 136;
              match(TOKEN_AT);
              break;
            default:
              throw NoViableAltException(this);
          }
        }
        state = 141;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 16, context);
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
      state = 142;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NAME) |
                      (BigInt.one << TOKEN_TEXT_CONTENT) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_SLASH) |
                      (BigInt.one << TOKEN_BRACE_OPEN) |
                      (BigInt.one << TOKEN_BRACE_CLOSE))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
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
      state = 146;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_INLINE_TAG_START:
          enterOuterAlt(_localctx, 1);
          state = 144;
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
          state = 145;
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
      state = 151;
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
          case 1:
            state = 151;
            errorHandler.sync(this);
            switch (tokenStream.LA(1)) {
              case TOKEN_NAME:
              case TOKEN_TEXT_CONTENT:
              case TOKEN_STAR:
              case TOKEN_SLASH:
              case TOKEN_BRACE_OPEN:
              case TOKEN_BRACE_CLOSE:
                state = 148;
                descriptionLineNoSpaceNoAt();
                break;
              case TOKEN_SPACE:
                state = 149;
                match(TOKEN_SPACE);
                break;
              case TOKEN_AT:
                state = 150;
                match(TOKEN_AT);
                break;
              default:
                throw NoViableAltException(this);
            }
            break;
          default:
            throw NoViableAltException(this);
        }
        state = 153;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 19, context);
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
      state = 155;
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

  BlockTagContext blockTag() {
    dynamic _localctx = BlockTagContext(context, state);
    enterRule(_localctx, 18, RULE_blockTag);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 160;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_STAR) {
        state = 157;
        match(TOKEN_STAR);
        state = 162;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 164;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_SPACE) {
        state = 163;
        match(TOKEN_SPACE);
      }

      state = 166;
      match(TOKEN_AT);
      state = 167;
      blockTagName();
      state = 169;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 22, context)) {
        case 1:
          state = 168;
          match(TOKEN_SPACE);
          break;
      }
      state = 174;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 23, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 171;
          blockTagContent();
        }
        state = 176;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 23, context);
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

  TagSectionContext tagSection() {
    dynamic _localctx = TagSectionContext(context, state);
    enterRule(_localctx, 20, RULE_tagSection);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 180;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_SPACE) |
                      (BigInt.one << TOKEN_AT) |
                      (BigInt.one << TOKEN_STAR))) !=
              BigInt.zero)) {
        state = 177;
        blockTag();
        state = 182;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
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

  BlockTagNameContext blockTagName() {
    dynamic _localctx = BlockTagNameContext(context, state);
    enterRule(_localctx, 22, RULE_blockTagName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 183;
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
    enterRule(_localctx, 24, RULE_blockTagContent);
    try {
      state = 188;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_NAME:
        case TOKEN_SPACE:
        case TOKEN_TEXT_CONTENT:
        case TOKEN_STAR:
        case TOKEN_SLASH:
        case TOKEN_BRACE_OPEN:
        case TOKEN_BRACE_CLOSE:
          enterOuterAlt(_localctx, 1);
          state = 185;
          blockTagText();
          break;
        case TOKEN_INLINE_TAG_START:
          enterOuterAlt(_localctx, 2);
          state = 186;
          inlineTag();
          break;
        case TOKEN_NEWLINE:
          enterOuterAlt(_localctx, 3);
          state = 187;
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
    enterRule(_localctx, 26, RULE_blockTagText);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 191;
      errorHandler.sync(this);
      _alt = 1;
      do {
        switch (_alt) {
          case 1:
            state = 190;
            blockTagTextElement();
            break;
          default:
            throw NoViableAltException(this);
        }
        state = 193;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 26, context);
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
    enterRule(_localctx, 28, RULE_blockTagTextElement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 195;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NAME) |
                      (BigInt.one << TOKEN_SPACE) |
                      (BigInt.one << TOKEN_TEXT_CONTENT) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_SLASH) |
                      (BigInt.one << TOKEN_BRACE_OPEN) |
                      (BigInt.one << TOKEN_BRACE_CLOSE))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
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
    enterRule(_localctx, 30, RULE_inlineTag);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 197;
      match(TOKEN_INLINE_TAG_START);
      state = 198;
      inlineTagName();
      state = 202;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 27, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 199;
          match(TOKEN_SPACE);
        }
        state = 204;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 27, context);
      }
      state = 206;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NAME) |
                      (BigInt.one << TOKEN_NEWLINE) |
                      (BigInt.one << TOKEN_SPACE) |
                      (BigInt.one << TOKEN_TEXT_CONTENT) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_SLASH) |
                      (BigInt.one << TOKEN_BRACE_OPEN))) !=
              BigInt.zero)) {
        state = 205;
        inlineTagContent();
      }

      state = 208;
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
    enterRule(_localctx, 32, RULE_inlineTagName);
    try {
      enterOuterAlt(_localctx, 1);
      state = 210;
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
    enterRule(_localctx, 34, RULE_inlineTagContent);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 213;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      do {
        state = 212;
        braceContent();
        state = 215;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      } while ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NAME) |
                      (BigInt.one << TOKEN_NEWLINE) |
                      (BigInt.one << TOKEN_SPACE) |
                      (BigInt.one << TOKEN_TEXT_CONTENT) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_SLASH) |
                      (BigInt.one << TOKEN_BRACE_OPEN))) !=
              BigInt.zero));
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
    enterRule(_localctx, 36, RULE_braceExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 217;
      match(TOKEN_BRACE_OPEN);
      state = 221;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NAME) |
                      (BigInt.one << TOKEN_NEWLINE) |
                      (BigInt.one << TOKEN_SPACE) |
                      (BigInt.one << TOKEN_TEXT_CONTENT) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_SLASH) |
                      (BigInt.one << TOKEN_BRACE_OPEN))) !=
              BigInt.zero)) {
        state = 218;
        braceContent();
        state = 223;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 224;
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
    enterRule(_localctx, 38, RULE_braceContent);
    try {
      int _alt;
      state = 240;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_BRACE_OPEN:
          enterOuterAlt(_localctx, 1);
          state = 226;
          braceExpression();
          break;
        case TOKEN_NAME:
        case TOKEN_NEWLINE:
        case TOKEN_SPACE:
        case TOKEN_TEXT_CONTENT:
        case TOKEN_STAR:
        case TOKEN_SLASH:
          enterOuterAlt(_localctx, 2);
          state = 227;
          braceText();
          state = 237;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 32, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 231;
              errorHandler.sync(this);
              _alt = interpreter.adaptivePredict(tokenStream, 31, context);
              while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
                if (_alt == 1) {
                  state = 228;
                  match(TOKEN_NEWLINE);
                }
                state = 233;
                errorHandler.sync(this);
                _alt = interpreter.adaptivePredict(tokenStream, 31, context);
              }
              state = 234;
              braceText();
            }
            state = 239;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 32, context);
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
    enterRule(_localctx, 40, RULE_skipWhitespace);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 242;
      _la = tokenStream.LA(1);
      if (!(_la == TOKEN_NEWLINE || _la == TOKEN_SPACE)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
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
    enterRule(_localctx, 42, RULE_braceText);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 244;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NAME) |
                      (BigInt.one << TOKEN_NEWLINE) |
                      (BigInt.one << TOKEN_SPACE) |
                      (BigInt.one << TOKEN_TEXT_CONTENT) |
                      (BigInt.one << TOKEN_STAR) |
                      (BigInt.one << TOKEN_SLASH))) !=
              BigInt.zero))) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
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
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{E}\u{F9}\u{4}\u{2}\u{9}\u{2}'
      '\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
      '\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
      '\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
      '\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
      '\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
      '\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
      '\u{9}\u{17}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}\u{2}\u{32}\u{A}\u{2}\u{C}'
      '\u{2}\u{E}\u{2}\u{35}\u{B}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}'
      '\u{3}\u{2}\u{7}\u{2}\u{3C}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{3F}\u{B}\u{2}'
      '\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{5}\u{2}\u{44}\u{A}\u{2}\u{3}\u{3}\u{3}'
      '\u{3}\u{7}\u{3}\u{48}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{4B}\u{B}\u{3}\u{3}'
      '\u{3}\u{7}\u{3}\u{4E}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{51}\u{B}\u{3}\u{3}'
      '\u{3}\u{3}\u{3}\u{3}\u{3}\u{6}\u{3}\u{56}\u{A}\u{3}\u{D}\u{3}\u{E}\u{3}'
      '\u{57}\u{3}\u{3}\u{7}\u{3}\u{5B}\u{A}\u{3}\u{C}\u{3}\u{E}\u{3}\u{5E}'
      '\u{B}\u{3}\u{3}\u{3}\u{3}\u{3}\u{5}\u{3}\u{62}\u{A}\u{3}\u{3}\u{4}\u{3}'
      '\u{4}\u{6}\u{4}\u{66}\u{A}\u{4}\u{D}\u{4}\u{E}\u{4}\u{67}\u{3}\u{4}\u{3}'
      '\u{4}\u{7}\u{4}\u{6C}\u{A}\u{4}\u{C}\u{4}\u{E}\u{4}\u{6F}\u{B}\u{4}\u{3}'
      '\u{5}\u{3}\u{5}\u{7}\u{5}\u{73}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{76}\u{B}'
      '\u{5}\u{3}\u{5}\u{3}\u{5}\u{7}\u{5}\u{7A}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}'
      '\u{7D}\u{B}\u{5}\u{5}\u{5}\u{7F}\u{A}\u{5}\u{3}\u{6}\u{5}\u{6}\u{82}'
      '\u{A}\u{6}\u{3}\u{6}\u{6}\u{6}\u{85}\u{A}\u{6}\u{D}\u{6}\u{E}\u{6}\u{86}'
      '\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{7}\u{6}\u{8C}\u{A}\u{6}\u{C}\u{6}\u{E}'
      '\u{6}\u{8F}\u{B}\u{6}\u{3}\u{7}\u{3}\u{7}\u{3}\u{8}\u{3}\u{8}\u{5}\u{8}'
      '\u{95}\u{A}\u{8}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{6}\u{9}\u{9A}\u{A}\u{9}'
      '\u{D}\u{9}\u{E}\u{9}\u{9B}\u{3}\u{A}\u{3}\u{A}\u{3}\u{B}\u{7}\u{B}\u{A1}'
      '\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{A4}\u{B}\u{B}\u{3}\u{B}\u{5}\u{B}\u{A7}'
      '\u{A}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{B}\u{5}\u{B}\u{AC}\u{A}\u{B}\u{3}'
      '\u{B}\u{7}\u{B}\u{AF}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{B2}\u{B}\u{B}\u{3}'
      '\u{C}\u{7}\u{C}\u{B5}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{B8}\u{B}\u{C}\u{3}'
      '\u{D}\u{3}\u{D}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{5}\u{E}\u{BF}\u{A}\u{E}'
      '\u{3}\u{F}\u{6}\u{F}\u{C2}\u{A}\u{F}\u{D}\u{F}\u{E}\u{F}\u{C3}\u{3}\u{10}'
      '\u{3}\u{10}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{7}\u{11}\u{CB}\u{A}\u{11}'
      '\u{C}\u{11}\u{E}\u{11}\u{CE}\u{B}\u{11}\u{3}\u{11}\u{5}\u{11}\u{D1}\u{A}'
      '\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{12}\u{3}\u{12}\u{3}\u{13}\u{6}\u{13}'
      '\u{D8}\u{A}\u{13}\u{D}\u{13}\u{E}\u{13}\u{D9}\u{3}\u{14}\u{3}\u{14}\u{7}'
      '\u{14}\u{DE}\u{A}\u{14}\u{C}\u{14}\u{E}\u{14}\u{E1}\u{B}\u{14}\u{3}\u{14}'
      '\u{3}\u{14}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{7}\u{15}\u{E8}\u{A}\u{15}'
      '\u{C}\u{15}\u{E}\u{15}\u{EB}\u{B}\u{15}\u{3}\u{15}\u{7}\u{15}\u{EE}\u{A}'
      '\u{15}\u{C}\u{15}\u{E}\u{15}\u{F1}\u{B}\u{15}\u{5}\u{15}\u{F3}\u{A}\u{15}'
      '\u{3}\u{16}\u{3}\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{2}\u{2}\u{18}'
      '\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}'
      '\u{1C}\u{1E}\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2}\u{6}\u{6}'
      '\u{2}\u{3}\u{3}\u{6}\u{6}\u{8}\u{9}\u{D}\u{E}\u{6}\u{2}\u{3}\u{3}\u{5}'
      '\u{6}\u{8}\u{9}\u{D}\u{E}\u{3}\u{2}\u{4}\u{5}\u{4}\u{2}\u{3}\u{6}\u{8}'
      '\u{9}\u{2}\u{109}\u{2}\u{43}\u{3}\u{2}\u{2}\u{2}\u{4}\u{61}\u{3}\u{2}'
      '\u{2}\u{2}\u{6}\u{63}\u{3}\u{2}\u{2}\u{2}\u{8}\u{7E}\u{3}\u{2}\u{2}\u{2}'
      '\u{A}\u{81}\u{3}\u{2}\u{2}\u{2}\u{C}\u{90}\u{3}\u{2}\u{2}\u{2}\u{E}\u{94}'
      '\u{3}\u{2}\u{2}\u{2}\u{10}\u{99}\u{3}\u{2}\u{2}\u{2}\u{12}\u{9D}\u{3}'
      '\u{2}\u{2}\u{2}\u{14}\u{A2}\u{3}\u{2}\u{2}\u{2}\u{16}\u{B6}\u{3}\u{2}'
      '\u{2}\u{2}\u{18}\u{B9}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{BE}\u{3}\u{2}\u{2}'
      '\u{2}\u{1C}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{C5}\u{3}\u{2}\u{2}\u{2}'
      '\u{20}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{22}\u{D4}\u{3}\u{2}\u{2}\u{2}\u{24}'
      '\u{D7}\u{3}\u{2}\u{2}\u{2}\u{26}\u{DB}\u{3}\u{2}\u{2}\u{2}\u{28}\u{F2}'
      '\u{3}\u{2}\u{2}\u{2}\u{2A}\u{F4}\u{3}\u{2}\u{2}\u{2}\u{2C}\u{F6}\u{3}'
      '\u{2}\u{2}\u{2}\u{2E}\u{44}\u{7}\u{2}\u{2}\u{3}\u{2F}\u{33}\u{7}\u{A}'
      '\u{2}\u{2}\u{30}\u{32}\u{5}\u{2A}\u{16}\u{2}\u{31}\u{30}\u{3}\u{2}\u{2}'
      '\u{2}\u{32}\u{35}\u{3}\u{2}\u{2}\u{2}\u{33}\u{31}\u{3}\u{2}\u{2}\u{2}'
      '\u{33}\u{34}\u{3}\u{2}\u{2}\u{2}\u{34}\u{36}\u{3}\u{2}\u{2}\u{2}\u{35}'
      '\u{33}\u{3}\u{2}\u{2}\u{2}\u{36}\u{37}\u{5}\u{4}\u{3}\u{2}\u{37}\u{38}'
      '\u{7}\u{B}\u{2}\u{2}\u{38}\u{39}\u{7}\u{2}\u{2}\u{3}\u{39}\u{44}\u{3}'
      '\u{2}\u{2}\u{2}\u{3A}\u{3C}\u{5}\u{2A}\u{16}\u{2}\u{3B}\u{3A}\u{3}\u{2}'
      '\u{2}\u{2}\u{3C}\u{3F}\u{3}\u{2}\u{2}\u{2}\u{3D}\u{3B}\u{3}\u{2}\u{2}'
      '\u{2}\u{3D}\u{3E}\u{3}\u{2}\u{2}\u{2}\u{3E}\u{40}\u{3}\u{2}\u{2}\u{2}'
      '\u{3F}\u{3D}\u{3}\u{2}\u{2}\u{2}\u{40}\u{41}\u{5}\u{4}\u{3}\u{2}\u{41}'
      '\u{42}\u{7}\u{2}\u{2}\u{3}\u{42}\u{44}\u{3}\u{2}\u{2}\u{2}\u{43}\u{2E}'
      '\u{3}\u{2}\u{2}\u{2}\u{43}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{43}\u{3D}\u{3}'
      '\u{2}\u{2}\u{2}\u{44}\u{3}\u{3}\u{2}\u{2}\u{2}\u{45}\u{49}\u{5}\u{6}'
      '\u{4}\u{2}\u{46}\u{48}\u{5}\u{2A}\u{16}\u{2}\u{47}\u{46}\u{3}\u{2}\u{2}'
      '\u{2}\u{48}\u{4B}\u{3}\u{2}\u{2}\u{2}\u{49}\u{47}\u{3}\u{2}\u{2}\u{2}'
      '\u{49}\u{4A}\u{3}\u{2}\u{2}\u{2}\u{4A}\u{62}\u{3}\u{2}\u{2}\u{2}\u{4B}'
      '\u{49}\u{3}\u{2}\u{2}\u{2}\u{4C}\u{4E}\u{5}\u{2A}\u{16}\u{2}\u{4D}\u{4C}'
      '\u{3}\u{2}\u{2}\u{2}\u{4E}\u{51}\u{3}\u{2}\u{2}\u{2}\u{4F}\u{4D}\u{3}'
      '\u{2}\u{2}\u{2}\u{4F}\u{50}\u{3}\u{2}\u{2}\u{2}\u{50}\u{52}\u{3}\u{2}'
      '\u{2}\u{2}\u{51}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{52}\u{62}\u{5}\u{16}\u{C}'
      '\u{2}\u{53}\u{55}\u{5}\u{6}\u{4}\u{2}\u{54}\u{56}\u{7}\u{4}\u{2}\u{2}'
      '\u{55}\u{54}\u{3}\u{2}\u{2}\u{2}\u{56}\u{57}\u{3}\u{2}\u{2}\u{2}\u{57}'
      '\u{55}\u{3}\u{2}\u{2}\u{2}\u{57}\u{58}\u{3}\u{2}\u{2}\u{2}\u{58}\u{5C}'
      '\u{3}\u{2}\u{2}\u{2}\u{59}\u{5B}\u{5}\u{2A}\u{16}\u{2}\u{5A}\u{59}\u{3}'
      '\u{2}\u{2}\u{2}\u{5B}\u{5E}\u{3}\u{2}\u{2}\u{2}\u{5C}\u{5A}\u{3}\u{2}'
      '\u{2}\u{2}\u{5C}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{5D}\u{5F}\u{3}\u{2}\u{2}'
      '\u{2}\u{5E}\u{5C}\u{3}\u{2}\u{2}\u{2}\u{5F}\u{60}\u{5}\u{16}\u{C}\u{2}'
      '\u{60}\u{62}\u{3}\u{2}\u{2}\u{2}\u{61}\u{45}\u{3}\u{2}\u{2}\u{2}\u{61}'
      '\u{4F}\u{3}\u{2}\u{2}\u{2}\u{61}\u{53}\u{3}\u{2}\u{2}\u{2}\u{62}\u{5}'
      '\u{3}\u{2}\u{2}\u{2}\u{63}\u{6D}\u{5}\u{8}\u{5}\u{2}\u{64}\u{66}\u{5}'
      '\u{12}\u{A}\u{2}\u{65}\u{64}\u{3}\u{2}\u{2}\u{2}\u{66}\u{67}\u{3}\u{2}'
      '\u{2}\u{2}\u{67}\u{65}\u{3}\u{2}\u{2}\u{2}\u{67}\u{68}\u{3}\u{2}\u{2}'
      '\u{2}\u{68}\u{69}\u{3}\u{2}\u{2}\u{2}\u{69}\u{6A}\u{5}\u{8}\u{5}\u{2}'
      '\u{6A}\u{6C}\u{3}\u{2}\u{2}\u{2}\u{6B}\u{65}\u{3}\u{2}\u{2}\u{2}\u{6C}'
      '\u{6F}\u{3}\u{2}\u{2}\u{2}\u{6D}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{6D}\u{6E}'
      '\u{3}\u{2}\u{2}\u{2}\u{6E}\u{7}\u{3}\u{2}\u{2}\u{2}\u{6F}\u{6D}\u{3}'
      '\u{2}\u{2}\u{2}\u{70}\u{74}\u{5}\u{A}\u{6}\u{2}\u{71}\u{73}\u{5}\u{E}'
      '\u{8}\u{2}\u{72}\u{71}\u{3}\u{2}\u{2}\u{2}\u{73}\u{76}\u{3}\u{2}\u{2}'
      '\u{2}\u{74}\u{72}\u{3}\u{2}\u{2}\u{2}\u{74}\u{75}\u{3}\u{2}\u{2}\u{2}'
      '\u{75}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{76}\u{74}\u{3}\u{2}\u{2}\u{2}\u{77}'
      '\u{7B}\u{5}\u{20}\u{11}\u{2}\u{78}\u{7A}\u{5}\u{E}\u{8}\u{2}\u{79}\u{78}'
      '\u{3}\u{2}\u{2}\u{2}\u{7A}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{7B}\u{79}\u{3}'
      '\u{2}\u{2}\u{2}\u{7B}\u{7C}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{7F}\u{3}\u{2}'
      '\u{2}\u{2}\u{7D}\u{7B}\u{3}\u{2}\u{2}\u{2}\u{7E}\u{70}\u{3}\u{2}\u{2}'
      '\u{2}\u{7E}\u{77}\u{3}\u{2}\u{2}\u{2}\u{7F}\u{9}\u{3}\u{2}\u{2}\u{2}'
      '\u{80}\u{82}\u{7}\u{5}\u{2}\u{2}\u{81}\u{80}\u{3}\u{2}\u{2}\u{2}\u{81}'
      '\u{82}\u{3}\u{2}\u{2}\u{2}\u{82}\u{84}\u{3}\u{2}\u{2}\u{2}\u{83}\u{85}'
      '\u{5}\u{C}\u{7}\u{2}\u{84}\u{83}\u{3}\u{2}\u{2}\u{2}\u{85}\u{86}\u{3}'
      '\u{2}\u{2}\u{2}\u{86}\u{84}\u{3}\u{2}\u{2}\u{2}\u{86}\u{87}\u{3}\u{2}'
      '\u{2}\u{2}\u{87}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{88}\u{8C}\u{5}\u{C}\u{7}'
      '\u{2}\u{89}\u{8C}\u{7}\u{5}\u{2}\u{2}\u{8A}\u{8C}\u{7}\u{7}\u{2}\u{2}'
      '\u{8B}\u{88}\u{3}\u{2}\u{2}\u{2}\u{8B}\u{89}\u{3}\u{2}\u{2}\u{2}\u{8B}'
      '\u{8A}\u{3}\u{2}\u{2}\u{2}\u{8C}\u{8F}\u{3}\u{2}\u{2}\u{2}\u{8D}\u{8B}'
      '\u{3}\u{2}\u{2}\u{2}\u{8D}\u{8E}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{B}\u{3}'
      '\u{2}\u{2}\u{2}\u{8F}\u{8D}\u{3}\u{2}\u{2}\u{2}\u{90}\u{91}\u{9}\u{2}'
      '\u{2}\u{2}\u{91}\u{D}\u{3}\u{2}\u{2}\u{2}\u{92}\u{95}\u{5}\u{20}\u{11}'
      '\u{2}\u{93}\u{95}\u{5}\u{10}\u{9}\u{2}\u{94}\u{92}\u{3}\u{2}\u{2}\u{2}'
      '\u{94}\u{93}\u{3}\u{2}\u{2}\u{2}\u{95}\u{F}\u{3}\u{2}\u{2}\u{2}\u{96}'
      '\u{9A}\u{5}\u{C}\u{7}\u{2}\u{97}\u{9A}\u{7}\u{5}\u{2}\u{2}\u{98}\u{9A}'
      '\u{7}\u{7}\u{2}\u{2}\u{99}\u{96}\u{3}\u{2}\u{2}\u{2}\u{99}\u{97}\u{3}'
      '\u{2}\u{2}\u{2}\u{99}\u{98}\u{3}\u{2}\u{2}\u{2}\u{9A}\u{9B}\u{3}\u{2}'
      '\u{2}\u{2}\u{9B}\u{99}\u{3}\u{2}\u{2}\u{2}\u{9B}\u{9C}\u{3}\u{2}\u{2}'
      '\u{2}\u{9C}\u{11}\u{3}\u{2}\u{2}\u{2}\u{9D}\u{9E}\u{7}\u{4}\u{2}\u{2}'
      '\u{9E}\u{13}\u{3}\u{2}\u{2}\u{2}\u{9F}\u{A1}\u{7}\u{8}\u{2}\u{2}\u{A0}'
      '\u{9F}\u{3}\u{2}\u{2}\u{2}\u{A1}\u{A4}\u{3}\u{2}\u{2}\u{2}\u{A2}\u{A0}'
      '\u{3}\u{2}\u{2}\u{2}\u{A2}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{A3}\u{A6}\u{3}'
      '\u{2}\u{2}\u{2}\u{A4}\u{A2}\u{3}\u{2}\u{2}\u{2}\u{A5}\u{A7}\u{7}\u{5}'
      '\u{2}\u{2}\u{A6}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{A6}\u{A7}\u{3}\u{2}\u{2}'
      '\u{2}\u{A7}\u{A8}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{A9}\u{7}\u{7}\u{2}\u{2}'
      '\u{A9}\u{AB}\u{5}\u{18}\u{D}\u{2}\u{AA}\u{AC}\u{7}\u{5}\u{2}\u{2}\u{AB}'
      '\u{AA}\u{3}\u{2}\u{2}\u{2}\u{AB}\u{AC}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{B0}'
      '\u{3}\u{2}\u{2}\u{2}\u{AD}\u{AF}\u{5}\u{1A}\u{E}\u{2}\u{AE}\u{AD}\u{3}'
      '\u{2}\u{2}\u{2}\u{AF}\u{B2}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{AE}\u{3}\u{2}'
      '\u{2}\u{2}\u{B0}\u{B1}\u{3}\u{2}\u{2}\u{2}\u{B1}\u{15}\u{3}\u{2}\u{2}'
      '\u{2}\u{B2}\u{B0}\u{3}\u{2}\u{2}\u{2}\u{B3}\u{B5}\u{5}\u{14}\u{B}\u{2}'
      '\u{B4}\u{B3}\u{3}\u{2}\u{2}\u{2}\u{B5}\u{B8}\u{3}\u{2}\u{2}\u{2}\u{B6}'
      '\u{B4}\u{3}\u{2}\u{2}\u{2}\u{B6}\u{B7}\u{3}\u{2}\u{2}\u{2}\u{B7}\u{17}'
      '\u{3}\u{2}\u{2}\u{2}\u{B8}\u{B6}\u{3}\u{2}\u{2}\u{2}\u{B9}\u{BA}\u{7}'
      '\u{3}\u{2}\u{2}\u{BA}\u{19}\u{3}\u{2}\u{2}\u{2}\u{BB}\u{BF}\u{5}\u{1C}'
      '\u{F}\u{2}\u{BC}\u{BF}\u{5}\u{20}\u{11}\u{2}\u{BD}\u{BF}\u{7}\u{4}\u{2}'
      '\u{2}\u{BE}\u{BB}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{BC}\u{3}\u{2}\u{2}\u{2}'
      '\u{BE}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{BF}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{C0}'
      '\u{C2}\u{5}\u{1E}\u{10}\u{2}\u{C1}\u{C0}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{C3}'
      '\u{3}\u{2}\u{2}\u{2}\u{C3}\u{C1}\u{3}\u{2}\u{2}\u{2}\u{C3}\u{C4}\u{3}'
      '\u{2}\u{2}\u{2}\u{C4}\u{1D}\u{3}\u{2}\u{2}\u{2}\u{C5}\u{C6}\u{9}\u{3}'
      '\u{2}\u{2}\u{C6}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{C7}\u{C8}\u{7}\u{C}\u{2}'
      '\u{2}\u{C8}\u{CC}\u{5}\u{22}\u{12}\u{2}\u{C9}\u{CB}\u{7}\u{5}\u{2}\u{2}'
      '\u{CA}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{CB}\u{CE}\u{3}\u{2}\u{2}\u{2}\u{CC}'
      '\u{CA}\u{3}\u{2}\u{2}\u{2}\u{CC}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{CD}\u{D0}'
      '\u{3}\u{2}\u{2}\u{2}\u{CE}\u{CC}\u{3}\u{2}\u{2}\u{2}\u{CF}\u{D1}\u{5}'
      '\u{24}\u{13}\u{2}\u{D0}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{D0}\u{D1}\u{3}\u{2}'
      '\u{2}\u{2}\u{D1}\u{D2}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{D3}\u{7}\u{E}\u{2}'
      '\u{2}\u{D3}\u{21}\u{3}\u{2}\u{2}\u{2}\u{D4}\u{D5}\u{7}\u{3}\u{2}\u{2}'
      '\u{D5}\u{23}\u{3}\u{2}\u{2}\u{2}\u{D6}\u{D8}\u{5}\u{28}\u{15}\u{2}\u{D7}'
      '\u{D6}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{D9}\u{D7}'
      '\u{3}\u{2}\u{2}\u{2}\u{D9}\u{DA}\u{3}\u{2}\u{2}\u{2}\u{DA}\u{25}\u{3}'
      '\u{2}\u{2}\u{2}\u{DB}\u{DF}\u{7}\u{D}\u{2}\u{2}\u{DC}\u{DE}\u{5}\u{28}'
      '\u{15}\u{2}\u{DD}\u{DC}\u{3}\u{2}\u{2}\u{2}\u{DE}\u{E1}\u{3}\u{2}\u{2}'
      '\u{2}\u{DF}\u{DD}\u{3}\u{2}\u{2}\u{2}\u{DF}\u{E0}\u{3}\u{2}\u{2}\u{2}'
      '\u{E0}\u{E2}\u{3}\u{2}\u{2}\u{2}\u{E1}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{E2}'
      '\u{E3}\u{7}\u{E}\u{2}\u{2}\u{E3}\u{27}\u{3}\u{2}\u{2}\u{2}\u{E4}\u{F3}'
      '\u{5}\u{26}\u{14}\u{2}\u{E5}\u{EF}\u{5}\u{2C}\u{17}\u{2}\u{E6}\u{E8}'
      '\u{7}\u{4}\u{2}\u{2}\u{E7}\u{E6}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{EB}\u{3}'
      '\u{2}\u{2}\u{2}\u{E9}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{E9}\u{EA}\u{3}\u{2}'
      '\u{2}\u{2}\u{EA}\u{EC}\u{3}\u{2}\u{2}\u{2}\u{EB}\u{E9}\u{3}\u{2}\u{2}'
      '\u{2}\u{EC}\u{EE}\u{5}\u{2C}\u{17}\u{2}\u{ED}\u{E9}\u{3}\u{2}\u{2}\u{2}'
      '\u{EE}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{EF}\u{ED}\u{3}\u{2}\u{2}\u{2}\u{EF}'
      '\u{F0}\u{3}\u{2}\u{2}\u{2}\u{F0}\u{F3}\u{3}\u{2}\u{2}\u{2}\u{F1}\u{EF}'
      '\u{3}\u{2}\u{2}\u{2}\u{F2}\u{E4}\u{3}\u{2}\u{2}\u{2}\u{F2}\u{E5}\u{3}'
      '\u{2}\u{2}\u{2}\u{F3}\u{29}\u{3}\u{2}\u{2}\u{2}\u{F4}\u{F5}\u{9}\u{4}'
      '\u{2}\u{2}\u{F5}\u{2B}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{F7}\u{9}\u{5}\u{2}'
      '\u{2}\u{F7}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{24}\u{33}\u{3D}\u{43}\u{49}\u{4F}'
      '\u{57}\u{5C}\u{61}\u{67}\u{6D}\u{74}\u{7B}\u{7E}\u{81}\u{86}\u{8B}\u{8D}'
      '\u{94}\u{99}\u{9B}\u{A2}\u{A6}\u{AB}\u{B0}\u{B6}\u{BE}\u{C3}\u{CC}\u{D0}'
      '\u{D9}\u{DF}\u{E9}\u{EF}\u{F2}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}

class DocumentationContext extends ParserRuleContext {
  TerminalNode EOF() => getToken(ApexdocParser.TOKEN_EOF, 0);

  TerminalNode JAVADOC_START() =>
      getToken(ApexdocParser.TOKEN_JAVADOC_START, 0);

  DocumentationContentContext documentationContent() =>
      getRuleContext<DocumentationContentContext>(0);

  TerminalNode JAVADOC_END() => getToken(ApexdocParser.TOKEN_JAVADOC_END, 0);

  List<SkipWhitespaceContext> skipWhitespaces() =>
      getRuleContexts<SkipWhitespaceContext>();

  SkipWhitespaceContext skipWhitespace(int i) =>
      getRuleContext<SkipWhitespaceContext>(i);

  DocumentationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  DescriptionContext description() => getRuleContext<DescriptionContext>(0);

  List<SkipWhitespaceContext> skipWhitespaces() =>
      getRuleContexts<SkipWhitespaceContext>();

  SkipWhitespaceContext skipWhitespace(int i) =>
      getRuleContext<SkipWhitespaceContext>(i);

  TagSectionContext tagSection() => getRuleContext<TagSectionContext>(0);

  List<TerminalNode> NEWLINEs() => getTokens(ApexdocParser.TOKEN_NEWLINE);

  TerminalNode NEWLINE(int i) => getToken(ApexdocParser.TOKEN_NEWLINE, i);

  DocumentationContentContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_documentationContent;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterDocumentationContent(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitDocumentationContent(this);
  }
}

class DescriptionContext extends ParserRuleContext {
  List<DescriptionLineContext> descriptionLines() =>
      getRuleContexts<DescriptionLineContext>();

  DescriptionLineContext descriptionLine(int i) =>
      getRuleContext<DescriptionLineContext>(i);

  List<DescriptionNewlineContext> descriptionNewlines() =>
      getRuleContexts<DescriptionNewlineContext>();

  DescriptionNewlineContext descriptionNewline(int i) =>
      getRuleContext<DescriptionNewlineContext>(i);

  DescriptionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  DescriptionLineStartContext descriptionLineStart() =>
      getRuleContext<DescriptionLineStartContext>(0);

  List<DescriptionLineElementContext> descriptionLineElements() =>
      getRuleContexts<DescriptionLineElementContext>();

  DescriptionLineElementContext descriptionLineElement(int i) =>
      getRuleContext<DescriptionLineElementContext>(i);

  InlineTagContext inlineTag() => getRuleContext<InlineTagContext>(0);

  DescriptionLineContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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

  TerminalNode SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);

  List<DescriptionLineNoSpaceNoAtContext> descriptionLineNoSpaceNoAts() =>
      getRuleContexts<DescriptionLineNoSpaceNoAtContext>();

  DescriptionLineNoSpaceNoAtContext descriptionLineNoSpaceNoAt(int i) =>
      getRuleContext<DescriptionLineNoSpaceNoAtContext>(i);

  List<TerminalNode> ATs() => getTokens(ApexdocParser.TOKEN_AT);

  TerminalNode AT(int i) => getToken(ApexdocParser.TOKEN_AT, i);

  DescriptionLineStartContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_descriptionLineStart;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterDescriptionLineStart(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitDescriptionLineStart(this);
  }
}

class DescriptionLineNoSpaceNoAtContext extends ParserRuleContext {
  TerminalNode TEXT_CONTENT() => getToken(ApexdocParser.TOKEN_TEXT_CONTENT, 0);

  TerminalNode NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);

  TerminalNode STAR() => getToken(ApexdocParser.TOKEN_STAR, 0);

  TerminalNode SLASH() => getToken(ApexdocParser.TOKEN_SLASH, 0);

  TerminalNode BRACE_OPEN() => getToken(ApexdocParser.TOKEN_BRACE_OPEN, 0);

  TerminalNode BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);

  DescriptionLineNoSpaceNoAtContext(
      [ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_descriptionLineNoSpaceNoAt;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterDescriptionLineNoSpaceNoAt(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitDescriptionLineNoSpaceNoAt(this);
  }
}

class DescriptionLineElementContext extends ParserRuleContext {
  InlineTagContext inlineTag() => getRuleContext<InlineTagContext>(0);

  DescriptionLineTextContext descriptionLineText() =>
      getRuleContext<DescriptionLineTextContext>(0);

  DescriptionLineElementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_descriptionLineElement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterDescriptionLineElement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitDescriptionLineElement(this);
  }
}

class DescriptionLineTextContext extends ParserRuleContext {
  List<DescriptionLineNoSpaceNoAtContext> descriptionLineNoSpaceNoAts() =>
      getRuleContexts<DescriptionLineNoSpaceNoAtContext>();

  DescriptionLineNoSpaceNoAtContext descriptionLineNoSpaceNoAt(int i) =>
      getRuleContext<DescriptionLineNoSpaceNoAtContext>(i);

  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);

  TerminalNode SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);

  List<TerminalNode> ATs() => getTokens(ApexdocParser.TOKEN_AT);

  TerminalNode AT(int i) => getToken(ApexdocParser.TOKEN_AT, i);

  DescriptionLineTextContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_descriptionLineText;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterDescriptionLineText(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitDescriptionLineText(this);
  }
}

class DescriptionNewlineContext extends ParserRuleContext {
  TerminalNode NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);

  DescriptionNewlineContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_descriptionNewline;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterDescriptionNewline(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitDescriptionNewline(this);
  }
}

class BlockTagContext extends ParserRuleContext {
  TerminalNode AT() => getToken(ApexdocParser.TOKEN_AT, 0);

  BlockTagNameContext blockTagName() => getRuleContext<BlockTagNameContext>(0);

  List<TerminalNode> STARs() => getTokens(ApexdocParser.TOKEN_STAR);

  TerminalNode STAR(int i) => getToken(ApexdocParser.TOKEN_STAR, i);

  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);

  TerminalNode SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);

  List<BlockTagContentContext> blockTagContents() =>
      getRuleContexts<BlockTagContentContext>();

  BlockTagContentContext blockTagContent(int i) =>
      getRuleContext<BlockTagContentContext>(i);

  BlockTagContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_blockTag;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.enterBlockTag(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener) listener.exitBlockTag(this);
  }
}

class TagSectionContext extends ParserRuleContext {
  List<BlockTagContext> blockTags() => getRuleContexts<BlockTagContext>();

  BlockTagContext blockTag(int i) => getRuleContext<BlockTagContext>(i);

  TagSectionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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

class BlockTagNameContext extends ParserRuleContext {
  TerminalNode NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);

  BlockTagNameContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  BlockTagTextContext blockTagText() => getRuleContext<BlockTagTextContext>(0);

  InlineTagContext inlineTag() => getRuleContext<InlineTagContext>(0);

  TerminalNode NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);

  BlockTagContentContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  List<BlockTagTextElementContext> blockTagTextElements() =>
      getRuleContexts<BlockTagTextElementContext>();

  BlockTagTextElementContext blockTagTextElement(int i) =>
      getRuleContext<BlockTagTextElementContext>(i);

  BlockTagTextContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  TerminalNode TEXT_CONTENT() => getToken(ApexdocParser.TOKEN_TEXT_CONTENT, 0);

  TerminalNode NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);

  TerminalNode SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);

  TerminalNode STAR() => getToken(ApexdocParser.TOKEN_STAR, 0);

  TerminalNode SLASH() => getToken(ApexdocParser.TOKEN_SLASH, 0);

  TerminalNode BRACE_OPEN() => getToken(ApexdocParser.TOKEN_BRACE_OPEN, 0);

  TerminalNode BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);

  BlockTagTextElementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_blockTagTextElement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.enterBlockTagTextElement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexdocParserListener)
      listener.exitBlockTagTextElement(this);
  }
}

class InlineTagContext extends ParserRuleContext {
  TerminalNode INLINE_TAG_START() =>
      getToken(ApexdocParser.TOKEN_INLINE_TAG_START, 0);

  InlineTagNameContext inlineTagName() =>
      getRuleContext<InlineTagNameContext>(0);

  TerminalNode BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);

  List<TerminalNode> SPACEs() => getTokens(ApexdocParser.TOKEN_SPACE);

  TerminalNode SPACE(int i) => getToken(ApexdocParser.TOKEN_SPACE, i);

  InlineTagContentContext inlineTagContent() =>
      getRuleContext<InlineTagContentContext>(0);

  InlineTagContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  TerminalNode NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);

  InlineTagNameContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  List<BraceContentContext> braceContents() =>
      getRuleContexts<BraceContentContext>();

  BraceContentContext braceContent(int i) =>
      getRuleContext<BraceContentContext>(i);

  InlineTagContentContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  TerminalNode BRACE_OPEN() => getToken(ApexdocParser.TOKEN_BRACE_OPEN, 0);

  TerminalNode BRACE_CLOSE() => getToken(ApexdocParser.TOKEN_BRACE_CLOSE, 0);

  List<BraceContentContext> braceContents() =>
      getRuleContexts<BraceContentContext>();

  BraceContentContext braceContent(int i) =>
      getRuleContext<BraceContentContext>(i);

  BraceExpressionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  BraceExpressionContext braceExpression() =>
      getRuleContext<BraceExpressionContext>(0);

  List<BraceTextContext> braceTexts() => getRuleContexts<BraceTextContext>();

  BraceTextContext braceText(int i) => getRuleContext<BraceTextContext>(i);

  List<TerminalNode> NEWLINEs() => getTokens(ApexdocParser.TOKEN_NEWLINE);

  TerminalNode NEWLINE(int i) => getToken(ApexdocParser.TOKEN_NEWLINE, i);

  BraceContentContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  TerminalNode SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);

  TerminalNode NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);

  SkipWhitespaceContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
  TerminalNode TEXT_CONTENT() => getToken(ApexdocParser.TOKEN_TEXT_CONTENT, 0);

  TerminalNode NAME() => getToken(ApexdocParser.TOKEN_NAME, 0);

  TerminalNode SPACE() => getToken(ApexdocParser.TOKEN_SPACE, 0);

  TerminalNode STAR() => getToken(ApexdocParser.TOKEN_STAR, 0);

  TerminalNode SLASH() => getToken(ApexdocParser.TOKEN_SLASH, 0);

  TerminalNode NEWLINE() => getToken(ApexdocParser.TOKEN_NEWLINE, 0);

  BraceTextContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

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
