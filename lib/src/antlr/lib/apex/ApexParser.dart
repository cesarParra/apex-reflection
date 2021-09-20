// Generated from lib/src/antlr/grammars/apex/ApexParser.g4 by ANTLR 4.9.2
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';
import 'dart:io';

import 'ApexParserListener.dart';
import 'ApexParserBaseListener.dart';

const int RULE_triggerUnit = 0,
    RULE_triggerCase = 1,
    RULE_compilationUnit = 2,
    RULE_typeDeclaration = 3,
    RULE_classDeclaration = 4,
    RULE_enumDeclaration = 5,
    RULE_enumConstants = 6,
    RULE_interfaceDeclaration = 7,
    RULE_typeList = 8,
    RULE_classBody = 9,
    RULE_interfaceBody = 10,
    RULE_classBodyDeclaration = 11,
    RULE_modifier = 12,
    RULE_memberDeclaration = 13,
    RULE_methodDeclaration = 14,
    RULE_constructorDeclaration = 15,
    RULE_fieldDeclaration = 16,
    RULE_propertyDeclaration = 17,
    RULE_interfaceMethodDeclaration = 18,
    RULE_variableDeclarators = 19,
    RULE_variableDeclarator = 20,
    RULE_arrayInitializer = 21,
    RULE_typeRef = 22,
    RULE_arraySubscripts = 23,
    RULE_typeName = 24,
    RULE_typeArguments = 25,
    RULE_formalParameters = 26,
    RULE_formalParameterList = 27,
    RULE_formalParameter = 28,
    RULE_qualifiedName = 29,
    RULE_literal = 30,
    RULE_annotation = 31,
    RULE_elementValuePairs = 32,
    RULE_elementValuePair = 33,
    RULE_elementValue = 34,
    RULE_elementValueArrayInitializer = 35,
    RULE_block = 36,
    RULE_localVariableDeclarationStatement = 37,
    RULE_localVariableDeclaration = 38,
    RULE_statement = 39,
    RULE_ifStatement = 40,
    RULE_switchStatement = 41,
    RULE_whenControl = 42,
    RULE_whenValue = 43,
    RULE_whenLiteral = 44,
    RULE_forStatement = 45,
    RULE_whileStatement = 46,
    RULE_doWhileStatement = 47,
    RULE_tryStatement = 48,
    RULE_returnStatement = 49,
    RULE_throwStatement = 50,
    RULE_breakStatement = 51,
    RULE_continueStatement = 52,
    RULE_insertStatement = 53,
    RULE_updateStatement = 54,
    RULE_deleteStatement = 55,
    RULE_undeleteStatement = 56,
    RULE_upsertStatement = 57,
    RULE_mergeStatement = 58,
    RULE_runAsStatement = 59,
    RULE_expressionStatement = 60,
    RULE_propertyBlock = 61,
    RULE_getter = 62,
    RULE_setter = 63,
    RULE_catchClause = 64,
    RULE_finallyBlock = 65,
    RULE_forControl = 66,
    RULE_forInit = 67,
    RULE_enhancedForControl = 68,
    RULE_forUpdate = 69,
    RULE_parExpression = 70,
    RULE_expressionList = 71,
    RULE_expression = 72,
    RULE_primary = 73,
    RULE_methodCall = 74,
    RULE_dotMethodCall = 75,
    RULE_creator = 76,
    RULE_createdName = 77,
    RULE_idCreatedNamePair = 78,
    RULE_noRest = 79,
    RULE_classCreatorRest = 80,
    RULE_arrayCreatorRest = 81,
    RULE_mapCreatorRest = 82,
    RULE_mapCreatorRestPair = 83,
    RULE_setCreatorRest = 84,
    RULE_arguments = 85,
    RULE_soqlLiteral = 86,
    RULE_id = 87,
    RULE_anyId = 88;

class ApexParser extends Parser {
  static final checkVersion =
      () => RuntimeMetaData.checkVersion('4.9.2', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache =
      PredictionContextCache();
  static const int TOKEN_ABSTRACT = 1,
      TOKEN_AFTER = 2,
      TOKEN_BEFORE = 3,
      TOKEN_BREAK = 4,
      TOKEN_CATCH = 5,
      TOKEN_CLASS = 6,
      TOKEN_CONTINUE = 7,
      TOKEN_DELETE = 8,
      TOKEN_DO = 9,
      TOKEN_ELSE = 10,
      TOKEN_ENUM = 11,
      TOKEN_EXTENDS = 12,
      TOKEN_FINAL = 13,
      TOKEN_FINALLY = 14,
      TOKEN_FOR = 15,
      TOKEN_GET = 16,
      TOKEN_GLOBAL = 17,
      TOKEN_IF = 18,
      TOKEN_IMPLEMENTS = 19,
      TOKEN_INHERITED = 20,
      TOKEN_INSERT = 21,
      TOKEN_INSTANCEOF = 22,
      TOKEN_INTERFACE = 23,
      TOKEN_MERGE = 24,
      TOKEN_NEW = 25,
      TOKEN_NULL = 26,
      TOKEN_ON = 27,
      TOKEN_OVERRIDE = 28,
      TOKEN_PRIVATE = 29,
      TOKEN_PROTECTED = 30,
      TOKEN_PUBLIC = 31,
      TOKEN_RETURN = 32,
      TOKEN_SYSTEMRUNAS = 33,
      TOKEN_SET = 34,
      TOKEN_SHARING = 35,
      TOKEN_STATIC = 36,
      TOKEN_SUPER = 37,
      TOKEN_SWITCH = 38,
      TOKEN_TESTMETHOD = 39,
      TOKEN_THIS = 40,
      TOKEN_THROW = 41,
      TOKEN_TRANSIENT = 42,
      TOKEN_TRIGGER = 43,
      TOKEN_TRY = 44,
      TOKEN_UNDELETE = 45,
      TOKEN_UPDATE = 46,
      TOKEN_UPSERT = 47,
      TOKEN_VIRTUAL = 48,
      TOKEN_VOID = 49,
      TOKEN_WEBSERVICE = 50,
      TOKEN_WHEN = 51,
      TOKEN_WHILE = 52,
      TOKEN_WITH = 53,
      TOKEN_WITHOUT = 54,
      TOKEN_LIST = 55,
      TOKEN_MAP = 56,
      TOKEN_IntegerLiteral = 57,
      TOKEN_NumberLiteral = 58,
      TOKEN_BooleanLiteral = 59,
      TOKEN_StringLiteral = 60,
      TOKEN_NullLiteral = 61,
      TOKEN_LPAREN = 62,
      TOKEN_RPAREN = 63,
      TOKEN_LBRACE = 64,
      TOKEN_RBRACE = 65,
      TOKEN_LBRACK = 66,
      TOKEN_RBRACK = 67,
      TOKEN_SEMI = 68,
      TOKEN_COMMA = 69,
      TOKEN_DOT = 70,
      TOKEN_ASSIGN = 71,
      TOKEN_GT = 72,
      TOKEN_LT = 73,
      TOKEN_BANG = 74,
      TOKEN_TILDE = 75,
      TOKEN_QUESTIONDOT = 76,
      TOKEN_QUESTION = 77,
      TOKEN_COLON = 78,
      TOKEN_EQUAL = 79,
      TOKEN_TRIPLEEQUAL = 80,
      TOKEN_NOTEQUAL = 81,
      TOKEN_LESSANDGREATER = 82,
      TOKEN_TRIPLENOTEQUAL = 83,
      TOKEN_AND = 84,
      TOKEN_OR = 85,
      TOKEN_INC = 86,
      TOKEN_DEC = 87,
      TOKEN_ADD = 88,
      TOKEN_SUB = 89,
      TOKEN_MUL = 90,
      TOKEN_DIV = 91,
      TOKEN_BITAND = 92,
      TOKEN_BITOR = 93,
      TOKEN_CARET = 94,
      TOKEN_MOD = 95,
      TOKEN_MAPTO = 96,
      TOKEN_ADD_ASSIGN = 97,
      TOKEN_SUB_ASSIGN = 98,
      TOKEN_MUL_ASSIGN = 99,
      TOKEN_DIV_ASSIGN = 100,
      TOKEN_AND_ASSIGN = 101,
      TOKEN_OR_ASSIGN = 102,
      TOKEN_XOR_ASSIGN = 103,
      TOKEN_MOD_ASSIGN = 104,
      TOKEN_LSHIFT_ASSIGN = 105,
      TOKEN_RSHIFT_ASSIGN = 106,
      TOKEN_URSHIFT_ASSIGN = 107,
      TOKEN_AT = 108,
      TOKEN_Identifier = 109,
      TOKEN_WS = 110,
      TOKEN_DOC_COMMENT = 111,
      TOKEN_COMMENT = 112,
      TOKEN_LINE_COMMENT = 113;

  @override
  final List<String> ruleNames = [
    'triggerUnit',
    'triggerCase',
    'compilationUnit',
    'typeDeclaration',
    'classDeclaration',
    'enumDeclaration',
    'enumConstants',
    'interfaceDeclaration',
    'typeList',
    'classBody',
    'interfaceBody',
    'classBodyDeclaration',
    'modifier',
    'memberDeclaration',
    'methodDeclaration',
    'constructorDeclaration',
    'fieldDeclaration',
    'propertyDeclaration',
    'interfaceMethodDeclaration',
    'variableDeclarators',
    'variableDeclarator',
    'arrayInitializer',
    'typeRef',
    'arraySubscripts',
    'typeName',
    'typeArguments',
    'formalParameters',
    'formalParameterList',
    'formalParameter',
    'qualifiedName',
    'literal',
    'annotation',
    'elementValuePairs',
    'elementValuePair',
    'elementValue',
    'elementValueArrayInitializer',
    'block',
    'localVariableDeclarationStatement',
    'localVariableDeclaration',
    'statement',
    'ifStatement',
    'switchStatement',
    'whenControl',
    'whenValue',
    'whenLiteral',
    'forStatement',
    'whileStatement',
    'doWhileStatement',
    'tryStatement',
    'returnStatement',
    'throwStatement',
    'breakStatement',
    'continueStatement',
    'insertStatement',
    'updateStatement',
    'deleteStatement',
    'undeleteStatement',
    'upsertStatement',
    'mergeStatement',
    'runAsStatement',
    'expressionStatement',
    'propertyBlock',
    'getter',
    'setter',
    'catchClause',
    'finallyBlock',
    'forControl',
    'forInit',
    'enhancedForControl',
    'forUpdate',
    'parExpression',
    'expressionList',
    'expression',
    'primary',
    'methodCall',
    'dotMethodCall',
    'creator',
    'createdName',
    'idCreatedNamePair',
    'noRest',
    'classCreatorRest',
    'arrayCreatorRest',
    'mapCreatorRest',
    'mapCreatorRestPair',
    'setCreatorRest',
    'arguments',
    'soqlLiteral',
    'id',
    'anyId'
  ];

  static final List<String?> _LITERAL_NAMES = [
    null,
    "'abstract'",
    "'after'",
    "'before'",
    "'break'",
    "'catch'",
    "'class'",
    "'continue'",
    "'delete'",
    "'do'",
    "'else'",
    null,
    "'extends'",
    "'final'",
    "'finally'",
    "'for'",
    "'get'",
    "'global'",
    "'if'",
    "'implements'",
    "'inherited'",
    "'insert'",
    null,
    "'interface'",
    "'merge'",
    "'new'",
    "'null'",
    "'on'",
    "'override'",
    "'private'",
    "'protected'",
    "'public'",
    "'return'",
    null,
    "'set'",
    "'sharing'",
    "'static'",
    "'super'",
    "'switch'",
    null,
    "'this'",
    "'throw'",
    "'transient'",
    "'trigger'",
    "'try'",
    "'undelete'",
    "'update'",
    "'upsert'",
    "'virtual'",
    "'void'",
    "'webservice'",
    "'when'",
    "'while'",
    "'with'",
    "'without'",
    "'list'",
    "'map'",
    null,
    null,
    null,
    null,
    null,
    "'('",
    "')'",
    "'{'",
    "'}'",
    "'['",
    "']'",
    "';'",
    "','",
    "'.'",
    "'='",
    "'>'",
    "'<'",
    "'!'",
    "'~'",
    "'?.'",
    "'?'",
    "':'",
    "'=='",
    "'==='",
    "'!='",
    "'<>'",
    "'!=='",
    "'&&'",
    "'||'",
    "'++'",
    "'--'",
    "'+'",
    "'-'",
    "'*'",
    "'/'",
    "'&'",
    "'|'",
    "'^'",
    "'%'",
    "'=>'",
    "'+='",
    "'-='",
    "'*='",
    "'/='",
    "'&='",
    "'|='",
    "'^='",
    "'%='",
    "'<<='",
    "'>>='",
    "'>>>='",
    "'@'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
    null,
    "ABSTRACT",
    "AFTER",
    "BEFORE",
    "BREAK",
    "CATCH",
    "CLASS",
    "CONTINUE",
    "DELETE",
    "DO",
    "ELSE",
    "ENUM",
    "EXTENDS",
    "FINAL",
    "FINALLY",
    "FOR",
    "GET",
    "GLOBAL",
    "IF",
    "IMPLEMENTS",
    "INHERITED",
    "INSERT",
    "INSTANCEOF",
    "INTERFACE",
    "MERGE",
    "NEW",
    "NULL",
    "ON",
    "OVERRIDE",
    "PRIVATE",
    "PROTECTED",
    "PUBLIC",
    "RETURN",
    "SYSTEMRUNAS",
    "SET",
    "SHARING",
    "STATIC",
    "SUPER",
    "SWITCH",
    "TESTMETHOD",
    "THIS",
    "THROW",
    "TRANSIENT",
    "TRIGGER",
    "TRY",
    "UNDELETE",
    "UPDATE",
    "UPSERT",
    "VIRTUAL",
    "VOID",
    "WEBSERVICE",
    "WHEN",
    "WHILE",
    "WITH",
    "WITHOUT",
    "LIST",
    "MAP",
    "IntegerLiteral",
    "NumberLiteral",
    "BooleanLiteral",
    "StringLiteral",
    "NullLiteral",
    "LPAREN",
    "RPAREN",
    "LBRACE",
    "RBRACE",
    "LBRACK",
    "RBRACK",
    "SEMI",
    "COMMA",
    "DOT",
    "ASSIGN",
    "GT",
    "LT",
    "BANG",
    "TILDE",
    "QUESTIONDOT",
    "QUESTION",
    "COLON",
    "EQUAL",
    "TRIPLEEQUAL",
    "NOTEQUAL",
    "LESSANDGREATER",
    "TRIPLENOTEQUAL",
    "AND",
    "OR",
    "INC",
    "DEC",
    "ADD",
    "SUB",
    "MUL",
    "DIV",
    "BITAND",
    "BITOR",
    "CARET",
    "MOD",
    "MAPTO",
    "ADD_ASSIGN",
    "SUB_ASSIGN",
    "MUL_ASSIGN",
    "DIV_ASSIGN",
    "AND_ASSIGN",
    "OR_ASSIGN",
    "XOR_ASSIGN",
    "MOD_ASSIGN",
    "LSHIFT_ASSIGN",
    "RSHIFT_ASSIGN",
    "URSHIFT_ASSIGN",
    "AT",
    "Identifier",
    "WS",
    "DOC_COMMENT",
    "COMMENT",
    "LINE_COMMENT"
  ];
  static final Vocabulary VOCABULARY =
      VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'ApexParser.g4';

  @override
  String get serializedATN => _serializedATN;

  @override
  ATN getATN() {
    return _ATN;
  }

  ApexParser(TokenStream input) : super(input) {
    interpreter =
        ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  TriggerUnitContext triggerUnit() {
    dynamic _localctx = TriggerUnitContext(context, state);
    enterRule(_localctx, 0, RULE_triggerUnit);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 178;
      match(TOKEN_TRIGGER);
      state = 179;
      id();
      state = 180;
      match(TOKEN_ON);
      state = 181;
      id();
      state = 182;
      match(TOKEN_LPAREN);
      state = 183;
      triggerCase();
      state = 188;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 184;
        match(TOKEN_COMMA);
        state = 185;
        triggerCase();
        state = 190;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 191;
      match(TOKEN_RPAREN);
      state = 192;
      block();
      state = 193;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TriggerCaseContext triggerCase() {
    dynamic _localctx = TriggerCaseContext(context, state);
    enterRule(_localctx, 2, RULE_triggerCase);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 195;
      _la = tokenStream.LA(1);
      if (!(_la == TOKEN_AFTER || _la == TOKEN_BEFORE)) {
        errorHandler.recoverInline(this);
      } else {
        if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 196;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_DELETE) |
                      (BigInt.one << TOKEN_INSERT) |
                      (BigInt.one << TOKEN_UNDELETE) |
                      (BigInt.one << TOKEN_UPDATE))) !=
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

  CompilationUnitContext compilationUnit() {
    dynamic _localctx = CompilationUnitContext(context, state);
    enterRule(_localctx, 4, RULE_compilationUnit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 198;
      typeDeclaration();
      state = 199;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeDeclarationContext typeDeclaration() {
    dynamic _localctx = TypeDeclarationContext(context, state);
    enterRule(_localctx, 6, RULE_typeDeclaration);
    int _la;
    try {
      state = 231;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 7, context)) {
        case 1:
          _localctx = TypeClassDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 202;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_DOC_COMMENT) {
            state = 201;
            match(TOKEN_DOC_COMMENT);
          }

          state = 207;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_ABSTRACT) |
                              (BigInt.one << TOKEN_FINAL) |
                              (BigInt.one << TOKEN_GLOBAL) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_OVERRIDE) |
                              (BigInt.one << TOKEN_PRIVATE) |
                              (BigInt.one << TOKEN_PROTECTED) |
                              (BigInt.one << TOKEN_PUBLIC) |
                              (BigInt.one << TOKEN_STATIC) |
                              (BigInt.one << TOKEN_TESTMETHOD) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_VIRTUAL) |
                              (BigInt.one << TOKEN_WEBSERVICE) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT))) !=
                      BigInt.zero) ||
              _la == TOKEN_AT) {
            state = 204;
            modifier();
            state = 209;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 210;
          classDeclaration();
          break;
        case 2:
          _localctx = TypeEnumDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 212;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_DOC_COMMENT) {
            state = 211;
            match(TOKEN_DOC_COMMENT);
          }

          state = 217;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_ABSTRACT) |
                              (BigInt.one << TOKEN_FINAL) |
                              (BigInt.one << TOKEN_GLOBAL) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_OVERRIDE) |
                              (BigInt.one << TOKEN_PRIVATE) |
                              (BigInt.one << TOKEN_PROTECTED) |
                              (BigInt.one << TOKEN_PUBLIC) |
                              (BigInt.one << TOKEN_STATIC) |
                              (BigInt.one << TOKEN_TESTMETHOD) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_VIRTUAL) |
                              (BigInt.one << TOKEN_WEBSERVICE) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT))) !=
                      BigInt.zero) ||
              _la == TOKEN_AT) {
            state = 214;
            modifier();
            state = 219;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 220;
          enumDeclaration();
          break;
        case 3:
          _localctx = TypeInterfaceDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 222;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_DOC_COMMENT) {
            state = 221;
            match(TOKEN_DOC_COMMENT);
          }

          state = 227;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_ABSTRACT) |
                              (BigInt.one << TOKEN_FINAL) |
                              (BigInt.one << TOKEN_GLOBAL) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_OVERRIDE) |
                              (BigInt.one << TOKEN_PRIVATE) |
                              (BigInt.one << TOKEN_PROTECTED) |
                              (BigInt.one << TOKEN_PUBLIC) |
                              (BigInt.one << TOKEN_STATIC) |
                              (BigInt.one << TOKEN_TESTMETHOD) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_VIRTUAL) |
                              (BigInt.one << TOKEN_WEBSERVICE) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT))) !=
                      BigInt.zero) ||
              _la == TOKEN_AT) {
            state = 224;
            modifier();
            state = 229;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          state = 230;
          interfaceDeclaration();
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

  ClassDeclarationContext classDeclaration() {
    dynamic _localctx = ClassDeclarationContext(context, state);
    enterRule(_localctx, 8, RULE_classDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 233;
      match(TOKEN_CLASS);
      state = 234;
      id();
      state = 237;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_EXTENDS) {
        state = 235;
        match(TOKEN_EXTENDS);
        state = 236;
        typeRef();
      }

      state = 241;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_IMPLEMENTS) {
        state = 239;
        match(TOKEN_IMPLEMENTS);
        state = 240;
        typeList();
      }

      state = 243;
      classBody();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumDeclarationContext enumDeclaration() {
    dynamic _localctx = EnumDeclarationContext(context, state);
    enterRule(_localctx, 10, RULE_enumDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 245;
      match(TOKEN_ENUM);
      state = 246;
      id();
      state = 247;
      match(TOKEN_LBRACE);
      state = 249;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT))) !=
                  BigInt.zero) ||
          _la == TOKEN_Identifier) {
        state = 248;
        enumConstants();
      }

      state = 251;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  EnumConstantsContext enumConstants() {
    dynamic _localctx = EnumConstantsContext(context, state);
    enterRule(_localctx, 12, RULE_enumConstants);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 253;
      id();
      state = 258;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 254;
        match(TOKEN_COMMA);
        state = 255;
        id();
        state = 260;
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

  InterfaceDeclarationContext interfaceDeclaration() {
    dynamic _localctx = InterfaceDeclarationContext(context, state);
    enterRule(_localctx, 14, RULE_interfaceDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 261;
      match(TOKEN_INTERFACE);
      state = 262;
      id();
      state = 265;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_EXTENDS) {
        state = 263;
        match(TOKEN_EXTENDS);
        state = 264;
        typeList();
      }

      state = 267;
      interfaceBody();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeListContext typeList() {
    dynamic _localctx = TypeListContext(context, state);
    enterRule(_localctx, 16, RULE_typeList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 269;
      typeRef();
      state = 274;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 270;
        match(TOKEN_COMMA);
        state = 271;
        typeRef();
        state = 276;
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

  ClassBodyContext classBody() {
    dynamic _localctx = ClassBodyContext(context, state);
    enterRule(_localctx, 18, RULE_classBody);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 277;
      match(TOKEN_LBRACE);
      state = 281;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_CLASS) |
                          (BigInt.one << TOKEN_ENUM) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_VOID) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP))) !=
                  BigInt.zero) ||
          ((((_la - 64)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 64)) &
                      ((BigInt.one << (TOKEN_LBRACE - 64)) |
                          (BigInt.one << (TOKEN_SEMI - 64)) |
                          (BigInt.one << (TOKEN_AT - 64)) |
                          (BigInt.one << (TOKEN_Identifier - 64)))) !=
                  BigInt.zero)) {
        state = 278;
        classBodyDeclaration();
        state = 283;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 284;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InterfaceBodyContext interfaceBody() {
    dynamic _localctx = InterfaceBodyContext(context, state);
    enterRule(_localctx, 20, RULE_interfaceBody);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 286;
      match(TOKEN_LBRACE);
      state = 290;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_VOID) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP))) !=
                  BigInt.zero) ||
          _la == TOKEN_AT ||
          _la == TOKEN_Identifier) {
        state = 287;
        interfaceMethodDeclaration();
        state = 292;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 293;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassBodyDeclarationContext classBodyDeclaration() {
    dynamic _localctx = ClassBodyDeclarationContext(context, state);
    enterRule(_localctx, 22, RULE_classBodyDeclaration);
    int _la;
    try {
      int _alt;
      state = 307;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 18, context)) {
        case 1:
          _localctx = EmptyClassBodyDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 295;
          match(TOKEN_SEMI);
          break;
        case 2:
          _localctx = StaticBlockClassBodyDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 297;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_STATIC) {
            state = 296;
            match(TOKEN_STATIC);
          }

          state = 299;
          block();
          break;
        case 3:
          _localctx = MemberClassBodyDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 303;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 17, context);
          while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
            if (_alt == 1) {
              state = 300;
              modifier();
            }
            state = 305;
            errorHandler.sync(this);
            _alt = interpreter.adaptivePredict(tokenStream, 17, context);
          }
          state = 306;
          memberDeclaration();
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

  ModifierContext modifier() {
    dynamic _localctx = ModifierContext(context, state);
    enterRule(_localctx, 24, RULE_modifier);
    try {
      state = 328;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_AT:
          enterOuterAlt(_localctx, 1);
          state = 309;
          annotation();
          break;
        case TOKEN_GLOBAL:
          enterOuterAlt(_localctx, 2);
          state = 310;
          match(TOKEN_GLOBAL);
          break;
        case TOKEN_PUBLIC:
          enterOuterAlt(_localctx, 3);
          state = 311;
          match(TOKEN_PUBLIC);
          break;
        case TOKEN_PROTECTED:
          enterOuterAlt(_localctx, 4);
          state = 312;
          match(TOKEN_PROTECTED);
          break;
        case TOKEN_PRIVATE:
          enterOuterAlt(_localctx, 5);
          state = 313;
          match(TOKEN_PRIVATE);
          break;
        case TOKEN_TRANSIENT:
          enterOuterAlt(_localctx, 6);
          state = 314;
          match(TOKEN_TRANSIENT);
          break;
        case TOKEN_STATIC:
          enterOuterAlt(_localctx, 7);
          state = 315;
          match(TOKEN_STATIC);
          break;
        case TOKEN_ABSTRACT:
          enterOuterAlt(_localctx, 8);
          state = 316;
          match(TOKEN_ABSTRACT);
          break;
        case TOKEN_FINAL:
          enterOuterAlt(_localctx, 9);
          state = 317;
          match(TOKEN_FINAL);
          break;
        case TOKEN_WEBSERVICE:
          enterOuterAlt(_localctx, 10);
          state = 318;
          match(TOKEN_WEBSERVICE);
          break;
        case TOKEN_OVERRIDE:
          enterOuterAlt(_localctx, 11);
          state = 319;
          match(TOKEN_OVERRIDE);
          break;
        case TOKEN_VIRTUAL:
          enterOuterAlt(_localctx, 12);
          state = 320;
          match(TOKEN_VIRTUAL);
          break;
        case TOKEN_TESTMETHOD:
          enterOuterAlt(_localctx, 13);
          state = 321;
          match(TOKEN_TESTMETHOD);
          break;
        case TOKEN_WITH:
          enterOuterAlt(_localctx, 14);
          state = 322;
          match(TOKEN_WITH);
          state = 323;
          match(TOKEN_SHARING);
          break;
        case TOKEN_WITHOUT:
          enterOuterAlt(_localctx, 15);
          state = 324;
          match(TOKEN_WITHOUT);
          state = 325;
          match(TOKEN_SHARING);
          break;
        case TOKEN_INHERITED:
          enterOuterAlt(_localctx, 16);
          state = 326;
          match(TOKEN_INHERITED);
          state = 327;
          match(TOKEN_SHARING);
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

  MemberDeclarationContext memberDeclaration() {
    dynamic _localctx = MemberDeclarationContext(context, state);
    enterRule(_localctx, 26, RULE_memberDeclaration);
    try {
      state = 337;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 20, context)) {
        case 1:
          _localctx = MethodMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 330;
          methodDeclaration();
          break;
        case 2:
          _localctx = FieldMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 331;
          fieldDeclaration();
          break;
        case 3:
          _localctx = ConstructorMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 332;
          constructorDeclaration();
          break;
        case 4:
          _localctx = InterfaceMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 333;
          interfaceDeclaration();
          break;
        case 5:
          _localctx = ClassMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 334;
          classDeclaration();
          break;
        case 6:
          _localctx = EnumMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 335;
          enumDeclaration();
          break;
        case 7:
          _localctx = PropertyMemberDeclarationContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 336;
          propertyDeclaration();
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

  MethodDeclarationContext methodDeclaration() {
    dynamic _localctx = MethodDeclarationContext(context, state);
    enterRule(_localctx, 28, RULE_methodDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 341;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_AFTER:
        case TOKEN_BEFORE:
        case TOKEN_GET:
        case TOKEN_INHERITED:
        case TOKEN_INSTANCEOF:
        case TOKEN_SET:
        case TOKEN_SHARING:
        case TOKEN_SWITCH:
        case TOKEN_TRANSIENT:
        case TOKEN_TRIGGER:
        case TOKEN_WHEN:
        case TOKEN_WITH:
        case TOKEN_WITHOUT:
        case TOKEN_LIST:
        case TOKEN_MAP:
        case TOKEN_Identifier:
          state = 339;
          typeRef();
          break;
        case TOKEN_VOID:
          state = 340;
          match(TOKEN_VOID);
          break;
        default:
          throw NoViableAltException(this);
      }
      state = 343;
      id();
      state = 344;
      formalParameters();
      state = 347;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_LBRACE:
          state = 345;
          block();
          break;
        case TOKEN_SEMI:
          state = 346;
          match(TOKEN_SEMI);
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

  ConstructorDeclarationContext constructorDeclaration() {
    dynamic _localctx = ConstructorDeclarationContext(context, state);
    enterRule(_localctx, 30, RULE_constructorDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 349;
      qualifiedName();
      state = 350;
      formalParameters();
      state = 351;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldDeclarationContext fieldDeclaration() {
    dynamic _localctx = FieldDeclarationContext(context, state);
    enterRule(_localctx, 32, RULE_fieldDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 353;
      typeRef();
      state = 354;
      variableDeclarators();
      state = 355;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyDeclarationContext propertyDeclaration() {
    dynamic _localctx = PropertyDeclarationContext(context, state);
    enterRule(_localctx, 34, RULE_propertyDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 357;
      typeRef();
      state = 358;
      id();
      state = 359;
      match(TOKEN_LBRACE);
      state = 363;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT))) !=
                  BigInt.zero) ||
          _la == TOKEN_AT) {
        state = 360;
        propertyBlock();
        state = 365;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 366;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InterfaceMethodDeclarationContext interfaceMethodDeclaration() {
    dynamic _localctx = InterfaceMethodDeclarationContext(context, state);
    enterRule(_localctx, 36, RULE_interfaceMethodDeclaration);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 371;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 24, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 368;
          modifier();
        }
        state = 373;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 24, context);
      }
      state = 376;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_AFTER:
        case TOKEN_BEFORE:
        case TOKEN_GET:
        case TOKEN_INHERITED:
        case TOKEN_INSTANCEOF:
        case TOKEN_SET:
        case TOKEN_SHARING:
        case TOKEN_SWITCH:
        case TOKEN_TRANSIENT:
        case TOKEN_TRIGGER:
        case TOKEN_WHEN:
        case TOKEN_WITH:
        case TOKEN_WITHOUT:
        case TOKEN_LIST:
        case TOKEN_MAP:
        case TOKEN_Identifier:
          state = 374;
          typeRef();
          break;
        case TOKEN_VOID:
          state = 375;
          match(TOKEN_VOID);
          break;
        default:
          throw NoViableAltException(this);
      }
      state = 378;
      id();
      state = 379;
      formalParameters();
      state = 380;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  VariableDeclaratorsContext variableDeclarators() {
    dynamic _localctx = VariableDeclaratorsContext(context, state);
    enterRule(_localctx, 38, RULE_variableDeclarators);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 382;
      variableDeclarator();
      state = 387;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 383;
        match(TOKEN_COMMA);
        state = 384;
        variableDeclarator();
        state = 389;
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

  VariableDeclaratorContext variableDeclarator() {
    dynamic _localctx = VariableDeclaratorContext(context, state);
    enterRule(_localctx, 40, RULE_variableDeclarator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 390;
      id();
      state = 393;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_ASSIGN) {
        state = 391;
        match(TOKEN_ASSIGN);
        state = 392;
        expression(0);
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

  ArrayInitializerContext arrayInitializer() {
    dynamic _localctx = ArrayInitializerContext(context, state);
    enterRule(_localctx, 42, RULE_arrayInitializer);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 395;
      match(TOKEN_LBRACE);
      state = 407;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 66)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 66)) &
                      ((BigInt.one << (TOKEN_LBRACK - 66)) |
                          (BigInt.one << (TOKEN_BANG - 66)) |
                          (BigInt.one << (TOKEN_TILDE - 66)) |
                          (BigInt.one << (TOKEN_INC - 66)) |
                          (BigInt.one << (TOKEN_DEC - 66)) |
                          (BigInt.one << (TOKEN_ADD - 66)) |
                          (BigInt.one << (TOKEN_SUB - 66)) |
                          (BigInt.one << (TOKEN_Identifier - 66)))) !=
                  BigInt.zero)) {
        state = 396;
        expression(0);
        state = 401;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 28, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 397;
            match(TOKEN_COMMA);
            state = 398;
            expression(0);
          }
          state = 403;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 28, context);
        }
        state = 405;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 404;
          match(TOKEN_COMMA);
        }
      }

      state = 409;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TypeRefContext typeRef() {
    dynamic _localctx = TypeRefContext(context, state);
    enterRule(_localctx, 44, RULE_typeRef);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 411;
      typeName();
      state = 416;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 31, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 412;
          match(TOKEN_DOT);
          state = 413;
          typeName();
        }
        state = 418;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 31, context);
      }
      state = 419;
      arraySubscripts();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArraySubscriptsContext arraySubscripts() {
    dynamic _localctx = ArraySubscriptsContext(context, state);
    enterRule(_localctx, 46, RULE_arraySubscripts);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 425;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 32, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 421;
          match(TOKEN_LBRACK);
          state = 422;
          match(TOKEN_RBRACK);
        }
        state = 427;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 32, context);
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

  TypeNameContext typeName() {
    dynamic _localctx = TypeNameContext(context, state);
    enterRule(_localctx, 48, RULE_typeName);
    try {
      state = 444;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 428;
          match(TOKEN_LIST);
          state = 430;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 33, context)) {
            case 1:
              state = 429;
              typeArguments();
              break;
          }
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 432;
          match(TOKEN_SET);
          state = 434;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 34, context)) {
            case 1:
              state = 433;
              typeArguments();
              break;
          }
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 436;
          match(TOKEN_MAP);
          state = 438;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 35, context)) {
            case 1:
              state = 437;
              typeArguments();
              break;
          }
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 440;
          id();
          state = 442;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 36, context)) {
            case 1:
              state = 441;
              typeArguments();
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

  TypeArgumentsContext typeArguments() {
    dynamic _localctx = TypeArgumentsContext(context, state);
    enterRule(_localctx, 50, RULE_typeArguments);
    try {
      enterOuterAlt(_localctx, 1);
      state = 446;
      match(TOKEN_LT);
      state = 447;
      typeList();
      state = 448;
      match(TOKEN_GT);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FormalParametersContext formalParameters() {
    dynamic _localctx = FormalParametersContext(context, state);
    enterRule(_localctx, 52, RULE_formalParameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 450;
      match(TOKEN_LPAREN);
      state = 452;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP))) !=
                  BigInt.zero) ||
          _la == TOKEN_AT ||
          _la == TOKEN_Identifier) {
        state = 451;
        formalParameterList();
      }

      state = 454;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FormalParameterListContext formalParameterList() {
    dynamic _localctx = FormalParameterListContext(context, state);
    enterRule(_localctx, 54, RULE_formalParameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 456;
      formalParameter();
      state = 461;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 457;
        match(TOKEN_COMMA);
        state = 458;
        formalParameter();
        state = 463;
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

  FormalParameterContext formalParameter() {
    dynamic _localctx = FormalParameterContext(context, state);
    enterRule(_localctx, 56, RULE_formalParameter);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 467;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 40, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 464;
          modifier();
        }
        state = 469;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 40, context);
      }
      state = 470;
      typeRef();
      state = 471;
      id();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  QualifiedNameContext qualifiedName() {
    dynamic _localctx = QualifiedNameContext(context, state);
    enterRule(_localctx, 58, RULE_qualifiedName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 473;
      id();
      state = 478;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_DOT) {
        state = 474;
        match(TOKEN_DOT);
        state = 475;
        id();
        state = 480;
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

  LiteralContext literal() {
    dynamic _localctx = LiteralContext(context, state);
    enterRule(_localctx, 60, RULE_literal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 481;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
          ((BigInt.one << _la) &
                  ((BigInt.one << TOKEN_NULL) |
                      (BigInt.one << TOKEN_IntegerLiteral) |
                      (BigInt.one << TOKEN_NumberLiteral) |
                      (BigInt.one << TOKEN_BooleanLiteral) |
                      (BigInt.one << TOKEN_StringLiteral))) !=
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

  AnnotationContext annotation() {
    dynamic _localctx = AnnotationContext(context, state);
    enterRule(_localctx, 62, RULE_annotation);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 483;
      match(TOKEN_AT);
      state = 484;
      qualifiedName();
      state = 491;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LPAREN) {
        state = 485;
        match(TOKEN_LPAREN);
        state = 488;
        errorHandler.sync(this);
        switch (interpreter.adaptivePredict(tokenStream, 42, context)) {
          case 1:
            state = 486;
            elementValuePairs();
            break;
          case 2:
            state = 487;
            elementValue();
            break;
        }
        state = 490;
        match(TOKEN_RPAREN);
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

  ElementValuePairsContext elementValuePairs() {
    dynamic _localctx = ElementValuePairsContext(context, state);
    enterRule(_localctx, 64, RULE_elementValuePairs);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 493;
      elementValuePair();
      state = 500;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT))) !=
                  BigInt.zero) ||
          _la == TOKEN_COMMA ||
          _la == TOKEN_Identifier) {
        state = 495;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
        if (_la == TOKEN_COMMA) {
          state = 494;
          match(TOKEN_COMMA);
        }

        state = 497;
        elementValuePair();
        state = 502;
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

  ElementValuePairContext elementValuePair() {
    dynamic _localctx = ElementValuePairContext(context, state);
    enterRule(_localctx, 66, RULE_elementValuePair);
    try {
      enterOuterAlt(_localctx, 1);
      state = 503;
      id();
      state = 504;
      match(TOKEN_ASSIGN);
      state = 505;
      elementValue();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElementValueContext elementValue() {
    dynamic _localctx = ElementValueContext(context, state);
    enterRule(_localctx, 68, RULE_elementValue);
    try {
      state = 510;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_AFTER:
        case TOKEN_BEFORE:
        case TOKEN_GET:
        case TOKEN_INHERITED:
        case TOKEN_INSTANCEOF:
        case TOKEN_NEW:
        case TOKEN_NULL:
        case TOKEN_SET:
        case TOKEN_SHARING:
        case TOKEN_SUPER:
        case TOKEN_SWITCH:
        case TOKEN_THIS:
        case TOKEN_TRANSIENT:
        case TOKEN_TRIGGER:
        case TOKEN_WHEN:
        case TOKEN_WITH:
        case TOKEN_WITHOUT:
        case TOKEN_LIST:
        case TOKEN_MAP:
        case TOKEN_IntegerLiteral:
        case TOKEN_NumberLiteral:
        case TOKEN_BooleanLiteral:
        case TOKEN_StringLiteral:
        case TOKEN_LPAREN:
        case TOKEN_LBRACK:
        case TOKEN_BANG:
        case TOKEN_TILDE:
        case TOKEN_INC:
        case TOKEN_DEC:
        case TOKEN_ADD:
        case TOKEN_SUB:
        case TOKEN_Identifier:
          enterOuterAlt(_localctx, 1);
          state = 507;
          expression(0);
          break;
        case TOKEN_AT:
          enterOuterAlt(_localctx, 2);
          state = 508;
          annotation();
          break;
        case TOKEN_LBRACE:
          enterOuterAlt(_localctx, 3);
          state = 509;
          elementValueArrayInitializer();
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

  ElementValueArrayInitializerContext elementValueArrayInitializer() {
    dynamic _localctx = ElementValueArrayInitializerContext(context, state);
    enterRule(_localctx, 70, RULE_elementValueArrayInitializer);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 512;
      match(TOKEN_LBRACE);
      state = 521;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 64)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 64)) &
                      ((BigInt.one << (TOKEN_LBRACE - 64)) |
                          (BigInt.one << (TOKEN_LBRACK - 64)) |
                          (BigInt.one << (TOKEN_BANG - 64)) |
                          (BigInt.one << (TOKEN_TILDE - 64)) |
                          (BigInt.one << (TOKEN_INC - 64)) |
                          (BigInt.one << (TOKEN_DEC - 64)) |
                          (BigInt.one << (TOKEN_ADD - 64)) |
                          (BigInt.one << (TOKEN_SUB - 64)) |
                          (BigInt.one << (TOKEN_AT - 64)) |
                          (BigInt.one << (TOKEN_Identifier - 64)))) !=
                  BigInt.zero)) {
        state = 513;
        elementValue();
        state = 518;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 47, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 514;
            match(TOKEN_COMMA);
            state = 515;
            elementValue();
          }
          state = 520;
          errorHandler.sync(this);
          _alt = interpreter.adaptivePredict(tokenStream, 47, context);
        }
      }

      state = 524;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_COMMA) {
        state = 523;
        match(TOKEN_COMMA);
      }

      state = 526;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BlockContext block() {
    dynamic _localctx = BlockContext(context, state);
    enterRule(_localctx, 72, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 528;
      match(TOKEN_LBRACE);
      state = 532;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_BREAK) |
                          (BigInt.one << TOKEN_CONTINUE) |
                          (BigInt.one << TOKEN_DELETE) |
                          (BigInt.one << TOKEN_DO) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_FOR) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_IF) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSERT) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_MERGE) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_RETURN) |
                          (BigInt.one << TOKEN_SYSTEMRUNAS) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_THROW) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_TRY) |
                          (BigInt.one << TOKEN_UNDELETE) |
                          (BigInt.one << TOKEN_UPDATE) |
                          (BigInt.one << TOKEN_UPSERT) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WHILE) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 64)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 64)) &
                      ((BigInt.one << (TOKEN_LBRACE - 64)) |
                          (BigInt.one << (TOKEN_LBRACK - 64)) |
                          (BigInt.one << (TOKEN_BANG - 64)) |
                          (BigInt.one << (TOKEN_TILDE - 64)) |
                          (BigInt.one << (TOKEN_INC - 64)) |
                          (BigInt.one << (TOKEN_DEC - 64)) |
                          (BigInt.one << (TOKEN_ADD - 64)) |
                          (BigInt.one << (TOKEN_SUB - 64)) |
                          (BigInt.one << (TOKEN_AT - 64)) |
                          (BigInt.one << (TOKEN_Identifier - 64)))) !=
                  BigInt.zero)) {
        state = 529;
        statement();
        state = 534;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 535;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LocalVariableDeclarationStatementContext localVariableDeclarationStatement() {
    dynamic _localctx =
        LocalVariableDeclarationStatementContext(context, state);
    enterRule(_localctx, 74, RULE_localVariableDeclarationStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 537;
      localVariableDeclaration();
      state = 538;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LocalVariableDeclarationContext localVariableDeclaration() {
    dynamic _localctx = LocalVariableDeclarationContext(context, state);
    enterRule(_localctx, 76, RULE_localVariableDeclaration);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 543;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 51, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 540;
          modifier();
        }
        state = 545;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 51, context);
      }
      state = 546;
      typeRef();
      state = 547;
      variableDeclarators();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  StatementContext statement() {
    dynamic _localctx = StatementContext(context, state);
    enterRule(_localctx, 78, RULE_statement);
    try {
      state = 569;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 52, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 549;
          block();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 550;
          ifStatement();
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 551;
          switchStatement();
          break;
        case 4:
          enterOuterAlt(_localctx, 4);
          state = 552;
          forStatement();
          break;
        case 5:
          enterOuterAlt(_localctx, 5);
          state = 553;
          whileStatement();
          break;
        case 6:
          enterOuterAlt(_localctx, 6);
          state = 554;
          doWhileStatement();
          break;
        case 7:
          enterOuterAlt(_localctx, 7);
          state = 555;
          tryStatement();
          break;
        case 8:
          enterOuterAlt(_localctx, 8);
          state = 556;
          returnStatement();
          break;
        case 9:
          enterOuterAlt(_localctx, 9);
          state = 557;
          throwStatement();
          break;
        case 10:
          enterOuterAlt(_localctx, 10);
          state = 558;
          breakStatement();
          break;
        case 11:
          enterOuterAlt(_localctx, 11);
          state = 559;
          continueStatement();
          break;
        case 12:
          enterOuterAlt(_localctx, 12);
          state = 560;
          insertStatement();
          break;
        case 13:
          enterOuterAlt(_localctx, 13);
          state = 561;
          updateStatement();
          break;
        case 14:
          enterOuterAlt(_localctx, 14);
          state = 562;
          deleteStatement();
          break;
        case 15:
          enterOuterAlt(_localctx, 15);
          state = 563;
          undeleteStatement();
          break;
        case 16:
          enterOuterAlt(_localctx, 16);
          state = 564;
          upsertStatement();
          break;
        case 17:
          enterOuterAlt(_localctx, 17);
          state = 565;
          mergeStatement();
          break;
        case 18:
          enterOuterAlt(_localctx, 18);
          state = 566;
          runAsStatement();
          break;
        case 19:
          enterOuterAlt(_localctx, 19);
          state = 567;
          localVariableDeclarationStatement();
          break;
        case 20:
          enterOuterAlt(_localctx, 20);
          state = 568;
          expressionStatement();
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

  IfStatementContext ifStatement() {
    dynamic _localctx = IfStatementContext(context, state);
    enterRule(_localctx, 80, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 571;
      match(TOKEN_IF);
      state = 572;
      parExpression();
      state = 573;
      statement();
      state = 576;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 53, context)) {
        case 1:
          state = 574;
          match(TOKEN_ELSE);
          state = 575;
          statement();
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

  SwitchStatementContext switchStatement() {
    dynamic _localctx = SwitchStatementContext(context, state);
    enterRule(_localctx, 82, RULE_switchStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 578;
      match(TOKEN_SWITCH);
      state = 579;
      match(TOKEN_ON);
      state = 580;
      expression(0);
      state = 581;
      match(TOKEN_LBRACE);
      state = 583;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      do {
        state = 582;
        whenControl();
        state = 585;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      } while (_la == TOKEN_WHEN);
      state = 587;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhenControlContext whenControl() {
    dynamic _localctx = WhenControlContext(context, state);
    enterRule(_localctx, 84, RULE_whenControl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 589;
      match(TOKEN_WHEN);
      state = 590;
      whenValue();
      state = 591;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhenValueContext whenValue() {
    dynamic _localctx = WhenValueContext(context, state);
    enterRule(_localctx, 86, RULE_whenValue);
    int _la;
    try {
      state = 605;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 56, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 593;
          match(TOKEN_ELSE);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 594;
          whenLiteral();
          state = 599;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          while (_la == TOKEN_COMMA) {
            state = 595;
            match(TOKEN_COMMA);
            state = 596;
            whenLiteral();
            state = 601;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          }
          break;
        case 3:
          enterOuterAlt(_localctx, 3);
          state = 602;
          id();
          state = 603;
          id();
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

  WhenLiteralContext whenLiteral() {
    dynamic _localctx = WhenLiteralContext(context, state);
    enterRule(_localctx, 88, RULE_whenLiteral);
    int _la;
    try {
      state = 614;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_IntegerLiteral:
        case TOKEN_SUB:
          enterOuterAlt(_localctx, 1);
          state = 608;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_SUB) {
            state = 607;
            match(TOKEN_SUB);
          }

          state = 610;
          match(TOKEN_IntegerLiteral);
          break;
        case TOKEN_StringLiteral:
          enterOuterAlt(_localctx, 2);
          state = 611;
          match(TOKEN_StringLiteral);
          break;
        case TOKEN_NULL:
          enterOuterAlt(_localctx, 3);
          state = 612;
          match(TOKEN_NULL);
          break;
        case TOKEN_AFTER:
        case TOKEN_BEFORE:
        case TOKEN_GET:
        case TOKEN_INHERITED:
        case TOKEN_INSTANCEOF:
        case TOKEN_SET:
        case TOKEN_SHARING:
        case TOKEN_SWITCH:
        case TOKEN_TRANSIENT:
        case TOKEN_TRIGGER:
        case TOKEN_WHEN:
        case TOKEN_WITH:
        case TOKEN_WITHOUT:
        case TOKEN_Identifier:
          enterOuterAlt(_localctx, 4);
          state = 613;
          id();
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

  ForStatementContext forStatement() {
    dynamic _localctx = ForStatementContext(context, state);
    enterRule(_localctx, 90, RULE_forStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 616;
      match(TOKEN_FOR);
      state = 617;
      match(TOKEN_LPAREN);
      state = 618;
      forControl();
      state = 619;
      match(TOKEN_RPAREN);
      state = 620;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhileStatementContext whileStatement() {
    dynamic _localctx = WhileStatementContext(context, state);
    enterRule(_localctx, 92, RULE_whileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 622;
      match(TOKEN_WHILE);
      state = 623;
      parExpression();
      state = 624;
      statement();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DoWhileStatementContext doWhileStatement() {
    dynamic _localctx = DoWhileStatementContext(context, state);
    enterRule(_localctx, 94, RULE_doWhileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 626;
      match(TOKEN_DO);
      state = 627;
      statement();
      state = 628;
      match(TOKEN_WHILE);
      state = 629;
      parExpression();
      state = 630;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  TryStatementContext tryStatement() {
    dynamic _localctx = TryStatementContext(context, state);
    enterRule(_localctx, 96, RULE_tryStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 632;
      match(TOKEN_TRY);
      state = 633;
      block();
      state = 643;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_CATCH:
          state = 635;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          do {
            state = 634;
            catchClause();
            state = 637;
            errorHandler.sync(this);
            _la = tokenStream.LA(1);
          } while (_la == TOKEN_CATCH);
          state = 640;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if (_la == TOKEN_FINALLY) {
            state = 639;
            finallyBlock();
          }

          break;
        case TOKEN_FINALLY:
          state = 642;
          finallyBlock();
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

  ReturnStatementContext returnStatement() {
    dynamic _localctx = ReturnStatementContext(context, state);
    enterRule(_localctx, 98, RULE_returnStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 645;
      match(TOKEN_RETURN);
      state = 647;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 66)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 66)) &
                      ((BigInt.one << (TOKEN_LBRACK - 66)) |
                          (BigInt.one << (TOKEN_BANG - 66)) |
                          (BigInt.one << (TOKEN_TILDE - 66)) |
                          (BigInt.one << (TOKEN_INC - 66)) |
                          (BigInt.one << (TOKEN_DEC - 66)) |
                          (BigInt.one << (TOKEN_ADD - 66)) |
                          (BigInt.one << (TOKEN_SUB - 66)) |
                          (BigInt.one << (TOKEN_Identifier - 66)))) !=
                  BigInt.zero)) {
        state = 646;
        expression(0);
      }

      state = 649;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ThrowStatementContext throwStatement() {
    dynamic _localctx = ThrowStatementContext(context, state);
    enterRule(_localctx, 100, RULE_throwStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 651;
      match(TOKEN_THROW);
      state = 652;
      expression(0);
      state = 653;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  BreakStatementContext breakStatement() {
    dynamic _localctx = BreakStatementContext(context, state);
    enterRule(_localctx, 102, RULE_breakStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 655;
      match(TOKEN_BREAK);
      state = 656;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ContinueStatementContext continueStatement() {
    dynamic _localctx = ContinueStatementContext(context, state);
    enterRule(_localctx, 104, RULE_continueStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 658;
      match(TOKEN_CONTINUE);
      state = 659;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InsertStatementContext insertStatement() {
    dynamic _localctx = InsertStatementContext(context, state);
    enterRule(_localctx, 106, RULE_insertStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 661;
      match(TOKEN_INSERT);
      state = 662;
      expression(0);
      state = 663;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  UpdateStatementContext updateStatement() {
    dynamic _localctx = UpdateStatementContext(context, state);
    enterRule(_localctx, 108, RULE_updateStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 665;
      match(TOKEN_UPDATE);
      state = 666;
      expression(0);
      state = 667;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DeleteStatementContext deleteStatement() {
    dynamic _localctx = DeleteStatementContext(context, state);
    enterRule(_localctx, 110, RULE_deleteStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 669;
      match(TOKEN_DELETE);
      state = 670;
      expression(0);
      state = 671;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  UndeleteStatementContext undeleteStatement() {
    dynamic _localctx = UndeleteStatementContext(context, state);
    enterRule(_localctx, 112, RULE_undeleteStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 673;
      match(TOKEN_UNDELETE);
      state = 674;
      expression(0);
      state = 675;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  UpsertStatementContext upsertStatement() {
    dynamic _localctx = UpsertStatementContext(context, state);
    enterRule(_localctx, 114, RULE_upsertStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 677;
      match(TOKEN_UPSERT);
      state = 678;
      expression(0);
      state = 680;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT))) !=
                  BigInt.zero) ||
          _la == TOKEN_Identifier) {
        state = 679;
        qualifiedName();
      }

      state = 682;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MergeStatementContext mergeStatement() {
    dynamic _localctx = MergeStatementContext(context, state);
    enterRule(_localctx, 116, RULE_mergeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 684;
      match(TOKEN_MERGE);
      state = 685;
      expression(0);
      state = 686;
      expression(0);
      state = 687;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  RunAsStatementContext runAsStatement() {
    dynamic _localctx = RunAsStatementContext(context, state);
    enterRule(_localctx, 118, RULE_runAsStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 689;
      match(TOKEN_SYSTEMRUNAS);
      state = 690;
      match(TOKEN_LPAREN);
      state = 692;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 66)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 66)) &
                      ((BigInt.one << (TOKEN_LBRACK - 66)) |
                          (BigInt.one << (TOKEN_BANG - 66)) |
                          (BigInt.one << (TOKEN_TILDE - 66)) |
                          (BigInt.one << (TOKEN_INC - 66)) |
                          (BigInt.one << (TOKEN_DEC - 66)) |
                          (BigInt.one << (TOKEN_ADD - 66)) |
                          (BigInt.one << (TOKEN_SUB - 66)) |
                          (BigInt.one << (TOKEN_Identifier - 66)))) !=
                  BigInt.zero)) {
        state = 691;
        expressionList();
      }

      state = 694;
      match(TOKEN_RPAREN);
      state = 695;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionStatementContext expressionStatement() {
    dynamic _localctx = ExpressionStatementContext(context, state);
    enterRule(_localctx, 120, RULE_expressionStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 697;
      expression(0);
      state = 698;
      match(TOKEN_SEMI);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  PropertyBlockContext propertyBlock() {
    dynamic _localctx = PropertyBlockContext(context, state);
    enterRule(_localctx, 122, RULE_propertyBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 703;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT))) !=
                  BigInt.zero) ||
          _la == TOKEN_AT) {
        state = 700;
        modifier();
        state = 705;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 708;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_GET:
          state = 706;
          getter();
          break;
        case TOKEN_SET:
          state = 707;
          setter();
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

  GetterContext getter() {
    dynamic _localctx = GetterContext(context, state);
    enterRule(_localctx, 124, RULE_getter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 710;
      match(TOKEN_GET);
      state = 713;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_SEMI:
          state = 711;
          match(TOKEN_SEMI);
          break;
        case TOKEN_LBRACE:
          state = 712;
          block();
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

  SetterContext setter() {
    dynamic _localctx = SetterContext(context, state);
    enterRule(_localctx, 126, RULE_setter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 715;
      match(TOKEN_SET);
      state = 718;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_SEMI:
          state = 716;
          match(TOKEN_SEMI);
          break;
        case TOKEN_LBRACE:
          state = 717;
          block();
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

  CatchClauseContext catchClause() {
    dynamic _localctx = CatchClauseContext(context, state);
    enterRule(_localctx, 128, RULE_catchClause);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 720;
      match(TOKEN_CATCH);
      state = 721;
      match(TOKEN_LPAREN);
      state = 725;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 69, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 722;
          modifier();
        }
        state = 727;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 69, context);
      }
      state = 728;
      qualifiedName();
      state = 729;
      id();
      state = 730;
      match(TOKEN_RPAREN);
      state = 731;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FinallyBlockContext finallyBlock() {
    dynamic _localctx = FinallyBlockContext(context, state);
    enterRule(_localctx, 130, RULE_finallyBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 733;
      match(TOKEN_FINALLY);
      state = 734;
      block();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForControlContext forControl() {
    dynamic _localctx = ForControlContext(context, state);
    enterRule(_localctx, 132, RULE_forControl);
    int _la;
    try {
      state = 748;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 73, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 736;
          enhancedForControl();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 738;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_ABSTRACT) |
                              (BigInt.one << TOKEN_AFTER) |
                              (BigInt.one << TOKEN_BEFORE) |
                              (BigInt.one << TOKEN_FINAL) |
                              (BigInt.one << TOKEN_GET) |
                              (BigInt.one << TOKEN_GLOBAL) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_INSTANCEOF) |
                              (BigInt.one << TOKEN_NEW) |
                              (BigInt.one << TOKEN_NULL) |
                              (BigInt.one << TOKEN_OVERRIDE) |
                              (BigInt.one << TOKEN_PRIVATE) |
                              (BigInt.one << TOKEN_PROTECTED) |
                              (BigInt.one << TOKEN_PUBLIC) |
                              (BigInt.one << TOKEN_SET) |
                              (BigInt.one << TOKEN_SHARING) |
                              (BigInt.one << TOKEN_STATIC) |
                              (BigInt.one << TOKEN_SUPER) |
                              (BigInt.one << TOKEN_SWITCH) |
                              (BigInt.one << TOKEN_TESTMETHOD) |
                              (BigInt.one << TOKEN_THIS) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_TRIGGER) |
                              (BigInt.one << TOKEN_VIRTUAL) |
                              (BigInt.one << TOKEN_WEBSERVICE) |
                              (BigInt.one << TOKEN_WHEN) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT) |
                              (BigInt.one << TOKEN_LIST) |
                              (BigInt.one << TOKEN_MAP) |
                              (BigInt.one << TOKEN_IntegerLiteral) |
                              (BigInt.one << TOKEN_NumberLiteral) |
                              (BigInt.one << TOKEN_BooleanLiteral) |
                              (BigInt.one << TOKEN_StringLiteral) |
                              (BigInt.one << TOKEN_LPAREN))) !=
                      BigInt.zero) ||
              ((((_la - 66)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 66)) &
                          ((BigInt.one << (TOKEN_LBRACK - 66)) |
                              (BigInt.one << (TOKEN_BANG - 66)) |
                              (BigInt.one << (TOKEN_TILDE - 66)) |
                              (BigInt.one << (TOKEN_INC - 66)) |
                              (BigInt.one << (TOKEN_DEC - 66)) |
                              (BigInt.one << (TOKEN_ADD - 66)) |
                              (BigInt.one << (TOKEN_SUB - 66)) |
                              (BigInt.one << (TOKEN_AT - 66)) |
                              (BigInt.one << (TOKEN_Identifier - 66)))) !=
                      BigInt.zero)) {
            state = 737;
            forInit();
          }

          state = 740;
          match(TOKEN_SEMI);
          state = 742;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_AFTER) |
                              (BigInt.one << TOKEN_BEFORE) |
                              (BigInt.one << TOKEN_GET) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_INSTANCEOF) |
                              (BigInt.one << TOKEN_NEW) |
                              (BigInt.one << TOKEN_NULL) |
                              (BigInt.one << TOKEN_SET) |
                              (BigInt.one << TOKEN_SHARING) |
                              (BigInt.one << TOKEN_SUPER) |
                              (BigInt.one << TOKEN_SWITCH) |
                              (BigInt.one << TOKEN_THIS) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_TRIGGER) |
                              (BigInt.one << TOKEN_WHEN) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT) |
                              (BigInt.one << TOKEN_LIST) |
                              (BigInt.one << TOKEN_MAP) |
                              (BigInt.one << TOKEN_IntegerLiteral) |
                              (BigInt.one << TOKEN_NumberLiteral) |
                              (BigInt.one << TOKEN_BooleanLiteral) |
                              (BigInt.one << TOKEN_StringLiteral) |
                              (BigInt.one << TOKEN_LPAREN))) !=
                      BigInt.zero) ||
              ((((_la - 66)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 66)) &
                          ((BigInt.one << (TOKEN_LBRACK - 66)) |
                              (BigInt.one << (TOKEN_BANG - 66)) |
                              (BigInt.one << (TOKEN_TILDE - 66)) |
                              (BigInt.one << (TOKEN_INC - 66)) |
                              (BigInt.one << (TOKEN_DEC - 66)) |
                              (BigInt.one << (TOKEN_ADD - 66)) |
                              (BigInt.one << (TOKEN_SUB - 66)) |
                              (BigInt.one << (TOKEN_Identifier - 66)))) !=
                      BigInt.zero)) {
            state = 741;
            expression(0);
          }

          state = 744;
          match(TOKEN_SEMI);
          state = 746;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_AFTER) |
                              (BigInt.one << TOKEN_BEFORE) |
                              (BigInt.one << TOKEN_GET) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_INSTANCEOF) |
                              (BigInt.one << TOKEN_NEW) |
                              (BigInt.one << TOKEN_NULL) |
                              (BigInt.one << TOKEN_SET) |
                              (BigInt.one << TOKEN_SHARING) |
                              (BigInt.one << TOKEN_SUPER) |
                              (BigInt.one << TOKEN_SWITCH) |
                              (BigInt.one << TOKEN_THIS) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_TRIGGER) |
                              (BigInt.one << TOKEN_WHEN) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT) |
                              (BigInt.one << TOKEN_LIST) |
                              (BigInt.one << TOKEN_MAP) |
                              (BigInt.one << TOKEN_IntegerLiteral) |
                              (BigInt.one << TOKEN_NumberLiteral) |
                              (BigInt.one << TOKEN_BooleanLiteral) |
                              (BigInt.one << TOKEN_StringLiteral) |
                              (BigInt.one << TOKEN_LPAREN))) !=
                      BigInt.zero) ||
              ((((_la - 66)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 66)) &
                          ((BigInt.one << (TOKEN_LBRACK - 66)) |
                              (BigInt.one << (TOKEN_BANG - 66)) |
                              (BigInt.one << (TOKEN_TILDE - 66)) |
                              (BigInt.one << (TOKEN_INC - 66)) |
                              (BigInt.one << (TOKEN_DEC - 66)) |
                              (BigInt.one << (TOKEN_ADD - 66)) |
                              (BigInt.one << (TOKEN_SUB - 66)) |
                              (BigInt.one << (TOKEN_Identifier - 66)))) !=
                      BigInt.zero)) {
            state = 745;
            forUpdate();
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

  ForInitContext forInit() {
    dynamic _localctx = ForInitContext(context, state);
    enterRule(_localctx, 134, RULE_forInit);
    try {
      state = 752;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 74, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 750;
          localVariableDeclaration();
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 751;
          expressionList();
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

  EnhancedForControlContext enhancedForControl() {
    dynamic _localctx = EnhancedForControlContext(context, state);
    enterRule(_localctx, 136, RULE_enhancedForControl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 754;
      typeRef();
      state = 755;
      id();
      state = 756;
      match(TOKEN_COLON);
      state = 757;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForUpdateContext forUpdate() {
    dynamic _localctx = ForUpdateContext(context, state);
    enterRule(_localctx, 138, RULE_forUpdate);
    try {
      enterOuterAlt(_localctx, 1);
      state = 759;
      expressionList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ParExpressionContext parExpression() {
    dynamic _localctx = ParExpressionContext(context, state);
    enterRule(_localctx, 140, RULE_parExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 761;
      match(TOKEN_LPAREN);
      state = 762;
      expression(0);
      state = 763;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ExpressionListContext expressionList() {
    dynamic _localctx = ExpressionListContext(context, state);
    enterRule(_localctx, 142, RULE_expressionList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 765;
      expression(0);
      state = 770;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 766;
        match(TOKEN_COMMA);
        state = 767;
        expression(0);
        state = 772;
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

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 144;
    enterRecursionRule(_localctx, 144, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 787;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 76, context)) {
        case 1:
          _localctx = PrimaryExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;

          state = 774;
          primary();
          break;
        case 2:
          _localctx = MethodCallExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 775;
          methodCall();
          break;
        case 3:
          _localctx = NewExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 776;
          match(TOKEN_NEW);
          state = 777;
          creator();
          break;
        case 4:
          _localctx = CastExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 778;
          match(TOKEN_LPAREN);
          state = 779;
          typeRef();
          state = 780;
          match(TOKEN_RPAREN);
          state = 781;
          expression(17);
          break;
        case 5:
          _localctx = PreOpExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 783;
          _la = tokenStream.LA(1);
          if (!(((((_la - 86)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 86)) &
                      ((BigInt.one << (TOKEN_INC - 86)) |
                          (BigInt.one << (TOKEN_DEC - 86)) |
                          (BigInt.one << (TOKEN_ADD - 86)) |
                          (BigInt.one << (TOKEN_SUB - 86)))) !=
                  BigInt.zero))) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 784;
          expression(15);
          break;
        case 6:
          _localctx = NegExpressionContext(_localctx);
          context = _localctx;
          _prevctx = _localctx;
          state = 785;
          _la = tokenStream.LA(1);
          if (!(_la == TOKEN_BANG || _la == TOKEN_TILDE)) {
            errorHandler.recoverInline(this);
          } else {
            if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
          state = 786;
          expression(14);
          break;
      }
      context.stop = tokenStream.LT(-1);
      state = 857;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 81, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 855;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 80, context)) {
            case 1:
              _localctx = Arth1ExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 789;
              if (!(precpred(context, 13))) {
                throw FailedPredicateException(this, "precpred(context, 13)");
              }
              state = 790;
              _la = tokenStream.LA(1);
              if (!(((((_la - 90)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 90)) &
                          ((BigInt.one << (TOKEN_MUL - 90)) |
                              (BigInt.one << (TOKEN_DIV - 90)) |
                              (BigInt.one << (TOKEN_MOD - 90)))) !=
                      BigInt.zero))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 791;
              expression(14);
              break;
            case 2:
              _localctx = Arth2ExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 792;
              if (!(precpred(context, 12))) {
                throw FailedPredicateException(this, "precpred(context, 12)");
              }
              state = 793;
              _la = tokenStream.LA(1);
              if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 794;
              expression(13);
              break;
            case 3:
              _localctx = BitExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 795;
              if (!(precpred(context, 11))) {
                throw FailedPredicateException(this, "precpred(context, 11)");
              }
              state = 803;
              errorHandler.sync(this);
              switch (interpreter.adaptivePredict(tokenStream, 77, context)) {
                case 1:
                  state = 796;
                  match(TOKEN_LT);
                  state = 797;
                  match(TOKEN_LT);
                  break;
                case 2:
                  state = 798;
                  match(TOKEN_GT);
                  state = 799;
                  match(TOKEN_GT);
                  state = 800;
                  match(TOKEN_GT);
                  break;
                case 3:
                  state = 801;
                  match(TOKEN_GT);
                  state = 802;
                  match(TOKEN_GT);
                  break;
              }
              state = 805;
              expression(12);
              break;
            case 4:
              _localctx = CmpExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 806;
              if (!(precpred(context, 10))) {
                throw FailedPredicateException(this, "precpred(context, 10)");
              }
              state = 807;
              _la = tokenStream.LA(1);
              if (!(_la == TOKEN_GT || _la == TOKEN_LT)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 809;
              errorHandler.sync(this);
              _la = tokenStream.LA(1);
              if (_la == TOKEN_ASSIGN) {
                state = 808;
                match(TOKEN_ASSIGN);
              }

              state = 811;
              expression(11);
              break;
            case 5:
              _localctx = EqualityExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 812;
              if (!(precpred(context, 8))) {
                throw FailedPredicateException(this, "precpred(context, 8)");
              }
              state = 813;
              _la = tokenStream.LA(1);
              if (!(((((_la - 79)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 79)) &
                          ((BigInt.one << (TOKEN_EQUAL - 79)) |
                              (BigInt.one << (TOKEN_TRIPLEEQUAL - 79)) |
                              (BigInt.one << (TOKEN_NOTEQUAL - 79)) |
                              (BigInt.one << (TOKEN_LESSANDGREATER - 79)) |
                              (BigInt.one << (TOKEN_TRIPLENOTEQUAL - 79)))) !=
                      BigInt.zero))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 814;
              expression(9);
              break;
            case 6:
              _localctx = BitAndExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 815;
              if (!(precpred(context, 7))) {
                throw FailedPredicateException(this, "precpred(context, 7)");
              }
              state = 816;
              match(TOKEN_BITAND);
              state = 817;
              expression(8);
              break;
            case 7:
              _localctx = BitNotExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 818;
              if (!(precpred(context, 6))) {
                throw FailedPredicateException(this, "precpred(context, 6)");
              }
              state = 819;
              match(TOKEN_CARET);
              state = 820;
              expression(7);
              break;
            case 8:
              _localctx = BitOrExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 821;
              if (!(precpred(context, 5))) {
                throw FailedPredicateException(this, "precpred(context, 5)");
              }
              state = 822;
              match(TOKEN_BITOR);
              state = 823;
              expression(6);
              break;
            case 9:
              _localctx = LogAndExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 824;
              if (!(precpred(context, 4))) {
                throw FailedPredicateException(this, "precpred(context, 4)");
              }
              state = 825;
              match(TOKEN_AND);
              state = 826;
              expression(5);
              break;
            case 10:
              _localctx = LogOrExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 827;
              if (!(precpred(context, 3))) {
                throw FailedPredicateException(this, "precpred(context, 3)");
              }
              state = 828;
              match(TOKEN_OR);
              state = 829;
              expression(4);
              break;
            case 11:
              _localctx = CondExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 830;
              if (!(precpred(context, 2))) {
                throw FailedPredicateException(this, "precpred(context, 2)");
              }
              state = 831;
              match(TOKEN_QUESTION);
              state = 832;
              expression(0);
              state = 833;
              match(TOKEN_COLON);
              state = 834;
              expression(2);
              break;
            case 12:
              _localctx = AssignExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 836;
              if (!(precpred(context, 1))) {
                throw FailedPredicateException(this, "precpred(context, 1)");
              }
              state = 837;
              _la = tokenStream.LA(1);
              if (!(((((_la - 71)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 71)) &
                          ((BigInt.one << (TOKEN_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_ADD_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_SUB_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_MUL_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_DIV_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_AND_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_OR_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_XOR_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_MOD_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_LSHIFT_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_RSHIFT_ASSIGN - 71)) |
                              (BigInt.one << (TOKEN_URSHIFT_ASSIGN - 71)))) !=
                      BigInt.zero))) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 838;
              expression(1);
              break;
            case 13:
              _localctx = DotExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 839;
              if (!(precpred(context, 21))) {
                throw FailedPredicateException(this, "precpred(context, 21)");
              }
              state = 840;
              _la = tokenStream.LA(1);
              if (!(_la == TOKEN_DOT || _la == TOKEN_QUESTIONDOT)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              state = 843;
              errorHandler.sync(this);
              switch (interpreter.adaptivePredict(tokenStream, 79, context)) {
                case 1:
                  state = 841;
                  dotMethodCall();
                  break;
                case 2:
                  state = 842;
                  anyId();
                  break;
              }
              break;
            case 14:
              _localctx = ArrayExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 845;
              if (!(precpred(context, 20))) {
                throw FailedPredicateException(this, "precpred(context, 20)");
              }
              state = 846;
              match(TOKEN_LBRACK);
              state = 847;
              expression(0);
              state = 848;
              match(TOKEN_RBRACK);
              break;
            case 15:
              _localctx = PostOpExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 850;
              if (!(precpred(context, 16))) {
                throw FailedPredicateException(this, "precpred(context, 16)");
              }
              state = 851;
              _la = tokenStream.LA(1);
              if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
            case 16:
              _localctx = InstanceOfExpressionContext(
                  new ExpressionContext(_parentctx, _parentState));
              pushNewRecursionContext(_localctx, _startState, RULE_expression);
              state = 852;
              if (!(precpred(context, 9))) {
                throw FailedPredicateException(this, "precpred(context, 9)");
              }
              state = 853;
              match(TOKEN_INSTANCEOF);
              state = 854;
              typeRef();
              break;
          }
        }
        state = 859;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 81, context);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      unrollRecursionContexts(_parentctx);
    }
    return _localctx;
  }

  PrimaryContext primary() {
    dynamic _localctx = PrimaryContext(context, state);
    enterRule(_localctx, 146, RULE_primary);
    try {
      state = 873;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 82, context)) {
        case 1:
          _localctx = SubPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 1);
          state = 860;
          match(TOKEN_LPAREN);
          state = 861;
          expression(0);
          state = 862;
          match(TOKEN_RPAREN);
          break;
        case 2:
          _localctx = ThisPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 2);
          state = 864;
          match(TOKEN_THIS);
          break;
        case 3:
          _localctx = SuperPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 3);
          state = 865;
          match(TOKEN_SUPER);
          break;
        case 4:
          _localctx = LiteralPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 4);
          state = 866;
          literal();
          break;
        case 5:
          _localctx = TypeRefPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 5);
          state = 867;
          typeRef();
          state = 868;
          match(TOKEN_DOT);
          state = 869;
          match(TOKEN_CLASS);
          break;
        case 6:
          _localctx = IdPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 6);
          state = 871;
          id();
          break;
        case 7:
          _localctx = SoqlPrimaryContext(_localctx);
          enterOuterAlt(_localctx, 7);
          state = 872;
          soqlLiteral();
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

  MethodCallContext methodCall() {
    dynamic _localctx = MethodCallContext(context, state);
    enterRule(_localctx, 148, RULE_methodCall);
    int _la;
    try {
      state = 894;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)) {
        case TOKEN_AFTER:
        case TOKEN_BEFORE:
        case TOKEN_GET:
        case TOKEN_INHERITED:
        case TOKEN_INSTANCEOF:
        case TOKEN_SET:
        case TOKEN_SHARING:
        case TOKEN_SWITCH:
        case TOKEN_TRANSIENT:
        case TOKEN_TRIGGER:
        case TOKEN_WHEN:
        case TOKEN_WITH:
        case TOKEN_WITHOUT:
        case TOKEN_Identifier:
          enterOuterAlt(_localctx, 1);
          state = 875;
          id();
          state = 876;
          match(TOKEN_LPAREN);
          state = 878;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_AFTER) |
                              (BigInt.one << TOKEN_BEFORE) |
                              (BigInt.one << TOKEN_GET) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_INSTANCEOF) |
                              (BigInt.one << TOKEN_NEW) |
                              (BigInt.one << TOKEN_NULL) |
                              (BigInt.one << TOKEN_SET) |
                              (BigInt.one << TOKEN_SHARING) |
                              (BigInt.one << TOKEN_SUPER) |
                              (BigInt.one << TOKEN_SWITCH) |
                              (BigInt.one << TOKEN_THIS) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_TRIGGER) |
                              (BigInt.one << TOKEN_WHEN) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT) |
                              (BigInt.one << TOKEN_LIST) |
                              (BigInt.one << TOKEN_MAP) |
                              (BigInt.one << TOKEN_IntegerLiteral) |
                              (BigInt.one << TOKEN_NumberLiteral) |
                              (BigInt.one << TOKEN_BooleanLiteral) |
                              (BigInt.one << TOKEN_StringLiteral) |
                              (BigInt.one << TOKEN_LPAREN))) !=
                      BigInt.zero) ||
              ((((_la - 66)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 66)) &
                          ((BigInt.one << (TOKEN_LBRACK - 66)) |
                              (BigInt.one << (TOKEN_BANG - 66)) |
                              (BigInt.one << (TOKEN_TILDE - 66)) |
                              (BigInt.one << (TOKEN_INC - 66)) |
                              (BigInt.one << (TOKEN_DEC - 66)) |
                              (BigInt.one << (TOKEN_ADD - 66)) |
                              (BigInt.one << (TOKEN_SUB - 66)) |
                              (BigInt.one << (TOKEN_Identifier - 66)))) !=
                      BigInt.zero)) {
            state = 877;
            expressionList();
          }

          state = 880;
          match(TOKEN_RPAREN);
          break;
        case TOKEN_THIS:
          enterOuterAlt(_localctx, 2);
          state = 882;
          match(TOKEN_THIS);
          state = 883;
          match(TOKEN_LPAREN);
          state = 885;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_AFTER) |
                              (BigInt.one << TOKEN_BEFORE) |
                              (BigInt.one << TOKEN_GET) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_INSTANCEOF) |
                              (BigInt.one << TOKEN_NEW) |
                              (BigInt.one << TOKEN_NULL) |
                              (BigInt.one << TOKEN_SET) |
                              (BigInt.one << TOKEN_SHARING) |
                              (BigInt.one << TOKEN_SUPER) |
                              (BigInt.one << TOKEN_SWITCH) |
                              (BigInt.one << TOKEN_THIS) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_TRIGGER) |
                              (BigInt.one << TOKEN_WHEN) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT) |
                              (BigInt.one << TOKEN_LIST) |
                              (BigInt.one << TOKEN_MAP) |
                              (BigInt.one << TOKEN_IntegerLiteral) |
                              (BigInt.one << TOKEN_NumberLiteral) |
                              (BigInt.one << TOKEN_BooleanLiteral) |
                              (BigInt.one << TOKEN_StringLiteral) |
                              (BigInt.one << TOKEN_LPAREN))) !=
                      BigInt.zero) ||
              ((((_la - 66)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 66)) &
                          ((BigInt.one << (TOKEN_LBRACK - 66)) |
                              (BigInt.one << (TOKEN_BANG - 66)) |
                              (BigInt.one << (TOKEN_TILDE - 66)) |
                              (BigInt.one << (TOKEN_INC - 66)) |
                              (BigInt.one << (TOKEN_DEC - 66)) |
                              (BigInt.one << (TOKEN_ADD - 66)) |
                              (BigInt.one << (TOKEN_SUB - 66)) |
                              (BigInt.one << (TOKEN_Identifier - 66)))) !=
                      BigInt.zero)) {
            state = 884;
            expressionList();
          }

          state = 887;
          match(TOKEN_RPAREN);
          break;
        case TOKEN_SUPER:
          enterOuterAlt(_localctx, 3);
          state = 888;
          match(TOKEN_SUPER);
          state = 889;
          match(TOKEN_LPAREN);
          state = 891;
          errorHandler.sync(this);
          _la = tokenStream.LA(1);
          if ((((_la) & ~0x3f) == 0 &&
                  ((BigInt.one << _la) &
                          ((BigInt.one << TOKEN_AFTER) |
                              (BigInt.one << TOKEN_BEFORE) |
                              (BigInt.one << TOKEN_GET) |
                              (BigInt.one << TOKEN_INHERITED) |
                              (BigInt.one << TOKEN_INSTANCEOF) |
                              (BigInt.one << TOKEN_NEW) |
                              (BigInt.one << TOKEN_NULL) |
                              (BigInt.one << TOKEN_SET) |
                              (BigInt.one << TOKEN_SHARING) |
                              (BigInt.one << TOKEN_SUPER) |
                              (BigInt.one << TOKEN_SWITCH) |
                              (BigInt.one << TOKEN_THIS) |
                              (BigInt.one << TOKEN_TRANSIENT) |
                              (BigInt.one << TOKEN_TRIGGER) |
                              (BigInt.one << TOKEN_WHEN) |
                              (BigInt.one << TOKEN_WITH) |
                              (BigInt.one << TOKEN_WITHOUT) |
                              (BigInt.one << TOKEN_LIST) |
                              (BigInt.one << TOKEN_MAP) |
                              (BigInt.one << TOKEN_IntegerLiteral) |
                              (BigInt.one << TOKEN_NumberLiteral) |
                              (BigInt.one << TOKEN_BooleanLiteral) |
                              (BigInt.one << TOKEN_StringLiteral) |
                              (BigInt.one << TOKEN_LPAREN))) !=
                      BigInt.zero) ||
              ((((_la - 66)) & ~0x3f) == 0 &&
                  ((BigInt.one << (_la - 66)) &
                          ((BigInt.one << (TOKEN_LBRACK - 66)) |
                              (BigInt.one << (TOKEN_BANG - 66)) |
                              (BigInt.one << (TOKEN_TILDE - 66)) |
                              (BigInt.one << (TOKEN_INC - 66)) |
                              (BigInt.one << (TOKEN_DEC - 66)) |
                              (BigInt.one << (TOKEN_ADD - 66)) |
                              (BigInt.one << (TOKEN_SUB - 66)) |
                              (BigInt.one << (TOKEN_Identifier - 66)))) !=
                      BigInt.zero)) {
            state = 890;
            expressionList();
          }

          state = 893;
          match(TOKEN_RPAREN);
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

  DotMethodCallContext dotMethodCall() {
    dynamic _localctx = DotMethodCallContext(context, state);
    enterRule(_localctx, 150, RULE_dotMethodCall);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 896;
      anyId();
      state = 897;
      match(TOKEN_LPAREN);
      state = 899;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 66)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 66)) &
                      ((BigInt.one << (TOKEN_LBRACK - 66)) |
                          (BigInt.one << (TOKEN_BANG - 66)) |
                          (BigInt.one << (TOKEN_TILDE - 66)) |
                          (BigInt.one << (TOKEN_INC - 66)) |
                          (BigInt.one << (TOKEN_DEC - 66)) |
                          (BigInt.one << (TOKEN_ADD - 66)) |
                          (BigInt.one << (TOKEN_SUB - 66)) |
                          (BigInt.one << (TOKEN_Identifier - 66)))) !=
                  BigInt.zero)) {
        state = 898;
        expressionList();
      }

      state = 901;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  CreatorContext creator() {
    dynamic _localctx = CreatorContext(context, state);
    enterRule(_localctx, 152, RULE_creator);
    try {
      enterOuterAlt(_localctx, 1);
      state = 903;
      createdName();
      state = 909;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 88, context)) {
        case 1:
          state = 904;
          noRest();
          break;
        case 2:
          state = 905;
          classCreatorRest();
          break;
        case 3:
          state = 906;
          arrayCreatorRest();
          break;
        case 4:
          state = 907;
          mapCreatorRest();
          break;
        case 5:
          state = 908;
          setCreatorRest();
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

  CreatedNameContext createdName() {
    dynamic _localctx = CreatedNameContext(context, state);
    enterRule(_localctx, 154, RULE_createdName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 911;
      idCreatedNamePair();
      state = 916;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_DOT) {
        state = 912;
        match(TOKEN_DOT);
        state = 913;
        idCreatedNamePair();
        state = 918;
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

  IdCreatedNamePairContext idCreatedNamePair() {
    dynamic _localctx = IdCreatedNamePairContext(context, state);
    enterRule(_localctx, 156, RULE_idCreatedNamePair);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 919;
      anyId();
      state = 924;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if (_la == TOKEN_LT) {
        state = 920;
        match(TOKEN_LT);
        state = 921;
        typeList();
        state = 922;
        match(TOKEN_GT);
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

  NoRestContext noRest() {
    dynamic _localctx = NoRestContext(context, state);
    enterRule(_localctx, 158, RULE_noRest);
    try {
      enterOuterAlt(_localctx, 1);
      state = 926;
      match(TOKEN_LBRACE);
      state = 927;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ClassCreatorRestContext classCreatorRest() {
    dynamic _localctx = ClassCreatorRestContext(context, state);
    enterRule(_localctx, 160, RULE_classCreatorRest);
    try {
      enterOuterAlt(_localctx, 1);
      state = 929;
      arguments();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArrayCreatorRestContext arrayCreatorRest() {
    dynamic _localctx = ArrayCreatorRestContext(context, state);
    enterRule(_localctx, 162, RULE_arrayCreatorRest);
    try {
      state = 940;
      errorHandler.sync(this);
      switch (interpreter.adaptivePredict(tokenStream, 92, context)) {
        case 1:
          enterOuterAlt(_localctx, 1);
          state = 931;
          match(TOKEN_LBRACK);
          state = 932;
          expression(0);
          state = 933;
          match(TOKEN_RBRACK);
          break;
        case 2:
          enterOuterAlt(_localctx, 2);
          state = 935;
          match(TOKEN_LBRACK);
          state = 936;
          match(TOKEN_RBRACK);
          state = 938;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 91, context)) {
            case 1:
              state = 937;
              arrayInitializer();
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

  MapCreatorRestContext mapCreatorRest() {
    dynamic _localctx = MapCreatorRestContext(context, state);
    enterRule(_localctx, 164, RULE_mapCreatorRest);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 942;
      match(TOKEN_LBRACE);
      state = 943;
      mapCreatorRestPair();
      state = 948;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 944;
        match(TOKEN_COMMA);
        state = 945;
        mapCreatorRestPair();
        state = 950;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 951;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  MapCreatorRestPairContext mapCreatorRestPair() {
    dynamic _localctx = MapCreatorRestPairContext(context, state);
    enterRule(_localctx, 166, RULE_mapCreatorRestPair);
    try {
      enterOuterAlt(_localctx, 1);
      state = 953;
      expression(0);
      state = 954;
      match(TOKEN_MAPTO);
      state = 955;
      expression(0);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SetCreatorRestContext setCreatorRest() {
    dynamic _localctx = SetCreatorRestContext(context, state);
    enterRule(_localctx, 168, RULE_setCreatorRest);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 957;
      match(TOKEN_LBRACE);
      state = 958;
      expression(0);
      state = 963;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      while (_la == TOKEN_COMMA) {
        state = 959;
        match(TOKEN_COMMA);

        state = 960;
        expression(0);
        state = 965;
        errorHandler.sync(this);
        _la = tokenStream.LA(1);
      }
      state = 966;
      match(TOKEN_RBRACE);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ArgumentsContext arguments() {
    dynamic _localctx = ArgumentsContext(context, state);
    enterRule(_localctx, 170, RULE_arguments);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 968;
      match(TOKEN_LPAREN);
      state = 970;
      errorHandler.sync(this);
      _la = tokenStream.LA(1);
      if ((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP) |
                          (BigInt.one << TOKEN_IntegerLiteral) |
                          (BigInt.one << TOKEN_NumberLiteral) |
                          (BigInt.one << TOKEN_BooleanLiteral) |
                          (BigInt.one << TOKEN_StringLiteral) |
                          (BigInt.one << TOKEN_LPAREN))) !=
                  BigInt.zero) ||
          ((((_la - 66)) & ~0x3f) == 0 &&
              ((BigInt.one << (_la - 66)) &
                      ((BigInt.one << (TOKEN_LBRACK - 66)) |
                          (BigInt.one << (TOKEN_BANG - 66)) |
                          (BigInt.one << (TOKEN_TILDE - 66)) |
                          (BigInt.one << (TOKEN_INC - 66)) |
                          (BigInt.one << (TOKEN_DEC - 66)) |
                          (BigInt.one << (TOKEN_ADD - 66)) |
                          (BigInt.one << (TOKEN_SUB - 66)) |
                          (BigInt.one << (TOKEN_Identifier - 66)))) !=
                  BigInt.zero)) {
        state = 969;
        expressionList();
      }

      state = 972;
      match(TOKEN_RPAREN);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SoqlLiteralContext soqlLiteral() {
    dynamic _localctx = SoqlLiteralContext(context, state);
    enterRule(_localctx, 172, RULE_soqlLiteral);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 974;
      match(TOKEN_LBRACK);
      state = 979;
      errorHandler.sync(this);
      _alt = interpreter.adaptivePredict(tokenStream, 97, context);
      while (_alt != 1 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1 + 1) {
          state = 977;
          errorHandler.sync(this);
          switch (interpreter.adaptivePredict(tokenStream, 96, context)) {
            case 1:
              state = 975;
              soqlLiteral();
              break;
            case 2:
              state = 976;
              _la = tokenStream.LA(1);
              if (_la <= 0 || (_la == TOKEN_RBRACK)) {
                errorHandler.recoverInline(this);
              } else {
                if (tokenStream.LA(1) == IntStream.EOF) matchedEOF = true;
                errorHandler.reportMatch(this);
                consume();
              }
              break;
          }
        }
        state = 981;
        errorHandler.sync(this);
        _alt = interpreter.adaptivePredict(tokenStream, 97, context);
      }
      state = 982;
      match(TOKEN_RBRACK);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  IdContext id() {
    dynamic _localctx = IdContext(context, state);
    enterRule(_localctx, 174, RULE_id);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 984;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT))) !=
                  BigInt.zero) ||
          _la == TOKEN_Identifier)) {
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

  AnyIdContext anyId() {
    dynamic _localctx = AnyIdContext(context, state);
    enterRule(_localctx, 176, RULE_anyId);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 986;
      _la = tokenStream.LA(1);
      if (!((((_la) & ~0x3f) == 0 &&
              ((BigInt.one << _la) &
                      ((BigInt.one << TOKEN_ABSTRACT) |
                          (BigInt.one << TOKEN_AFTER) |
                          (BigInt.one << TOKEN_BEFORE) |
                          (BigInt.one << TOKEN_BREAK) |
                          (BigInt.one << TOKEN_CATCH) |
                          (BigInt.one << TOKEN_CLASS) |
                          (BigInt.one << TOKEN_CONTINUE) |
                          (BigInt.one << TOKEN_DELETE) |
                          (BigInt.one << TOKEN_DO) |
                          (BigInt.one << TOKEN_ELSE) |
                          (BigInt.one << TOKEN_ENUM) |
                          (BigInt.one << TOKEN_EXTENDS) |
                          (BigInt.one << TOKEN_FINAL) |
                          (BigInt.one << TOKEN_FINALLY) |
                          (BigInt.one << TOKEN_FOR) |
                          (BigInt.one << TOKEN_GET) |
                          (BigInt.one << TOKEN_GLOBAL) |
                          (BigInt.one << TOKEN_IF) |
                          (BigInt.one << TOKEN_IMPLEMENTS) |
                          (BigInt.one << TOKEN_INHERITED) |
                          (BigInt.one << TOKEN_INSERT) |
                          (BigInt.one << TOKEN_INSTANCEOF) |
                          (BigInt.one << TOKEN_INTERFACE) |
                          (BigInt.one << TOKEN_MERGE) |
                          (BigInt.one << TOKEN_NEW) |
                          (BigInt.one << TOKEN_NULL) |
                          (BigInt.one << TOKEN_ON) |
                          (BigInt.one << TOKEN_OVERRIDE) |
                          (BigInt.one << TOKEN_PRIVATE) |
                          (BigInt.one << TOKEN_PROTECTED) |
                          (BigInt.one << TOKEN_PUBLIC) |
                          (BigInt.one << TOKEN_RETURN) |
                          (BigInt.one << TOKEN_SET) |
                          (BigInt.one << TOKEN_SHARING) |
                          (BigInt.one << TOKEN_STATIC) |
                          (BigInt.one << TOKEN_SUPER) |
                          (BigInt.one << TOKEN_SWITCH) |
                          (BigInt.one << TOKEN_TESTMETHOD) |
                          (BigInt.one << TOKEN_THIS) |
                          (BigInt.one << TOKEN_THROW) |
                          (BigInt.one << TOKEN_TRANSIENT) |
                          (BigInt.one << TOKEN_TRIGGER) |
                          (BigInt.one << TOKEN_TRY) |
                          (BigInt.one << TOKEN_UNDELETE) |
                          (BigInt.one << TOKEN_UPDATE) |
                          (BigInt.one << TOKEN_UPSERT) |
                          (BigInt.one << TOKEN_VIRTUAL) |
                          (BigInt.one << TOKEN_WEBSERVICE) |
                          (BigInt.one << TOKEN_WHEN) |
                          (BigInt.one << TOKEN_WHILE) |
                          (BigInt.one << TOKEN_WITH) |
                          (BigInt.one << TOKEN_WITHOUT) |
                          (BigInt.one << TOKEN_LIST) |
                          (BigInt.one << TOKEN_MAP))) !=
                  BigInt.zero) ||
          _la == TOKEN_Identifier)) {
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

  @override
  bool sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
      case 72:
        return _expression_sempred(_localctx, predIndex);
    }
    return true;
  }

  bool _expression_sempred(RuleContext _localctx, int predIndex) {
    switch (predIndex) {
      case 0:
        return precpred(context, 13);
      case 1:
        return precpred(context, 12);
      case 2:
        return precpred(context, 11);
      case 3:
        return precpred(context, 10);
      case 4:
        return precpred(context, 8);
      case 5:
        return precpred(context, 7);
      case 6:
        return precpred(context, 6);
      case 7:
        return precpred(context, 5);
      case 8:
        return precpred(context, 4);
      case 9:
        return precpred(context, 3);
      case 10:
        return precpred(context, 2);
      case 11:
        return precpred(context, 1);
      case 12:
        return precpred(context, 21);
      case 13:
        return precpred(context, 20);
      case 14:
        return precpred(context, 16);
      case 15:
        return precpred(context, 9);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
      '\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{73}\u{3DF}\u{4}\u{2}\u{9}\u{2}'
      '\u{4}\u{3}\u{9}\u{3}\u{4}\u{4}\u{9}\u{4}\u{4}\u{5}\u{9}\u{5}\u{4}\u{6}'
      '\u{9}\u{6}\u{4}\u{7}\u{9}\u{7}\u{4}\u{8}\u{9}\u{8}\u{4}\u{9}\u{9}\u{9}'
      '\u{4}\u{A}\u{9}\u{A}\u{4}\u{B}\u{9}\u{B}\u{4}\u{C}\u{9}\u{C}\u{4}\u{D}'
      '\u{9}\u{D}\u{4}\u{E}\u{9}\u{E}\u{4}\u{F}\u{9}\u{F}\u{4}\u{10}\u{9}\u{10}'
      '\u{4}\u{11}\u{9}\u{11}\u{4}\u{12}\u{9}\u{12}\u{4}\u{13}\u{9}\u{13}\u{4}'
      '\u{14}\u{9}\u{14}\u{4}\u{15}\u{9}\u{15}\u{4}\u{16}\u{9}\u{16}\u{4}\u{17}'
      '\u{9}\u{17}\u{4}\u{18}\u{9}\u{18}\u{4}\u{19}\u{9}\u{19}\u{4}\u{1A}\u{9}'
      '\u{1A}\u{4}\u{1B}\u{9}\u{1B}\u{4}\u{1C}\u{9}\u{1C}\u{4}\u{1D}\u{9}\u{1D}'
      '\u{4}\u{1E}\u{9}\u{1E}\u{4}\u{1F}\u{9}\u{1F}\u{4}\u{20}\u{9}\u{20}\u{4}'
      '\u{21}\u{9}\u{21}\u{4}\u{22}\u{9}\u{22}\u{4}\u{23}\u{9}\u{23}\u{4}\u{24}'
      '\u{9}\u{24}\u{4}\u{25}\u{9}\u{25}\u{4}\u{26}\u{9}\u{26}\u{4}\u{27}\u{9}'
      '\u{27}\u{4}\u{28}\u{9}\u{28}\u{4}\u{29}\u{9}\u{29}\u{4}\u{2A}\u{9}\u{2A}'
      '\u{4}\u{2B}\u{9}\u{2B}\u{4}\u{2C}\u{9}\u{2C}\u{4}\u{2D}\u{9}\u{2D}\u{4}'
      '\u{2E}\u{9}\u{2E}\u{4}\u{2F}\u{9}\u{2F}\u{4}\u{30}\u{9}\u{30}\u{4}\u{31}'
      '\u{9}\u{31}\u{4}\u{32}\u{9}\u{32}\u{4}\u{33}\u{9}\u{33}\u{4}\u{34}\u{9}'
      '\u{34}\u{4}\u{35}\u{9}\u{35}\u{4}\u{36}\u{9}\u{36}\u{4}\u{37}\u{9}\u{37}'
      '\u{4}\u{38}\u{9}\u{38}\u{4}\u{39}\u{9}\u{39}\u{4}\u{3A}\u{9}\u{3A}\u{4}'
      '\u{3B}\u{9}\u{3B}\u{4}\u{3C}\u{9}\u{3C}\u{4}\u{3D}\u{9}\u{3D}\u{4}\u{3E}'
      '\u{9}\u{3E}\u{4}\u{3F}\u{9}\u{3F}\u{4}\u{40}\u{9}\u{40}\u{4}\u{41}\u{9}'
      '\u{41}\u{4}\u{42}\u{9}\u{42}\u{4}\u{43}\u{9}\u{43}\u{4}\u{44}\u{9}\u{44}'
      '\u{4}\u{45}\u{9}\u{45}\u{4}\u{46}\u{9}\u{46}\u{4}\u{47}\u{9}\u{47}\u{4}'
      '\u{48}\u{9}\u{48}\u{4}\u{49}\u{9}\u{49}\u{4}\u{4A}\u{9}\u{4A}\u{4}\u{4B}'
      '\u{9}\u{4B}\u{4}\u{4C}\u{9}\u{4C}\u{4}\u{4D}\u{9}\u{4D}\u{4}\u{4E}\u{9}'
      '\u{4E}\u{4}\u{4F}\u{9}\u{4F}\u{4}\u{50}\u{9}\u{50}\u{4}\u{51}\u{9}\u{51}'
      '\u{4}\u{52}\u{9}\u{52}\u{4}\u{53}\u{9}\u{53}\u{4}\u{54}\u{9}\u{54}\u{4}'
      '\u{55}\u{9}\u{55}\u{4}\u{56}\u{9}\u{56}\u{4}\u{57}\u{9}\u{57}\u{4}\u{58}'
      '\u{9}\u{58}\u{4}\u{59}\u{9}\u{59}\u{4}\u{5A}\u{9}\u{5A}\u{3}\u{2}\u{3}'
      '\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}'
      '\u{2}\u{BD}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{C0}\u{B}\u{2}\u{3}\u{2}\u{3}'
      '\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{4}\u{3}'
      '\u{4}\u{3}\u{4}\u{3}\u{5}\u{5}\u{5}\u{CD}\u{A}\u{5}\u{3}\u{5}\u{7}\u{5}'
      '\u{D0}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{D3}\u{B}\u{5}\u{3}\u{5}\u{3}\u{5}'
      '\u{5}\u{5}\u{D7}\u{A}\u{5}\u{3}\u{5}\u{7}\u{5}\u{DA}\u{A}\u{5}\u{C}\u{5}'
      '\u{E}\u{5}\u{DD}\u{B}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}\u{E1}\u{A}\u{5}'
      '\u{3}\u{5}\u{7}\u{5}\u{E4}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{E7}\u{B}\u{5}'
      '\u{3}\u{5}\u{5}\u{5}\u{EA}\u{A}\u{5}\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}'
      '\u{6}\u{5}\u{6}\u{F0}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{F4}\u{A}'
      '\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{7}\u{5}'
      '\u{7}\u{FC}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}\u{8}\u{3}\u{8}\u{3}\u{8}'
      '\u{7}\u{8}\u{103}\u{A}\u{8}\u{C}\u{8}\u{E}\u{8}\u{106}\u{B}\u{8}\u{3}'
      '\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{5}\u{9}\u{10C}\u{A}\u{9}\u{3}\u{9}'
      '\u{3}\u{9}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{7}\u{A}\u{113}\u{A}\u{A}\u{C}'
      '\u{A}\u{E}\u{A}\u{116}\u{B}\u{A}\u{3}\u{B}\u{3}\u{B}\u{7}\u{B}\u{11A}'
      '\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{11D}\u{B}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}'
      '\u{C}\u{3}\u{C}\u{7}\u{C}\u{123}\u{A}\u{C}\u{C}\u{C}\u{E}\u{C}\u{126}'
      '\u{B}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{D}\u{3}\u{D}\u{5}\u{D}\u{12C}\u{A}'
      '\u{D}\u{3}\u{D}\u{3}\u{D}\u{7}\u{D}\u{130}\u{A}\u{D}\u{C}\u{D}\u{E}\u{D}'
      '\u{133}\u{B}\u{D}\u{3}\u{D}\u{5}\u{D}\u{136}\u{A}\u{D}\u{3}\u{E}\u{3}'
      '\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}'
      '\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}'
      '\u{E}\u{3}\u{E}\u{3}\u{E}\u{3}\u{E}\u{5}\u{E}\u{14B}\u{A}\u{E}\u{3}\u{F}'
      '\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{5}\u{F}'
      '\u{154}\u{A}\u{F}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{158}\u{A}\u{10}'
      '\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{15E}\u{A}\u{10}'
      '\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{12}\u{3}\u{12}\u{3}'
      '\u{12}\u{3}\u{12}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{7}\u{13}'
      '\u{16C}\u{A}\u{13}\u{C}\u{13}\u{E}\u{13}\u{16F}\u{B}\u{13}\u{3}\u{13}'
      '\u{3}\u{13}\u{3}\u{14}\u{7}\u{14}\u{174}\u{A}\u{14}\u{C}\u{14}\u{E}\u{14}'
      '\u{177}\u{B}\u{14}\u{3}\u{14}\u{3}\u{14}\u{5}\u{14}\u{17B}\u{A}\u{14}'
      '\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{15}\u{3}\u{15}\u{3}'
      '\u{15}\u{7}\u{15}\u{184}\u{A}\u{15}\u{C}\u{15}\u{E}\u{15}\u{187}\u{B}'
      '\u{15}\u{3}\u{16}\u{3}\u{16}\u{3}\u{16}\u{5}\u{16}\u{18C}\u{A}\u{16}'
      '\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{7}\u{17}\u{192}\u{A}\u{17}'
      '\u{C}\u{17}\u{E}\u{17}\u{195}\u{B}\u{17}\u{3}\u{17}\u{5}\u{17}\u{198}'
      '\u{A}\u{17}\u{5}\u{17}\u{19A}\u{A}\u{17}\u{3}\u{17}\u{3}\u{17}\u{3}\u{18}'
      '\u{3}\u{18}\u{3}\u{18}\u{7}\u{18}\u{1A1}\u{A}\u{18}\u{C}\u{18}\u{E}\u{18}'
      '\u{1A4}\u{B}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}\u{3}\u{19}\u{7}\u{19}'
      '\u{1AA}\u{A}\u{19}\u{C}\u{19}\u{E}\u{19}\u{1AD}\u{B}\u{19}\u{3}\u{1A}'
      '\u{3}\u{1A}\u{5}\u{1A}\u{1B1}\u{A}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{5}\u{1A}'
      '\u{1B5}\u{A}\u{1A}\u{3}\u{1A}\u{3}\u{1A}\u{5}\u{1A}\u{1B9}\u{A}\u{1A}'
      '\u{3}\u{1A}\u{3}\u{1A}\u{5}\u{1A}\u{1BD}\u{A}\u{1A}\u{5}\u{1A}\u{1BF}'
      '\u{A}\u{1A}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{3}\u{1C}\u{3}'
      '\u{1C}\u{5}\u{1C}\u{1C7}\u{A}\u{1C}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}'
      '\u{3}\u{1D}\u{3}\u{1D}\u{7}\u{1D}\u{1CE}\u{A}\u{1D}\u{C}\u{1D}\u{E}\u{1D}'
      '\u{1D1}\u{B}\u{1D}\u{3}\u{1E}\u{7}\u{1E}\u{1D4}\u{A}\u{1E}\u{C}\u{1E}'
      '\u{E}\u{1E}\u{1D7}\u{B}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1E}\u{3}\u{1F}'
      '\u{3}\u{1F}\u{3}\u{1F}\u{7}\u{1F}\u{1DF}\u{A}\u{1F}\u{C}\u{1F}\u{E}\u{1F}'
      '\u{1E2}\u{B}\u{1F}\u{3}\u{20}\u{3}\u{20}\u{3}\u{21}\u{3}\u{21}\u{3}\u{21}'
      '\u{3}\u{21}\u{3}\u{21}\u{5}\u{21}\u{1EB}\u{A}\u{21}\u{3}\u{21}\u{5}\u{21}'
      '\u{1EE}\u{A}\u{21}\u{3}\u{22}\u{3}\u{22}\u{5}\u{22}\u{1F2}\u{A}\u{22}'
      '\u{3}\u{22}\u{7}\u{22}\u{1F5}\u{A}\u{22}\u{C}\u{22}\u{E}\u{22}\u{1F8}'
      '\u{B}\u{22}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{3}\u{23}\u{3}\u{24}\u{3}'
      '\u{24}\u{3}\u{24}\u{5}\u{24}\u{201}\u{A}\u{24}\u{3}\u{25}\u{3}\u{25}'
      '\u{3}\u{25}\u{3}\u{25}\u{7}\u{25}\u{207}\u{A}\u{25}\u{C}\u{25}\u{E}\u{25}'
      '\u{20A}\u{B}\u{25}\u{5}\u{25}\u{20C}\u{A}\u{25}\u{3}\u{25}\u{5}\u{25}'
      '\u{20F}\u{A}\u{25}\u{3}\u{25}\u{3}\u{25}\u{3}\u{26}\u{3}\u{26}\u{7}\u{26}'
      '\u{215}\u{A}\u{26}\u{C}\u{26}\u{E}\u{26}\u{218}\u{B}\u{26}\u{3}\u{26}'
      '\u{3}\u{26}\u{3}\u{27}\u{3}\u{27}\u{3}\u{27}\u{3}\u{28}\u{7}\u{28}\u{220}'
      '\u{A}\u{28}\u{C}\u{28}\u{E}\u{28}\u{223}\u{B}\u{28}\u{3}\u{28}\u{3}\u{28}'
      '\u{3}\u{28}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}'
      '\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}'
      '\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}\u{29}\u{3}'
      '\u{29}\u{3}\u{29}\u{5}\u{29}\u{23C}\u{A}\u{29}\u{3}\u{2A}\u{3}\u{2A}'
      '\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{5}\u{2A}\u{243}\u{A}\u{2A}\u{3}\u{2B}'
      '\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{6}\u{2B}\u{24A}\u{A}\u{2B}'
      '\u{D}\u{2B}\u{E}\u{2B}\u{24B}\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2C}\u{3}\u{2C}'
      '\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{7}'
      '\u{2D}\u{258}\u{A}\u{2D}\u{C}\u{2D}\u{E}\u{2D}\u{25B}\u{B}\u{2D}\u{3}'
      '\u{2D}\u{3}\u{2D}\u{3}\u{2D}\u{5}\u{2D}\u{260}\u{A}\u{2D}\u{3}\u{2E}'
      '\u{5}\u{2E}\u{263}\u{A}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}'
      '\u{5}\u{2E}\u{269}\u{A}\u{2E}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}'
      '\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}'
      '\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}\u{32}'
      '\u{3}\u{32}\u{3}\u{32}\u{6}\u{32}\u{27E}\u{A}\u{32}\u{D}\u{32}\u{E}\u{32}'
      '\u{27F}\u{3}\u{32}\u{5}\u{32}\u{283}\u{A}\u{32}\u{3}\u{32}\u{5}\u{32}'
      '\u{286}\u{A}\u{32}\u{3}\u{33}\u{3}\u{33}\u{5}\u{33}\u{28A}\u{A}\u{33}'
      '\u{3}\u{33}\u{3}\u{33}\u{3}\u{34}\u{3}\u{34}\u{3}\u{34}\u{3}\u{34}\u{3}'
      '\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}\u{36}\u{3}\u{36}\u{3}\u{36}\u{3}\u{37}'
      '\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{3}'
      '\u{38}\u{3}\u{39}\u{3}\u{39}\u{3}\u{39}\u{3}\u{39}\u{3}\u{3A}\u{3}\u{3A}'
      '\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3B}\u{5}\u{3B}\u{2AB}'
      '\u{A}\u{3B}\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{3}'
      '\u{3C}\u{3}\u{3C}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3D}\u{5}\u{3D}\u{2B7}'
      '\u{A}\u{3D}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3E}\u{3}\u{3E}\u{3}'
      '\u{3E}\u{3}\u{3F}\u{7}\u{3F}\u{2C0}\u{A}\u{3F}\u{C}\u{3F}\u{E}\u{3F}'
      '\u{2C3}\u{B}\u{3F}\u{3}\u{3F}\u{3}\u{3F}\u{5}\u{3F}\u{2C7}\u{A}\u{3F}'
      '\u{3}\u{40}\u{3}\u{40}\u{3}\u{40}\u{5}\u{40}\u{2CC}\u{A}\u{40}\u{3}\u{41}'
      '\u{3}\u{41}\u{3}\u{41}\u{5}\u{41}\u{2D1}\u{A}\u{41}\u{3}\u{42}\u{3}\u{42}'
      '\u{3}\u{42}\u{7}\u{42}\u{2D6}\u{A}\u{42}\u{C}\u{42}\u{E}\u{42}\u{2D9}'
      '\u{B}\u{42}\u{3}\u{42}\u{3}\u{42}\u{3}\u{42}\u{3}\u{42}\u{3}\u{42}\u{3}'
      '\u{43}\u{3}\u{43}\u{3}\u{43}\u{3}\u{44}\u{3}\u{44}\u{5}\u{44}\u{2E5}'
      '\u{A}\u{44}\u{3}\u{44}\u{3}\u{44}\u{5}\u{44}\u{2E9}\u{A}\u{44}\u{3}\u{44}'
      '\u{3}\u{44}\u{5}\u{44}\u{2ED}\u{A}\u{44}\u{5}\u{44}\u{2EF}\u{A}\u{44}'
      '\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}\u{2F3}\u{A}\u{45}\u{3}\u{46}\u{3}\u{46}'
      '\u{3}\u{46}\u{3}\u{46}\u{3}\u{46}\u{3}\u{47}\u{3}\u{47}\u{3}\u{48}\u{3}'
      '\u{48}\u{3}\u{48}\u{3}\u{48}\u{3}\u{49}\u{3}\u{49}\u{3}\u{49}\u{7}\u{49}'
      '\u{303}\u{A}\u{49}\u{C}\u{49}\u{E}\u{49}\u{306}\u{B}\u{49}\u{3}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}'
      '\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}'
      '\u{5}\u{4A}\u{316}\u{A}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}'
      '\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{5}\u{4A}\u{326}\u{A}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{5}\u{4A}\u{32C}\u{A}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}'
      '\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}'
      '\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{5}'
      '\u{4A}\u{34E}\u{A}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}'
      '\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{7}'
      '\u{4A}\u{35A}\u{A}\u{4A}\u{C}\u{4A}\u{E}\u{4A}\u{35D}\u{B}\u{4A}\u{3}'
      '\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
      '\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{5}'
      '\u{4B}\u{36C}\u{A}\u{4B}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{5}\u{4C}'
      '\u{371}\u{A}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
      '\u{5}\u{4C}\u{378}\u{A}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
      '\u{5}\u{4C}\u{37E}\u{A}\u{4C}\u{3}\u{4C}\u{5}\u{4C}\u{381}\u{A}\u{4C}'
      '\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{5}\u{4D}\u{386}\u{A}\u{4D}\u{3}\u{4D}'
      '\u{3}\u{4D}\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}\u{3}'
      '\u{4E}\u{5}\u{4E}\u{390}\u{A}\u{4E}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}'
      '\u{7}\u{4F}\u{395}\u{A}\u{4F}\u{C}\u{4F}\u{E}\u{4F}\u{398}\u{B}\u{4F}'
      '\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}\u{5}\u{50}\u{39F}'
      '\u{A}\u{50}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{52}\u{3}\u{52}\u{3}'
      '\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}\u{3}\u{53}'
      '\u{5}\u{53}\u{3AD}\u{A}\u{53}\u{5}\u{53}\u{3AF}\u{A}\u{53}\u{3}\u{54}'
      '\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}\u{7}\u{54}\u{3B5}\u{A}\u{54}\u{C}\u{54}'
      '\u{E}\u{54}\u{3B8}\u{B}\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{55}\u{3}\u{55}'
      '\u{3}\u{55}\u{3}\u{55}\u{3}\u{56}\u{3}\u{56}\u{3}\u{56}\u{3}\u{56}\u{7}'
      '\u{56}\u{3C4}\u{A}\u{56}\u{C}\u{56}\u{E}\u{56}\u{3C7}\u{B}\u{56}\u{3}'
      '\u{56}\u{3}\u{56}\u{3}\u{57}\u{3}\u{57}\u{5}\u{57}\u{3CD}\u{A}\u{57}'
      '\u{3}\u{57}\u{3}\u{57}\u{3}\u{58}\u{3}\u{58}\u{3}\u{58}\u{7}\u{58}\u{3D4}'
      '\u{A}\u{58}\u{C}\u{58}\u{E}\u{58}\u{3D7}\u{B}\u{58}\u{3}\u{58}\u{3}\u{58}'
      '\u{3}\u{59}\u{3}\u{59}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{3D5}\u{3}'
      '\u{92}\u{5B}\u{2}\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}'
      '\u{18}\u{1A}\u{1C}\u{1E}\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}'
      '\u{30}\u{32}\u{34}\u{36}\u{38}\u{3A}\u{3C}\u{3E}\u{40}\u{42}\u{44}\u{46}'
      '\u{48}\u{4A}\u{4C}\u{4E}\u{50}\u{52}\u{54}\u{56}\u{58}\u{5A}\u{5C}\u{5E}'
      '\u{60}\u{62}\u{64}\u{66}\u{68}\u{6A}\u{6C}\u{6E}\u{70}\u{72}\u{74}\u{76}'
      '\u{78}\u{7A}\u{7C}\u{7E}\u{80}\u{82}\u{84}\u{86}\u{88}\u{8A}\u{8C}\u{8E}'
      '\u{90}\u{92}\u{94}\u{96}\u{98}\u{9A}\u{9C}\u{9E}\u{A0}\u{A2}\u{A4}\u{A6}'
      '\u{A8}\u{AA}\u{AC}\u{AE}\u{B0}\u{B2}\u{2}\u{11}\u{3}\u{2}\u{4}\u{5}\u{5}'
      '\u{2}\u{A}\u{A}\u{17}\u{17}\u{2F}\u{30}\u{4}\u{2}\u{1C}\u{1C}\u{3B}\u{3E}'
      '\u{3}\u{2}\u{58}\u{5B}\u{3}\u{2}\u{4C}\u{4D}\u{4}\u{2}\u{5C}\u{5D}\u{61}'
      '\u{61}\u{3}\u{2}\u{5A}\u{5B}\u{3}\u{2}\u{4A}\u{4B}\u{3}\u{2}\u{51}\u{55}'
      '\u{4}\u{2}\u{49}\u{49}\u{63}\u{6D}\u{4}\u{2}\u{48}\u{48}\u{4E}\u{4E}'
      '\u{3}\u{2}\u{58}\u{59}\u{3}\u{2}\u{45}\u{45}\u{C}\u{2}\u{4}\u{5}\u{12}'
      '\u{12}\u{16}\u{16}\u{18}\u{18}\u{24}\u{25}\u{28}\u{28}\u{2C}\u{2D}\u{35}'
      '\u{35}\u{37}\u{38}\u{6F}\u{6F}\u{6}\u{2}\u{3}\u{22}\u{24}\u{32}\u{34}'
      '\u{3A}\u{6F}\u{6F}\u{2}\u{431}\u{2}\u{B4}\u{3}\u{2}\u{2}\u{2}\u{4}\u{C5}'
      '\u{3}\u{2}\u{2}\u{2}\u{6}\u{C8}\u{3}\u{2}\u{2}\u{2}\u{8}\u{E9}\u{3}\u{2}'
      '\u{2}\u{2}\u{A}\u{EB}\u{3}\u{2}\u{2}\u{2}\u{C}\u{F7}\u{3}\u{2}\u{2}\u{2}'
      '\u{E}\u{FF}\u{3}\u{2}\u{2}\u{2}\u{10}\u{107}\u{3}\u{2}\u{2}\u{2}\u{12}'
      '\u{10F}\u{3}\u{2}\u{2}\u{2}\u{14}\u{117}\u{3}\u{2}\u{2}\u{2}\u{16}\u{120}'
      '\u{3}\u{2}\u{2}\u{2}\u{18}\u{135}\u{3}\u{2}\u{2}\u{2}\u{1A}\u{14A}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C}\u{153}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{157}\u{3}\u{2}'
      '\u{2}\u{2}\u{20}\u{15F}\u{3}\u{2}\u{2}\u{2}\u{22}\u{163}\u{3}\u{2}\u{2}'
      '\u{2}\u{24}\u{167}\u{3}\u{2}\u{2}\u{2}\u{26}\u{175}\u{3}\u{2}\u{2}\u{2}'
      '\u{28}\u{180}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{188}\u{3}\u{2}\u{2}\u{2}\u{2C}'
      '\u{18D}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{19D}\u{3}\u{2}\u{2}\u{2}\u{30}\u{1AB}'
      '\u{3}\u{2}\u{2}\u{2}\u{32}\u{1BE}\u{3}\u{2}\u{2}\u{2}\u{34}\u{1C0}\u{3}'
      '\u{2}\u{2}\u{2}\u{36}\u{1C4}\u{3}\u{2}\u{2}\u{2}\u{38}\u{1CA}\u{3}\u{2}'
      '\u{2}\u{2}\u{3A}\u{1D5}\u{3}\u{2}\u{2}\u{2}\u{3C}\u{1DB}\u{3}\u{2}\u{2}'
      '\u{2}\u{3E}\u{1E3}\u{3}\u{2}\u{2}\u{2}\u{40}\u{1E5}\u{3}\u{2}\u{2}\u{2}'
      '\u{42}\u{1EF}\u{3}\u{2}\u{2}\u{2}\u{44}\u{1F9}\u{3}\u{2}\u{2}\u{2}\u{46}'
      '\u{200}\u{3}\u{2}\u{2}\u{2}\u{48}\u{202}\u{3}\u{2}\u{2}\u{2}\u{4A}\u{212}'
      '\u{3}\u{2}\u{2}\u{2}\u{4C}\u{21B}\u{3}\u{2}\u{2}\u{2}\u{4E}\u{221}\u{3}'
      '\u{2}\u{2}\u{2}\u{50}\u{23B}\u{3}\u{2}\u{2}\u{2}\u{52}\u{23D}\u{3}\u{2}'
      '\u{2}\u{2}\u{54}\u{244}\u{3}\u{2}\u{2}\u{2}\u{56}\u{24F}\u{3}\u{2}\u{2}'
      '\u{2}\u{58}\u{25F}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{268}\u{3}\u{2}\u{2}\u{2}'
      '\u{5C}\u{26A}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{270}\u{3}\u{2}\u{2}\u{2}\u{60}'
      '\u{274}\u{3}\u{2}\u{2}\u{2}\u{62}\u{27A}\u{3}\u{2}\u{2}\u{2}\u{64}\u{287}'
      '\u{3}\u{2}\u{2}\u{2}\u{66}\u{28D}\u{3}\u{2}\u{2}\u{2}\u{68}\u{291}\u{3}'
      '\u{2}\u{2}\u{2}\u{6A}\u{294}\u{3}\u{2}\u{2}\u{2}\u{6C}\u{297}\u{3}\u{2}'
      '\u{2}\u{2}\u{6E}\u{29B}\u{3}\u{2}\u{2}\u{2}\u{70}\u{29F}\u{3}\u{2}\u{2}'
      '\u{2}\u{72}\u{2A3}\u{3}\u{2}\u{2}\u{2}\u{74}\u{2A7}\u{3}\u{2}\u{2}\u{2}'
      '\u{76}\u{2AE}\u{3}\u{2}\u{2}\u{2}\u{78}\u{2B3}\u{3}\u{2}\u{2}\u{2}\u{7A}'
      '\u{2BB}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{2C1}\u{3}\u{2}\u{2}\u{2}\u{7E}\u{2C8}'
      '\u{3}\u{2}\u{2}\u{2}\u{80}\u{2CD}\u{3}\u{2}\u{2}\u{2}\u{82}\u{2D2}\u{3}'
      '\u{2}\u{2}\u{2}\u{84}\u{2DF}\u{3}\u{2}\u{2}\u{2}\u{86}\u{2EE}\u{3}\u{2}'
      '\u{2}\u{2}\u{88}\u{2F2}\u{3}\u{2}\u{2}\u{2}\u{8A}\u{2F4}\u{3}\u{2}\u{2}'
      '\u{2}\u{8C}\u{2F9}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{2FB}\u{3}\u{2}\u{2}\u{2}'
      '\u{90}\u{2FF}\u{3}\u{2}\u{2}\u{2}\u{92}\u{315}\u{3}\u{2}\u{2}\u{2}\u{94}'
      '\u{36B}\u{3}\u{2}\u{2}\u{2}\u{96}\u{380}\u{3}\u{2}\u{2}\u{2}\u{98}\u{382}'
      '\u{3}\u{2}\u{2}\u{2}\u{9A}\u{389}\u{3}\u{2}\u{2}\u{2}\u{9C}\u{391}\u{3}'
      '\u{2}\u{2}\u{2}\u{9E}\u{399}\u{3}\u{2}\u{2}\u{2}\u{A0}\u{3A0}\u{3}\u{2}'
      '\u{2}\u{2}\u{A2}\u{3A3}\u{3}\u{2}\u{2}\u{2}\u{A4}\u{3AE}\u{3}\u{2}\u{2}'
      '\u{2}\u{A6}\u{3B0}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{3BB}\u{3}\u{2}\u{2}\u{2}'
      '\u{AA}\u{3BF}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{3CA}\u{3}\u{2}\u{2}\u{2}\u{AE}'
      '\u{3D0}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{3DA}\u{3}\u{2}\u{2}\u{2}\u{B2}\u{3DC}'
      '\u{3}\u{2}\u{2}\u{2}\u{B4}\u{B5}\u{7}\u{2D}\u{2}\u{2}\u{B5}\u{B6}\u{5}'
      '\u{B0}\u{59}\u{2}\u{B6}\u{B7}\u{7}\u{1D}\u{2}\u{2}\u{B7}\u{B8}\u{5}\u{B0}'
      '\u{59}\u{2}\u{B8}\u{B9}\u{7}\u{40}\u{2}\u{2}\u{B9}\u{BE}\u{5}\u{4}\u{3}'
      '\u{2}\u{BA}\u{BB}\u{7}\u{47}\u{2}\u{2}\u{BB}\u{BD}\u{5}\u{4}\u{3}\u{2}'
      '\u{BC}\u{BA}\u{3}\u{2}\u{2}\u{2}\u{BD}\u{C0}\u{3}\u{2}\u{2}\u{2}\u{BE}'
      '\u{BC}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{BF}\u{3}\u{2}\u{2}\u{2}\u{BF}\u{C1}'
      '\u{3}\u{2}\u{2}\u{2}\u{C0}\u{BE}\u{3}\u{2}\u{2}\u{2}\u{C1}\u{C2}\u{7}'
      '\u{41}\u{2}\u{2}\u{C2}\u{C3}\u{5}\u{4A}\u{26}\u{2}\u{C3}\u{C4}\u{7}\u{2}'
      '\u{2}\u{3}\u{C4}\u{3}\u{3}\u{2}\u{2}\u{2}\u{C5}\u{C6}\u{9}\u{2}\u{2}'
      '\u{2}\u{C6}\u{C7}\u{9}\u{3}\u{2}\u{2}\u{C7}\u{5}\u{3}\u{2}\u{2}\u{2}'
      '\u{C8}\u{C9}\u{5}\u{8}\u{5}\u{2}\u{C9}\u{CA}\u{7}\u{2}\u{2}\u{3}\u{CA}'
      '\u{7}\u{3}\u{2}\u{2}\u{2}\u{CB}\u{CD}\u{7}\u{71}\u{2}\u{2}\u{CC}\u{CB}'
      '\u{3}\u{2}\u{2}\u{2}\u{CC}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{CD}\u{D1}\u{3}'
      '\u{2}\u{2}\u{2}\u{CE}\u{D0}\u{5}\u{1A}\u{E}\u{2}\u{CF}\u{CE}\u{3}\u{2}'
      '\u{2}\u{2}\u{D0}\u{D3}\u{3}\u{2}\u{2}\u{2}\u{D1}\u{CF}\u{3}\u{2}\u{2}'
      '\u{2}\u{D1}\u{D2}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{D4}\u{3}\u{2}\u{2}\u{2}'
      '\u{D3}\u{D1}\u{3}\u{2}\u{2}\u{2}\u{D4}\u{EA}\u{5}\u{A}\u{6}\u{2}\u{D5}'
      '\u{D7}\u{7}\u{71}\u{2}\u{2}\u{D6}\u{D5}\u{3}\u{2}\u{2}\u{2}\u{D6}\u{D7}'
      '\u{3}\u{2}\u{2}\u{2}\u{D7}\u{DB}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{DA}\u{5}'
      '\u{1A}\u{E}\u{2}\u{D9}\u{D8}\u{3}\u{2}\u{2}\u{2}\u{DA}\u{DD}\u{3}\u{2}'
      '\u{2}\u{2}\u{DB}\u{D9}\u{3}\u{2}\u{2}\u{2}\u{DB}\u{DC}\u{3}\u{2}\u{2}'
      '\u{2}\u{DC}\u{DE}\u{3}\u{2}\u{2}\u{2}\u{DD}\u{DB}\u{3}\u{2}\u{2}\u{2}'
      '\u{DE}\u{EA}\u{5}\u{C}\u{7}\u{2}\u{DF}\u{E1}\u{7}\u{71}\u{2}\u{2}\u{E0}'
      '\u{DF}\u{3}\u{2}\u{2}\u{2}\u{E0}\u{E1}\u{3}\u{2}\u{2}\u{2}\u{E1}\u{E5}'
      '\u{3}\u{2}\u{2}\u{2}\u{E2}\u{E4}\u{5}\u{1A}\u{E}\u{2}\u{E3}\u{E2}\u{3}'
      '\u{2}\u{2}\u{2}\u{E4}\u{E7}\u{3}\u{2}\u{2}\u{2}\u{E5}\u{E3}\u{3}\u{2}'
      '\u{2}\u{2}\u{E5}\u{E6}\u{3}\u{2}\u{2}\u{2}\u{E6}\u{E8}\u{3}\u{2}\u{2}'
      '\u{2}\u{E7}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{EA}\u{5}\u{10}\u{9}\u{2}'
      '\u{E9}\u{CC}\u{3}\u{2}\u{2}\u{2}\u{E9}\u{D6}\u{3}\u{2}\u{2}\u{2}\u{E9}'
      '\u{E0}\u{3}\u{2}\u{2}\u{2}\u{EA}\u{9}\u{3}\u{2}\u{2}\u{2}\u{EB}\u{EC}'
      '\u{7}\u{8}\u{2}\u{2}\u{EC}\u{EF}\u{5}\u{B0}\u{59}\u{2}\u{ED}\u{EE}\u{7}'
      '\u{E}\u{2}\u{2}\u{EE}\u{F0}\u{5}\u{2E}\u{18}\u{2}\u{EF}\u{ED}\u{3}\u{2}'
      '\u{2}\u{2}\u{EF}\u{F0}\u{3}\u{2}\u{2}\u{2}\u{F0}\u{F3}\u{3}\u{2}\u{2}'
      '\u{2}\u{F1}\u{F2}\u{7}\u{15}\u{2}\u{2}\u{F2}\u{F4}\u{5}\u{12}\u{A}\u{2}'
      '\u{F3}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{F3}\u{F4}\u{3}\u{2}\u{2}\u{2}\u{F4}'
      '\u{F5}\u{3}\u{2}\u{2}\u{2}\u{F5}\u{F6}\u{5}\u{14}\u{B}\u{2}\u{F6}\u{B}'
      '\u{3}\u{2}\u{2}\u{2}\u{F7}\u{F8}\u{7}\u{D}\u{2}\u{2}\u{F8}\u{F9}\u{5}'
      '\u{B0}\u{59}\u{2}\u{F9}\u{FB}\u{7}\u{42}\u{2}\u{2}\u{FA}\u{FC}\u{5}\u{E}'
      '\u{8}\u{2}\u{FB}\u{FA}\u{3}\u{2}\u{2}\u{2}\u{FB}\u{FC}\u{3}\u{2}\u{2}'
      '\u{2}\u{FC}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{FD}\u{FE}\u{7}\u{43}\u{2}\u{2}'
      '\u{FE}\u{D}\u{3}\u{2}\u{2}\u{2}\u{FF}\u{104}\u{5}\u{B0}\u{59}\u{2}\u{100}'
      '\u{101}\u{7}\u{47}\u{2}\u{2}\u{101}\u{103}\u{5}\u{B0}\u{59}\u{2}\u{102}'
      '\u{100}\u{3}\u{2}\u{2}\u{2}\u{103}\u{106}\u{3}\u{2}\u{2}\u{2}\u{104}'
      '\u{102}\u{3}\u{2}\u{2}\u{2}\u{104}\u{105}\u{3}\u{2}\u{2}\u{2}\u{105}'
      '\u{F}\u{3}\u{2}\u{2}\u{2}\u{106}\u{104}\u{3}\u{2}\u{2}\u{2}\u{107}\u{108}'
      '\u{7}\u{19}\u{2}\u{2}\u{108}\u{10B}\u{5}\u{B0}\u{59}\u{2}\u{109}\u{10A}'
      '\u{7}\u{E}\u{2}\u{2}\u{10A}\u{10C}\u{5}\u{12}\u{A}\u{2}\u{10B}\u{109}'
      '\u{3}\u{2}\u{2}\u{2}\u{10B}\u{10C}\u{3}\u{2}\u{2}\u{2}\u{10C}\u{10D}'
      '\u{3}\u{2}\u{2}\u{2}\u{10D}\u{10E}\u{5}\u{16}\u{C}\u{2}\u{10E}\u{11}'
      '\u{3}\u{2}\u{2}\u{2}\u{10F}\u{114}\u{5}\u{2E}\u{18}\u{2}\u{110}\u{111}'
      '\u{7}\u{47}\u{2}\u{2}\u{111}\u{113}\u{5}\u{2E}\u{18}\u{2}\u{112}\u{110}'
      '\u{3}\u{2}\u{2}\u{2}\u{113}\u{116}\u{3}\u{2}\u{2}\u{2}\u{114}\u{112}'
      '\u{3}\u{2}\u{2}\u{2}\u{114}\u{115}\u{3}\u{2}\u{2}\u{2}\u{115}\u{13}\u{3}'
      '\u{2}\u{2}\u{2}\u{116}\u{114}\u{3}\u{2}\u{2}\u{2}\u{117}\u{11B}\u{7}'
      '\u{42}\u{2}\u{2}\u{118}\u{11A}\u{5}\u{18}\u{D}\u{2}\u{119}\u{118}\u{3}'
      '\u{2}\u{2}\u{2}\u{11A}\u{11D}\u{3}\u{2}\u{2}\u{2}\u{11B}\u{119}\u{3}'
      '\u{2}\u{2}\u{2}\u{11B}\u{11C}\u{3}\u{2}\u{2}\u{2}\u{11C}\u{11E}\u{3}'
      '\u{2}\u{2}\u{2}\u{11D}\u{11B}\u{3}\u{2}\u{2}\u{2}\u{11E}\u{11F}\u{7}'
      '\u{43}\u{2}\u{2}\u{11F}\u{15}\u{3}\u{2}\u{2}\u{2}\u{120}\u{124}\u{7}'
      '\u{42}\u{2}\u{2}\u{121}\u{123}\u{5}\u{26}\u{14}\u{2}\u{122}\u{121}\u{3}'
      '\u{2}\u{2}\u{2}\u{123}\u{126}\u{3}\u{2}\u{2}\u{2}\u{124}\u{122}\u{3}'
      '\u{2}\u{2}\u{2}\u{124}\u{125}\u{3}\u{2}\u{2}\u{2}\u{125}\u{127}\u{3}'
      '\u{2}\u{2}\u{2}\u{126}\u{124}\u{3}\u{2}\u{2}\u{2}\u{127}\u{128}\u{7}'
      '\u{43}\u{2}\u{2}\u{128}\u{17}\u{3}\u{2}\u{2}\u{2}\u{129}\u{136}\u{7}'
      '\u{46}\u{2}\u{2}\u{12A}\u{12C}\u{7}\u{26}\u{2}\u{2}\u{12B}\u{12A}\u{3}'
      '\u{2}\u{2}\u{2}\u{12B}\u{12C}\u{3}\u{2}\u{2}\u{2}\u{12C}\u{12D}\u{3}'
      '\u{2}\u{2}\u{2}\u{12D}\u{136}\u{5}\u{4A}\u{26}\u{2}\u{12E}\u{130}\u{5}'
      '\u{1A}\u{E}\u{2}\u{12F}\u{12E}\u{3}\u{2}\u{2}\u{2}\u{130}\u{133}\u{3}'
      '\u{2}\u{2}\u{2}\u{131}\u{12F}\u{3}\u{2}\u{2}\u{2}\u{131}\u{132}\u{3}'
      '\u{2}\u{2}\u{2}\u{132}\u{134}\u{3}\u{2}\u{2}\u{2}\u{133}\u{131}\u{3}'
      '\u{2}\u{2}\u{2}\u{134}\u{136}\u{5}\u{1C}\u{F}\u{2}\u{135}\u{129}\u{3}'
      '\u{2}\u{2}\u{2}\u{135}\u{12B}\u{3}\u{2}\u{2}\u{2}\u{135}\u{131}\u{3}'
      '\u{2}\u{2}\u{2}\u{136}\u{19}\u{3}\u{2}\u{2}\u{2}\u{137}\u{14B}\u{5}\u{40}'
      '\u{21}\u{2}\u{138}\u{14B}\u{7}\u{13}\u{2}\u{2}\u{139}\u{14B}\u{7}\u{21}'
      '\u{2}\u{2}\u{13A}\u{14B}\u{7}\u{20}\u{2}\u{2}\u{13B}\u{14B}\u{7}\u{1F}'
      '\u{2}\u{2}\u{13C}\u{14B}\u{7}\u{2C}\u{2}\u{2}\u{13D}\u{14B}\u{7}\u{26}'
      '\u{2}\u{2}\u{13E}\u{14B}\u{7}\u{3}\u{2}\u{2}\u{13F}\u{14B}\u{7}\u{F}'
      '\u{2}\u{2}\u{140}\u{14B}\u{7}\u{34}\u{2}\u{2}\u{141}\u{14B}\u{7}\u{1E}'
      '\u{2}\u{2}\u{142}\u{14B}\u{7}\u{32}\u{2}\u{2}\u{143}\u{14B}\u{7}\u{29}'
      '\u{2}\u{2}\u{144}\u{145}\u{7}\u{37}\u{2}\u{2}\u{145}\u{14B}\u{7}\u{25}'
      '\u{2}\u{2}\u{146}\u{147}\u{7}\u{38}\u{2}\u{2}\u{147}\u{14B}\u{7}\u{25}'
      '\u{2}\u{2}\u{148}\u{149}\u{7}\u{16}\u{2}\u{2}\u{149}\u{14B}\u{7}\u{25}'
      '\u{2}\u{2}\u{14A}\u{137}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{138}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{139}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{13A}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{13B}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{13C}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{13E}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{13F}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{140}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{141}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{142}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{143}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{144}\u{3}\u{2}'
      '\u{2}\u{2}\u{14A}\u{146}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{148}\u{3}\u{2}'
      '\u{2}\u{2}\u{14B}\u{1B}\u{3}\u{2}\u{2}\u{2}\u{14C}\u{154}\u{5}\u{1E}'
      '\u{10}\u{2}\u{14D}\u{154}\u{5}\u{22}\u{12}\u{2}\u{14E}\u{154}\u{5}\u{20}'
      '\u{11}\u{2}\u{14F}\u{154}\u{5}\u{10}\u{9}\u{2}\u{150}\u{154}\u{5}\u{A}'
      '\u{6}\u{2}\u{151}\u{154}\u{5}\u{C}\u{7}\u{2}\u{152}\u{154}\u{5}\u{24}'
      '\u{13}\u{2}\u{153}\u{14C}\u{3}\u{2}\u{2}\u{2}\u{153}\u{14D}\u{3}\u{2}'
      '\u{2}\u{2}\u{153}\u{14E}\u{3}\u{2}\u{2}\u{2}\u{153}\u{14F}\u{3}\u{2}'
      '\u{2}\u{2}\u{153}\u{150}\u{3}\u{2}\u{2}\u{2}\u{153}\u{151}\u{3}\u{2}'
      '\u{2}\u{2}\u{153}\u{152}\u{3}\u{2}\u{2}\u{2}\u{154}\u{1D}\u{3}\u{2}\u{2}'
      '\u{2}\u{155}\u{158}\u{5}\u{2E}\u{18}\u{2}\u{156}\u{158}\u{7}\u{33}\u{2}'
      '\u{2}\u{157}\u{155}\u{3}\u{2}\u{2}\u{2}\u{157}\u{156}\u{3}\u{2}\u{2}'
      '\u{2}\u{158}\u{159}\u{3}\u{2}\u{2}\u{2}\u{159}\u{15A}\u{5}\u{B0}\u{59}'
      '\u{2}\u{15A}\u{15D}\u{5}\u{36}\u{1C}\u{2}\u{15B}\u{15E}\u{5}\u{4A}\u{26}'
      '\u{2}\u{15C}\u{15E}\u{7}\u{46}\u{2}\u{2}\u{15D}\u{15B}\u{3}\u{2}\u{2}'
      '\u{2}\u{15D}\u{15C}\u{3}\u{2}\u{2}\u{2}\u{15E}\u{1F}\u{3}\u{2}\u{2}\u{2}'
      '\u{15F}\u{160}\u{5}\u{3C}\u{1F}\u{2}\u{160}\u{161}\u{5}\u{36}\u{1C}\u{2}'
      '\u{161}\u{162}\u{5}\u{4A}\u{26}\u{2}\u{162}\u{21}\u{3}\u{2}\u{2}\u{2}'
      '\u{163}\u{164}\u{5}\u{2E}\u{18}\u{2}\u{164}\u{165}\u{5}\u{28}\u{15}\u{2}'
      '\u{165}\u{166}\u{7}\u{46}\u{2}\u{2}\u{166}\u{23}\u{3}\u{2}\u{2}\u{2}'
      '\u{167}\u{168}\u{5}\u{2E}\u{18}\u{2}\u{168}\u{169}\u{5}\u{B0}\u{59}\u{2}'
      '\u{169}\u{16D}\u{7}\u{42}\u{2}\u{2}\u{16A}\u{16C}\u{5}\u{7C}\u{3F}\u{2}'
      '\u{16B}\u{16A}\u{3}\u{2}\u{2}\u{2}\u{16C}\u{16F}\u{3}\u{2}\u{2}\u{2}'
      '\u{16D}\u{16B}\u{3}\u{2}\u{2}\u{2}\u{16D}\u{16E}\u{3}\u{2}\u{2}\u{2}'
      '\u{16E}\u{170}\u{3}\u{2}\u{2}\u{2}\u{16F}\u{16D}\u{3}\u{2}\u{2}\u{2}'
      '\u{170}\u{171}\u{7}\u{43}\u{2}\u{2}\u{171}\u{25}\u{3}\u{2}\u{2}\u{2}'
      '\u{172}\u{174}\u{5}\u{1A}\u{E}\u{2}\u{173}\u{172}\u{3}\u{2}\u{2}\u{2}'
      '\u{174}\u{177}\u{3}\u{2}\u{2}\u{2}\u{175}\u{173}\u{3}\u{2}\u{2}\u{2}'
      '\u{175}\u{176}\u{3}\u{2}\u{2}\u{2}\u{176}\u{17A}\u{3}\u{2}\u{2}\u{2}'
      '\u{177}\u{175}\u{3}\u{2}\u{2}\u{2}\u{178}\u{17B}\u{5}\u{2E}\u{18}\u{2}'
      '\u{179}\u{17B}\u{7}\u{33}\u{2}\u{2}\u{17A}\u{178}\u{3}\u{2}\u{2}\u{2}'
      '\u{17A}\u{179}\u{3}\u{2}\u{2}\u{2}\u{17B}\u{17C}\u{3}\u{2}\u{2}\u{2}'
      '\u{17C}\u{17D}\u{5}\u{B0}\u{59}\u{2}\u{17D}\u{17E}\u{5}\u{36}\u{1C}\u{2}'
      '\u{17E}\u{17F}\u{7}\u{46}\u{2}\u{2}\u{17F}\u{27}\u{3}\u{2}\u{2}\u{2}'
      '\u{180}\u{185}\u{5}\u{2A}\u{16}\u{2}\u{181}\u{182}\u{7}\u{47}\u{2}\u{2}'
      '\u{182}\u{184}\u{5}\u{2A}\u{16}\u{2}\u{183}\u{181}\u{3}\u{2}\u{2}\u{2}'
      '\u{184}\u{187}\u{3}\u{2}\u{2}\u{2}\u{185}\u{183}\u{3}\u{2}\u{2}\u{2}'
      '\u{185}\u{186}\u{3}\u{2}\u{2}\u{2}\u{186}\u{29}\u{3}\u{2}\u{2}\u{2}\u{187}'
      '\u{185}\u{3}\u{2}\u{2}\u{2}\u{188}\u{18B}\u{5}\u{B0}\u{59}\u{2}\u{189}'
      '\u{18A}\u{7}\u{49}\u{2}\u{2}\u{18A}\u{18C}\u{5}\u{92}\u{4A}\u{2}\u{18B}'
      '\u{189}\u{3}\u{2}\u{2}\u{2}\u{18B}\u{18C}\u{3}\u{2}\u{2}\u{2}\u{18C}'
      '\u{2B}\u{3}\u{2}\u{2}\u{2}\u{18D}\u{199}\u{7}\u{42}\u{2}\u{2}\u{18E}'
      '\u{193}\u{5}\u{92}\u{4A}\u{2}\u{18F}\u{190}\u{7}\u{47}\u{2}\u{2}\u{190}'
      '\u{192}\u{5}\u{92}\u{4A}\u{2}\u{191}\u{18F}\u{3}\u{2}\u{2}\u{2}\u{192}'
      '\u{195}\u{3}\u{2}\u{2}\u{2}\u{193}\u{191}\u{3}\u{2}\u{2}\u{2}\u{193}'
      '\u{194}\u{3}\u{2}\u{2}\u{2}\u{194}\u{197}\u{3}\u{2}\u{2}\u{2}\u{195}'
      '\u{193}\u{3}\u{2}\u{2}\u{2}\u{196}\u{198}\u{7}\u{47}\u{2}\u{2}\u{197}'
      '\u{196}\u{3}\u{2}\u{2}\u{2}\u{197}\u{198}\u{3}\u{2}\u{2}\u{2}\u{198}'
      '\u{19A}\u{3}\u{2}\u{2}\u{2}\u{199}\u{18E}\u{3}\u{2}\u{2}\u{2}\u{199}'
      '\u{19A}\u{3}\u{2}\u{2}\u{2}\u{19A}\u{19B}\u{3}\u{2}\u{2}\u{2}\u{19B}'
      '\u{19C}\u{7}\u{43}\u{2}\u{2}\u{19C}\u{2D}\u{3}\u{2}\u{2}\u{2}\u{19D}'
      '\u{1A2}\u{5}\u{32}\u{1A}\u{2}\u{19E}\u{19F}\u{7}\u{48}\u{2}\u{2}\u{19F}'
      '\u{1A1}\u{5}\u{32}\u{1A}\u{2}\u{1A0}\u{19E}\u{3}\u{2}\u{2}\u{2}\u{1A1}'
      '\u{1A4}\u{3}\u{2}\u{2}\u{2}\u{1A2}\u{1A0}\u{3}\u{2}\u{2}\u{2}\u{1A2}'
      '\u{1A3}\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A5}\u{3}\u{2}\u{2}\u{2}\u{1A4}'
      '\u{1A2}\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A6}\u{5}\u{30}\u{19}\u{2}\u{1A6}'
      '\u{2F}\u{3}\u{2}\u{2}\u{2}\u{1A7}\u{1A8}\u{7}\u{44}\u{2}\u{2}\u{1A8}'
      '\u{1AA}\u{7}\u{45}\u{2}\u{2}\u{1A9}\u{1A7}\u{3}\u{2}\u{2}\u{2}\u{1AA}'
      '\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{1AB}\u{1A9}\u{3}\u{2}\u{2}\u{2}\u{1AB}'
      '\u{1AC}\u{3}\u{2}\u{2}\u{2}\u{1AC}\u{31}\u{3}\u{2}\u{2}\u{2}\u{1AD}\u{1AB}'
      '\u{3}\u{2}\u{2}\u{2}\u{1AE}\u{1B0}\u{7}\u{39}\u{2}\u{2}\u{1AF}\u{1B1}'
      '\u{5}\u{34}\u{1B}\u{2}\u{1B0}\u{1AF}\u{3}\u{2}\u{2}\u{2}\u{1B0}\u{1B1}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B1}\u{1BF}\u{3}\u{2}\u{2}\u{2}\u{1B2}\u{1B4}'
      '\u{7}\u{24}\u{2}\u{2}\u{1B3}\u{1B5}\u{5}\u{34}\u{1B}\u{2}\u{1B4}\u{1B3}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B4}\u{1B5}\u{3}\u{2}\u{2}\u{2}\u{1B5}\u{1BF}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B6}\u{1B8}\u{7}\u{3A}\u{2}\u{2}\u{1B7}\u{1B9}'
      '\u{5}\u{34}\u{1B}\u{2}\u{1B8}\u{1B7}\u{3}\u{2}\u{2}\u{2}\u{1B8}\u{1B9}'
      '\u{3}\u{2}\u{2}\u{2}\u{1B9}\u{1BF}\u{3}\u{2}\u{2}\u{2}\u{1BA}\u{1BC}'
      '\u{5}\u{B0}\u{59}\u{2}\u{1BB}\u{1BD}\u{5}\u{34}\u{1B}\u{2}\u{1BC}\u{1BB}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BC}\u{1BD}\u{3}\u{2}\u{2}\u{2}\u{1BD}\u{1BF}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BE}\u{1AE}\u{3}\u{2}\u{2}\u{2}\u{1BE}\u{1B2}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BE}\u{1B6}\u{3}\u{2}\u{2}\u{2}\u{1BE}\u{1BA}'
      '\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{33}\u{3}\u{2}\u{2}\u{2}\u{1C0}\u{1C1}\u{7}'
      '\u{4B}\u{2}\u{2}\u{1C1}\u{1C2}\u{5}\u{12}\u{A}\u{2}\u{1C2}\u{1C3}\u{7}'
      '\u{4A}\u{2}\u{2}\u{1C3}\u{35}\u{3}\u{2}\u{2}\u{2}\u{1C4}\u{1C6}\u{7}'
      '\u{40}\u{2}\u{2}\u{1C5}\u{1C7}\u{5}\u{38}\u{1D}\u{2}\u{1C6}\u{1C5}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C6}\u{1C7}\u{3}\u{2}\u{2}\u{2}\u{1C7}\u{1C8}\u{3}'
      '\u{2}\u{2}\u{2}\u{1C8}\u{1C9}\u{7}\u{41}\u{2}\u{2}\u{1C9}\u{37}\u{3}'
      '\u{2}\u{2}\u{2}\u{1CA}\u{1CF}\u{5}\u{3A}\u{1E}\u{2}\u{1CB}\u{1CC}\u{7}'
      '\u{47}\u{2}\u{2}\u{1CC}\u{1CE}\u{5}\u{3A}\u{1E}\u{2}\u{1CD}\u{1CB}\u{3}'
      '\u{2}\u{2}\u{2}\u{1CE}\u{1D1}\u{3}\u{2}\u{2}\u{2}\u{1CF}\u{1CD}\u{3}'
      '\u{2}\u{2}\u{2}\u{1CF}\u{1D0}\u{3}\u{2}\u{2}\u{2}\u{1D0}\u{39}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D1}\u{1CF}\u{3}\u{2}\u{2}\u{2}\u{1D2}\u{1D4}\u{5}\u{1A}'
      '\u{E}\u{2}\u{1D3}\u{1D2}\u{3}\u{2}\u{2}\u{2}\u{1D4}\u{1D7}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D5}\u{1D3}\u{3}\u{2}\u{2}\u{2}\u{1D5}\u{1D6}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D6}\u{1D8}\u{3}\u{2}\u{2}\u{2}\u{1D7}\u{1D5}\u{3}\u{2}'
      '\u{2}\u{2}\u{1D8}\u{1D9}\u{5}\u{2E}\u{18}\u{2}\u{1D9}\u{1DA}\u{5}\u{B0}'
      '\u{59}\u{2}\u{1DA}\u{3B}\u{3}\u{2}\u{2}\u{2}\u{1DB}\u{1E0}\u{5}\u{B0}'
      '\u{59}\u{2}\u{1DC}\u{1DD}\u{7}\u{48}\u{2}\u{2}\u{1DD}\u{1DF}\u{5}\u{B0}'
      '\u{59}\u{2}\u{1DE}\u{1DC}\u{3}\u{2}\u{2}\u{2}\u{1DF}\u{1E2}\u{3}\u{2}'
      '\u{2}\u{2}\u{1E0}\u{1DE}\u{3}\u{2}\u{2}\u{2}\u{1E0}\u{1E1}\u{3}\u{2}'
      '\u{2}\u{2}\u{1E1}\u{3D}\u{3}\u{2}\u{2}\u{2}\u{1E2}\u{1E0}\u{3}\u{2}\u{2}'
      '\u{2}\u{1E3}\u{1E4}\u{9}\u{4}\u{2}\u{2}\u{1E4}\u{3F}\u{3}\u{2}\u{2}\u{2}'
      '\u{1E5}\u{1E6}\u{7}\u{6E}\u{2}\u{2}\u{1E6}\u{1ED}\u{5}\u{3C}\u{1F}\u{2}'
      '\u{1E7}\u{1EA}\u{7}\u{40}\u{2}\u{2}\u{1E8}\u{1EB}\u{5}\u{42}\u{22}\u{2}'
      '\u{1E9}\u{1EB}\u{5}\u{46}\u{24}\u{2}\u{1EA}\u{1E8}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EA}\u{1E9}\u{3}\u{2}\u{2}\u{2}\u{1EA}\u{1EB}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EB}\u{1EC}\u{3}\u{2}\u{2}\u{2}\u{1EC}\u{1EE}\u{7}\u{41}\u{2}\u{2}'
      '\u{1ED}\u{1E7}\u{3}\u{2}\u{2}\u{2}\u{1ED}\u{1EE}\u{3}\u{2}\u{2}\u{2}'
      '\u{1EE}\u{41}\u{3}\u{2}\u{2}\u{2}\u{1EF}\u{1F6}\u{5}\u{44}\u{23}\u{2}'
      '\u{1F0}\u{1F2}\u{7}\u{47}\u{2}\u{2}\u{1F1}\u{1F0}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F1}\u{1F2}\u{3}\u{2}\u{2}\u{2}\u{1F2}\u{1F3}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F3}\u{1F5}\u{5}\u{44}\u{23}\u{2}\u{1F4}\u{1F1}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F5}\u{1F8}\u{3}\u{2}\u{2}\u{2}\u{1F6}\u{1F4}\u{3}\u{2}\u{2}\u{2}'
      '\u{1F6}\u{1F7}\u{3}\u{2}\u{2}\u{2}\u{1F7}\u{43}\u{3}\u{2}\u{2}\u{2}\u{1F8}'
      '\u{1F6}\u{3}\u{2}\u{2}\u{2}\u{1F9}\u{1FA}\u{5}\u{B0}\u{59}\u{2}\u{1FA}'
      '\u{1FB}\u{7}\u{49}\u{2}\u{2}\u{1FB}\u{1FC}\u{5}\u{46}\u{24}\u{2}\u{1FC}'
      '\u{45}\u{3}\u{2}\u{2}\u{2}\u{1FD}\u{201}\u{5}\u{92}\u{4A}\u{2}\u{1FE}'
      '\u{201}\u{5}\u{40}\u{21}\u{2}\u{1FF}\u{201}\u{5}\u{48}\u{25}\u{2}\u{200}'
      '\u{1FD}\u{3}\u{2}\u{2}\u{2}\u{200}\u{1FE}\u{3}\u{2}\u{2}\u{2}\u{200}'
      '\u{1FF}\u{3}\u{2}\u{2}\u{2}\u{201}\u{47}\u{3}\u{2}\u{2}\u{2}\u{202}\u{20B}'
      '\u{7}\u{42}\u{2}\u{2}\u{203}\u{208}\u{5}\u{46}\u{24}\u{2}\u{204}\u{205}'
      '\u{7}\u{47}\u{2}\u{2}\u{205}\u{207}\u{5}\u{46}\u{24}\u{2}\u{206}\u{204}'
      '\u{3}\u{2}\u{2}\u{2}\u{207}\u{20A}\u{3}\u{2}\u{2}\u{2}\u{208}\u{206}'
      '\u{3}\u{2}\u{2}\u{2}\u{208}\u{209}\u{3}\u{2}\u{2}\u{2}\u{209}\u{20C}'
      '\u{3}\u{2}\u{2}\u{2}\u{20A}\u{208}\u{3}\u{2}\u{2}\u{2}\u{20B}\u{203}'
      '\u{3}\u{2}\u{2}\u{2}\u{20B}\u{20C}\u{3}\u{2}\u{2}\u{2}\u{20C}\u{20E}'
      '\u{3}\u{2}\u{2}\u{2}\u{20D}\u{20F}\u{7}\u{47}\u{2}\u{2}\u{20E}\u{20D}'
      '\u{3}\u{2}\u{2}\u{2}\u{20E}\u{20F}\u{3}\u{2}\u{2}\u{2}\u{20F}\u{210}'
      '\u{3}\u{2}\u{2}\u{2}\u{210}\u{211}\u{7}\u{43}\u{2}\u{2}\u{211}\u{49}'
      '\u{3}\u{2}\u{2}\u{2}\u{212}\u{216}\u{7}\u{42}\u{2}\u{2}\u{213}\u{215}'
      '\u{5}\u{50}\u{29}\u{2}\u{214}\u{213}\u{3}\u{2}\u{2}\u{2}\u{215}\u{218}'
      '\u{3}\u{2}\u{2}\u{2}\u{216}\u{214}\u{3}\u{2}\u{2}\u{2}\u{216}\u{217}'
      '\u{3}\u{2}\u{2}\u{2}\u{217}\u{219}\u{3}\u{2}\u{2}\u{2}\u{218}\u{216}'
      '\u{3}\u{2}\u{2}\u{2}\u{219}\u{21A}\u{7}\u{43}\u{2}\u{2}\u{21A}\u{4B}'
      '\u{3}\u{2}\u{2}\u{2}\u{21B}\u{21C}\u{5}\u{4E}\u{28}\u{2}\u{21C}\u{21D}'
      '\u{7}\u{46}\u{2}\u{2}\u{21D}\u{4D}\u{3}\u{2}\u{2}\u{2}\u{21E}\u{220}'
      '\u{5}\u{1A}\u{E}\u{2}\u{21F}\u{21E}\u{3}\u{2}\u{2}\u{2}\u{220}\u{223}'
      '\u{3}\u{2}\u{2}\u{2}\u{221}\u{21F}\u{3}\u{2}\u{2}\u{2}\u{221}\u{222}'
      '\u{3}\u{2}\u{2}\u{2}\u{222}\u{224}\u{3}\u{2}\u{2}\u{2}\u{223}\u{221}'
      '\u{3}\u{2}\u{2}\u{2}\u{224}\u{225}\u{5}\u{2E}\u{18}\u{2}\u{225}\u{226}'
      '\u{5}\u{28}\u{15}\u{2}\u{226}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{227}\u{23C}'
      '\u{5}\u{4A}\u{26}\u{2}\u{228}\u{23C}\u{5}\u{52}\u{2A}\u{2}\u{229}\u{23C}'
      '\u{5}\u{54}\u{2B}\u{2}\u{22A}\u{23C}\u{5}\u{5C}\u{2F}\u{2}\u{22B}\u{23C}'
      '\u{5}\u{5E}\u{30}\u{2}\u{22C}\u{23C}\u{5}\u{60}\u{31}\u{2}\u{22D}\u{23C}'
      '\u{5}\u{62}\u{32}\u{2}\u{22E}\u{23C}\u{5}\u{64}\u{33}\u{2}\u{22F}\u{23C}'
      '\u{5}\u{66}\u{34}\u{2}\u{230}\u{23C}\u{5}\u{68}\u{35}\u{2}\u{231}\u{23C}'
      '\u{5}\u{6A}\u{36}\u{2}\u{232}\u{23C}\u{5}\u{6C}\u{37}\u{2}\u{233}\u{23C}'
      '\u{5}\u{6E}\u{38}\u{2}\u{234}\u{23C}\u{5}\u{70}\u{39}\u{2}\u{235}\u{23C}'
      '\u{5}\u{72}\u{3A}\u{2}\u{236}\u{23C}\u{5}\u{74}\u{3B}\u{2}\u{237}\u{23C}'
      '\u{5}\u{76}\u{3C}\u{2}\u{238}\u{23C}\u{5}\u{78}\u{3D}\u{2}\u{239}\u{23C}'
      '\u{5}\u{4C}\u{27}\u{2}\u{23A}\u{23C}\u{5}\u{7A}\u{3E}\u{2}\u{23B}\u{227}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{228}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{229}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{22A}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{22B}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{22C}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{22D}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{22E}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{22F}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{230}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{231}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{232}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{233}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{234}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{235}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{236}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{237}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{238}\u{3}\u{2}\u{2}\u{2}\u{23B}\u{239}'
      '\u{3}\u{2}\u{2}\u{2}\u{23B}\u{23A}\u{3}\u{2}\u{2}\u{2}\u{23C}\u{51}\u{3}'
      '\u{2}\u{2}\u{2}\u{23D}\u{23E}\u{7}\u{14}\u{2}\u{2}\u{23E}\u{23F}\u{5}'
      '\u{8E}\u{48}\u{2}\u{23F}\u{242}\u{5}\u{50}\u{29}\u{2}\u{240}\u{241}\u{7}'
      '\u{C}\u{2}\u{2}\u{241}\u{243}\u{5}\u{50}\u{29}\u{2}\u{242}\u{240}\u{3}'
      '\u{2}\u{2}\u{2}\u{242}\u{243}\u{3}\u{2}\u{2}\u{2}\u{243}\u{53}\u{3}\u{2}'
      '\u{2}\u{2}\u{244}\u{245}\u{7}\u{28}\u{2}\u{2}\u{245}\u{246}\u{7}\u{1D}'
      '\u{2}\u{2}\u{246}\u{247}\u{5}\u{92}\u{4A}\u{2}\u{247}\u{249}\u{7}\u{42}'
      '\u{2}\u{2}\u{248}\u{24A}\u{5}\u{56}\u{2C}\u{2}\u{249}\u{248}\u{3}\u{2}'
      '\u{2}\u{2}\u{24A}\u{24B}\u{3}\u{2}\u{2}\u{2}\u{24B}\u{249}\u{3}\u{2}'
      '\u{2}\u{2}\u{24B}\u{24C}\u{3}\u{2}\u{2}\u{2}\u{24C}\u{24D}\u{3}\u{2}'
      '\u{2}\u{2}\u{24D}\u{24E}\u{7}\u{43}\u{2}\u{2}\u{24E}\u{55}\u{3}\u{2}'
      '\u{2}\u{2}\u{24F}\u{250}\u{7}\u{35}\u{2}\u{2}\u{250}\u{251}\u{5}\u{58}'
      '\u{2D}\u{2}\u{251}\u{252}\u{5}\u{4A}\u{26}\u{2}\u{252}\u{57}\u{3}\u{2}'
      '\u{2}\u{2}\u{253}\u{260}\u{7}\u{C}\u{2}\u{2}\u{254}\u{259}\u{5}\u{5A}'
      '\u{2E}\u{2}\u{255}\u{256}\u{7}\u{47}\u{2}\u{2}\u{256}\u{258}\u{5}\u{5A}'
      '\u{2E}\u{2}\u{257}\u{255}\u{3}\u{2}\u{2}\u{2}\u{258}\u{25B}\u{3}\u{2}'
      '\u{2}\u{2}\u{259}\u{257}\u{3}\u{2}\u{2}\u{2}\u{259}\u{25A}\u{3}\u{2}'
      '\u{2}\u{2}\u{25A}\u{260}\u{3}\u{2}\u{2}\u{2}\u{25B}\u{259}\u{3}\u{2}'
      '\u{2}\u{2}\u{25C}\u{25D}\u{5}\u{B0}\u{59}\u{2}\u{25D}\u{25E}\u{5}\u{B0}'
      '\u{59}\u{2}\u{25E}\u{260}\u{3}\u{2}\u{2}\u{2}\u{25F}\u{253}\u{3}\u{2}'
      '\u{2}\u{2}\u{25F}\u{254}\u{3}\u{2}\u{2}\u{2}\u{25F}\u{25C}\u{3}\u{2}'
      '\u{2}\u{2}\u{260}\u{59}\u{3}\u{2}\u{2}\u{2}\u{261}\u{263}\u{7}\u{5B}'
      '\u{2}\u{2}\u{262}\u{261}\u{3}\u{2}\u{2}\u{2}\u{262}\u{263}\u{3}\u{2}'
      '\u{2}\u{2}\u{263}\u{264}\u{3}\u{2}\u{2}\u{2}\u{264}\u{269}\u{7}\u{3B}'
      '\u{2}\u{2}\u{265}\u{269}\u{7}\u{3E}\u{2}\u{2}\u{266}\u{269}\u{7}\u{1C}'
      '\u{2}\u{2}\u{267}\u{269}\u{5}\u{B0}\u{59}\u{2}\u{268}\u{262}\u{3}\u{2}'
      '\u{2}\u{2}\u{268}\u{265}\u{3}\u{2}\u{2}\u{2}\u{268}\u{266}\u{3}\u{2}'
      '\u{2}\u{2}\u{268}\u{267}\u{3}\u{2}\u{2}\u{2}\u{269}\u{5B}\u{3}\u{2}\u{2}'
      '\u{2}\u{26A}\u{26B}\u{7}\u{11}\u{2}\u{2}\u{26B}\u{26C}\u{7}\u{40}\u{2}'
      '\u{2}\u{26C}\u{26D}\u{5}\u{86}\u{44}\u{2}\u{26D}\u{26E}\u{7}\u{41}\u{2}'
      '\u{2}\u{26E}\u{26F}\u{5}\u{50}\u{29}\u{2}\u{26F}\u{5D}\u{3}\u{2}\u{2}'
      '\u{2}\u{270}\u{271}\u{7}\u{36}\u{2}\u{2}\u{271}\u{272}\u{5}\u{8E}\u{48}'
      '\u{2}\u{272}\u{273}\u{5}\u{50}\u{29}\u{2}\u{273}\u{5F}\u{3}\u{2}\u{2}'
      '\u{2}\u{274}\u{275}\u{7}\u{B}\u{2}\u{2}\u{275}\u{276}\u{5}\u{50}\u{29}'
      '\u{2}\u{276}\u{277}\u{7}\u{36}\u{2}\u{2}\u{277}\u{278}\u{5}\u{8E}\u{48}'
      '\u{2}\u{278}\u{279}\u{7}\u{46}\u{2}\u{2}\u{279}\u{61}\u{3}\u{2}\u{2}'
      '\u{2}\u{27A}\u{27B}\u{7}\u{2E}\u{2}\u{2}\u{27B}\u{285}\u{5}\u{4A}\u{26}'
      '\u{2}\u{27C}\u{27E}\u{5}\u{82}\u{42}\u{2}\u{27D}\u{27C}\u{3}\u{2}\u{2}'
      '\u{2}\u{27E}\u{27F}\u{3}\u{2}\u{2}\u{2}\u{27F}\u{27D}\u{3}\u{2}\u{2}'
      '\u{2}\u{27F}\u{280}\u{3}\u{2}\u{2}\u{2}\u{280}\u{282}\u{3}\u{2}\u{2}'
      '\u{2}\u{281}\u{283}\u{5}\u{84}\u{43}\u{2}\u{282}\u{281}\u{3}\u{2}\u{2}'
      '\u{2}\u{282}\u{283}\u{3}\u{2}\u{2}\u{2}\u{283}\u{286}\u{3}\u{2}\u{2}'
      '\u{2}\u{284}\u{286}\u{5}\u{84}\u{43}\u{2}\u{285}\u{27D}\u{3}\u{2}\u{2}'
      '\u{2}\u{285}\u{284}\u{3}\u{2}\u{2}\u{2}\u{286}\u{63}\u{3}\u{2}\u{2}\u{2}'
      '\u{287}\u{289}\u{7}\u{22}\u{2}\u{2}\u{288}\u{28A}\u{5}\u{92}\u{4A}\u{2}'
      '\u{289}\u{288}\u{3}\u{2}\u{2}\u{2}\u{289}\u{28A}\u{3}\u{2}\u{2}\u{2}'
      '\u{28A}\u{28B}\u{3}\u{2}\u{2}\u{2}\u{28B}\u{28C}\u{7}\u{46}\u{2}\u{2}'
      '\u{28C}\u{65}\u{3}\u{2}\u{2}\u{2}\u{28D}\u{28E}\u{7}\u{2B}\u{2}\u{2}'
      '\u{28E}\u{28F}\u{5}\u{92}\u{4A}\u{2}\u{28F}\u{290}\u{7}\u{46}\u{2}\u{2}'
      '\u{290}\u{67}\u{3}\u{2}\u{2}\u{2}\u{291}\u{292}\u{7}\u{6}\u{2}\u{2}\u{292}'
      '\u{293}\u{7}\u{46}\u{2}\u{2}\u{293}\u{69}\u{3}\u{2}\u{2}\u{2}\u{294}'
      '\u{295}\u{7}\u{9}\u{2}\u{2}\u{295}\u{296}\u{7}\u{46}\u{2}\u{2}\u{296}'
      '\u{6B}\u{3}\u{2}\u{2}\u{2}\u{297}\u{298}\u{7}\u{17}\u{2}\u{2}\u{298}'
      '\u{299}\u{5}\u{92}\u{4A}\u{2}\u{299}\u{29A}\u{7}\u{46}\u{2}\u{2}\u{29A}'
      '\u{6D}\u{3}\u{2}\u{2}\u{2}\u{29B}\u{29C}\u{7}\u{30}\u{2}\u{2}\u{29C}'
      '\u{29D}\u{5}\u{92}\u{4A}\u{2}\u{29D}\u{29E}\u{7}\u{46}\u{2}\u{2}\u{29E}'
      '\u{6F}\u{3}\u{2}\u{2}\u{2}\u{29F}\u{2A0}\u{7}\u{A}\u{2}\u{2}\u{2A0}\u{2A1}'
      '\u{5}\u{92}\u{4A}\u{2}\u{2A1}\u{2A2}\u{7}\u{46}\u{2}\u{2}\u{2A2}\u{71}'
      '\u{3}\u{2}\u{2}\u{2}\u{2A3}\u{2A4}\u{7}\u{2F}\u{2}\u{2}\u{2A4}\u{2A5}'
      '\u{5}\u{92}\u{4A}\u{2}\u{2A5}\u{2A6}\u{7}\u{46}\u{2}\u{2}\u{2A6}\u{73}'
      '\u{3}\u{2}\u{2}\u{2}\u{2A7}\u{2A8}\u{7}\u{31}\u{2}\u{2}\u{2A8}\u{2AA}'
      '\u{5}\u{92}\u{4A}\u{2}\u{2A9}\u{2AB}\u{5}\u{3C}\u{1F}\u{2}\u{2AA}\u{2A9}'
      '\u{3}\u{2}\u{2}\u{2}\u{2AA}\u{2AB}\u{3}\u{2}\u{2}\u{2}\u{2AB}\u{2AC}'
      '\u{3}\u{2}\u{2}\u{2}\u{2AC}\u{2AD}\u{7}\u{46}\u{2}\u{2}\u{2AD}\u{75}'
      '\u{3}\u{2}\u{2}\u{2}\u{2AE}\u{2AF}\u{7}\u{1A}\u{2}\u{2}\u{2AF}\u{2B0}'
      '\u{5}\u{92}\u{4A}\u{2}\u{2B0}\u{2B1}\u{5}\u{92}\u{4A}\u{2}\u{2B1}\u{2B2}'
      '\u{7}\u{46}\u{2}\u{2}\u{2B2}\u{77}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2B4}'
      '\u{7}\u{23}\u{2}\u{2}\u{2B4}\u{2B6}\u{7}\u{40}\u{2}\u{2}\u{2B5}\u{2B7}'
      '\u{5}\u{90}\u{49}\u{2}\u{2B6}\u{2B5}\u{3}\u{2}\u{2}\u{2}\u{2B6}\u{2B7}'
      '\u{3}\u{2}\u{2}\u{2}\u{2B7}\u{2B8}\u{3}\u{2}\u{2}\u{2}\u{2B8}\u{2B9}'
      '\u{7}\u{41}\u{2}\u{2}\u{2B9}\u{2BA}\u{5}\u{4A}\u{26}\u{2}\u{2BA}\u{79}'
      '\u{3}\u{2}\u{2}\u{2}\u{2BB}\u{2BC}\u{5}\u{92}\u{4A}\u{2}\u{2BC}\u{2BD}'
      '\u{7}\u{46}\u{2}\u{2}\u{2BD}\u{7B}\u{3}\u{2}\u{2}\u{2}\u{2BE}\u{2C0}'
      '\u{5}\u{1A}\u{E}\u{2}\u{2BF}\u{2BE}\u{3}\u{2}\u{2}\u{2}\u{2C0}\u{2C3}'
      '\u{3}\u{2}\u{2}\u{2}\u{2C1}\u{2BF}\u{3}\u{2}\u{2}\u{2}\u{2C1}\u{2C2}'
      '\u{3}\u{2}\u{2}\u{2}\u{2C2}\u{2C6}\u{3}\u{2}\u{2}\u{2}\u{2C3}\u{2C1}'
      '\u{3}\u{2}\u{2}\u{2}\u{2C4}\u{2C7}\u{5}\u{7E}\u{40}\u{2}\u{2C5}\u{2C7}'
      '\u{5}\u{80}\u{41}\u{2}\u{2C6}\u{2C4}\u{3}\u{2}\u{2}\u{2}\u{2C6}\u{2C5}'
      '\u{3}\u{2}\u{2}\u{2}\u{2C7}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{2C8}\u{2CB}\u{7}'
      '\u{12}\u{2}\u{2}\u{2C9}\u{2CC}\u{7}\u{46}\u{2}\u{2}\u{2CA}\u{2CC}\u{5}'
      '\u{4A}\u{26}\u{2}\u{2CB}\u{2C9}\u{3}\u{2}\u{2}\u{2}\u{2CB}\u{2CA}\u{3}'
      '\u{2}\u{2}\u{2}\u{2CC}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{2CD}\u{2D0}\u{7}\u{24}'
      '\u{2}\u{2}\u{2CE}\u{2D1}\u{7}\u{46}\u{2}\u{2}\u{2CF}\u{2D1}\u{5}\u{4A}'
      '\u{26}\u{2}\u{2D0}\u{2CE}\u{3}\u{2}\u{2}\u{2}\u{2D0}\u{2CF}\u{3}\u{2}'
      '\u{2}\u{2}\u{2D1}\u{81}\u{3}\u{2}\u{2}\u{2}\u{2D2}\u{2D3}\u{7}\u{7}\u{2}'
      '\u{2}\u{2D3}\u{2D7}\u{7}\u{40}\u{2}\u{2}\u{2D4}\u{2D6}\u{5}\u{1A}\u{E}'
      '\u{2}\u{2D5}\u{2D4}\u{3}\u{2}\u{2}\u{2}\u{2D6}\u{2D9}\u{3}\u{2}\u{2}'
      '\u{2}\u{2D7}\u{2D5}\u{3}\u{2}\u{2}\u{2}\u{2D7}\u{2D8}\u{3}\u{2}\u{2}'
      '\u{2}\u{2D8}\u{2DA}\u{3}\u{2}\u{2}\u{2}\u{2D9}\u{2D7}\u{3}\u{2}\u{2}'
      '\u{2}\u{2DA}\u{2DB}\u{5}\u{3C}\u{1F}\u{2}\u{2DB}\u{2DC}\u{5}\u{B0}\u{59}'
      '\u{2}\u{2DC}\u{2DD}\u{7}\u{41}\u{2}\u{2}\u{2DD}\u{2DE}\u{5}\u{4A}\u{26}'
      '\u{2}\u{2DE}\u{83}\u{3}\u{2}\u{2}\u{2}\u{2DF}\u{2E0}\u{7}\u{10}\u{2}'
      '\u{2}\u{2E0}\u{2E1}\u{5}\u{4A}\u{26}\u{2}\u{2E1}\u{85}\u{3}\u{2}\u{2}'
      '\u{2}\u{2E2}\u{2EF}\u{5}\u{8A}\u{46}\u{2}\u{2E3}\u{2E5}\u{5}\u{88}\u{45}'
      '\u{2}\u{2E4}\u{2E3}\u{3}\u{2}\u{2}\u{2}\u{2E4}\u{2E5}\u{3}\u{2}\u{2}'
      '\u{2}\u{2E5}\u{2E6}\u{3}\u{2}\u{2}\u{2}\u{2E6}\u{2E8}\u{7}\u{46}\u{2}'
      '\u{2}\u{2E7}\u{2E9}\u{5}\u{92}\u{4A}\u{2}\u{2E8}\u{2E7}\u{3}\u{2}\u{2}'
      '\u{2}\u{2E8}\u{2E9}\u{3}\u{2}\u{2}\u{2}\u{2E9}\u{2EA}\u{3}\u{2}\u{2}'
      '\u{2}\u{2EA}\u{2EC}\u{7}\u{46}\u{2}\u{2}\u{2EB}\u{2ED}\u{5}\u{8C}\u{47}'
      '\u{2}\u{2EC}\u{2EB}\u{3}\u{2}\u{2}\u{2}\u{2EC}\u{2ED}\u{3}\u{2}\u{2}'
      '\u{2}\u{2ED}\u{2EF}\u{3}\u{2}\u{2}\u{2}\u{2EE}\u{2E2}\u{3}\u{2}\u{2}'
      '\u{2}\u{2EE}\u{2E4}\u{3}\u{2}\u{2}\u{2}\u{2EF}\u{87}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F0}\u{2F3}\u{5}\u{4E}\u{28}\u{2}\u{2F1}\u{2F3}\u{5}\u{90}\u{49}\u{2}'
      '\u{2F2}\u{2F0}\u{3}\u{2}\u{2}\u{2}\u{2F2}\u{2F1}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F3}\u{89}\u{3}\u{2}\u{2}\u{2}\u{2F4}\u{2F5}\u{5}\u{2E}\u{18}\u{2}'
      '\u{2F5}\u{2F6}\u{5}\u{B0}\u{59}\u{2}\u{2F6}\u{2F7}\u{7}\u{50}\u{2}\u{2}'
      '\u{2F7}\u{2F8}\u{5}\u{92}\u{4A}\u{2}\u{2F8}\u{8B}\u{3}\u{2}\u{2}\u{2}'
      '\u{2F9}\u{2FA}\u{5}\u{90}\u{49}\u{2}\u{2FA}\u{8D}\u{3}\u{2}\u{2}\u{2}'
      '\u{2FB}\u{2FC}\u{7}\u{40}\u{2}\u{2}\u{2FC}\u{2FD}\u{5}\u{92}\u{4A}\u{2}'
      '\u{2FD}\u{2FE}\u{7}\u{41}\u{2}\u{2}\u{2FE}\u{8F}\u{3}\u{2}\u{2}\u{2}'
      '\u{2FF}\u{304}\u{5}\u{92}\u{4A}\u{2}\u{300}\u{301}\u{7}\u{47}\u{2}\u{2}'
      '\u{301}\u{303}\u{5}\u{92}\u{4A}\u{2}\u{302}\u{300}\u{3}\u{2}\u{2}\u{2}'
      '\u{303}\u{306}\u{3}\u{2}\u{2}\u{2}\u{304}\u{302}\u{3}\u{2}\u{2}\u{2}'
      '\u{304}\u{305}\u{3}\u{2}\u{2}\u{2}\u{305}\u{91}\u{3}\u{2}\u{2}\u{2}\u{306}'
      '\u{304}\u{3}\u{2}\u{2}\u{2}\u{307}\u{308}\u{8}\u{4A}\u{1}\u{2}\u{308}'
      '\u{316}\u{5}\u{94}\u{4B}\u{2}\u{309}\u{316}\u{5}\u{96}\u{4C}\u{2}\u{30A}'
      '\u{30B}\u{7}\u{1B}\u{2}\u{2}\u{30B}\u{316}\u{5}\u{9A}\u{4E}\u{2}\u{30C}'
      '\u{30D}\u{7}\u{40}\u{2}\u{2}\u{30D}\u{30E}\u{5}\u{2E}\u{18}\u{2}\u{30E}'
      '\u{30F}\u{7}\u{41}\u{2}\u{2}\u{30F}\u{310}\u{5}\u{92}\u{4A}\u{13}\u{310}'
      '\u{316}\u{3}\u{2}\u{2}\u{2}\u{311}\u{312}\u{9}\u{5}\u{2}\u{2}\u{312}'
      '\u{316}\u{5}\u{92}\u{4A}\u{11}\u{313}\u{314}\u{9}\u{6}\u{2}\u{2}\u{314}'
      '\u{316}\u{5}\u{92}\u{4A}\u{10}\u{315}\u{307}\u{3}\u{2}\u{2}\u{2}\u{315}'
      '\u{309}\u{3}\u{2}\u{2}\u{2}\u{315}\u{30A}\u{3}\u{2}\u{2}\u{2}\u{315}'
      '\u{30C}\u{3}\u{2}\u{2}\u{2}\u{315}\u{311}\u{3}\u{2}\u{2}\u{2}\u{315}'
      '\u{313}\u{3}\u{2}\u{2}\u{2}\u{316}\u{35B}\u{3}\u{2}\u{2}\u{2}\u{317}'
      '\u{318}\u{C}\u{F}\u{2}\u{2}\u{318}\u{319}\u{9}\u{7}\u{2}\u{2}\u{319}'
      '\u{35A}\u{5}\u{92}\u{4A}\u{10}\u{31A}\u{31B}\u{C}\u{E}\u{2}\u{2}\u{31B}'
      '\u{31C}\u{9}\u{8}\u{2}\u{2}\u{31C}\u{35A}\u{5}\u{92}\u{4A}\u{F}\u{31D}'
      '\u{325}\u{C}\u{D}\u{2}\u{2}\u{31E}\u{31F}\u{7}\u{4B}\u{2}\u{2}\u{31F}'
      '\u{326}\u{7}\u{4B}\u{2}\u{2}\u{320}\u{321}\u{7}\u{4A}\u{2}\u{2}\u{321}'
      '\u{322}\u{7}\u{4A}\u{2}\u{2}\u{322}\u{326}\u{7}\u{4A}\u{2}\u{2}\u{323}'
      '\u{324}\u{7}\u{4A}\u{2}\u{2}\u{324}\u{326}\u{7}\u{4A}\u{2}\u{2}\u{325}'
      '\u{31E}\u{3}\u{2}\u{2}\u{2}\u{325}\u{320}\u{3}\u{2}\u{2}\u{2}\u{325}'
      '\u{323}\u{3}\u{2}\u{2}\u{2}\u{326}\u{327}\u{3}\u{2}\u{2}\u{2}\u{327}'
      '\u{35A}\u{5}\u{92}\u{4A}\u{E}\u{328}\u{329}\u{C}\u{C}\u{2}\u{2}\u{329}'
      '\u{32B}\u{9}\u{9}\u{2}\u{2}\u{32A}\u{32C}\u{7}\u{49}\u{2}\u{2}\u{32B}'
      '\u{32A}\u{3}\u{2}\u{2}\u{2}\u{32B}\u{32C}\u{3}\u{2}\u{2}\u{2}\u{32C}'
      '\u{32D}\u{3}\u{2}\u{2}\u{2}\u{32D}\u{35A}\u{5}\u{92}\u{4A}\u{D}\u{32E}'
      '\u{32F}\u{C}\u{A}\u{2}\u{2}\u{32F}\u{330}\u{9}\u{A}\u{2}\u{2}\u{330}'
      '\u{35A}\u{5}\u{92}\u{4A}\u{B}\u{331}\u{332}\u{C}\u{9}\u{2}\u{2}\u{332}'
      '\u{333}\u{7}\u{5E}\u{2}\u{2}\u{333}\u{35A}\u{5}\u{92}\u{4A}\u{A}\u{334}'
      '\u{335}\u{C}\u{8}\u{2}\u{2}\u{335}\u{336}\u{7}\u{60}\u{2}\u{2}\u{336}'
      '\u{35A}\u{5}\u{92}\u{4A}\u{9}\u{337}\u{338}\u{C}\u{7}\u{2}\u{2}\u{338}'
      '\u{339}\u{7}\u{5F}\u{2}\u{2}\u{339}\u{35A}\u{5}\u{92}\u{4A}\u{8}\u{33A}'
      '\u{33B}\u{C}\u{6}\u{2}\u{2}\u{33B}\u{33C}\u{7}\u{56}\u{2}\u{2}\u{33C}'
      '\u{35A}\u{5}\u{92}\u{4A}\u{7}\u{33D}\u{33E}\u{C}\u{5}\u{2}\u{2}\u{33E}'
      '\u{33F}\u{7}\u{57}\u{2}\u{2}\u{33F}\u{35A}\u{5}\u{92}\u{4A}\u{6}\u{340}'
      '\u{341}\u{C}\u{4}\u{2}\u{2}\u{341}\u{342}\u{7}\u{4F}\u{2}\u{2}\u{342}'
      '\u{343}\u{5}\u{92}\u{4A}\u{2}\u{343}\u{344}\u{7}\u{50}\u{2}\u{2}\u{344}'
      '\u{345}\u{5}\u{92}\u{4A}\u{4}\u{345}\u{35A}\u{3}\u{2}\u{2}\u{2}\u{346}'
      '\u{347}\u{C}\u{3}\u{2}\u{2}\u{347}\u{348}\u{9}\u{B}\u{2}\u{2}\u{348}'
      '\u{35A}\u{5}\u{92}\u{4A}\u{3}\u{349}\u{34A}\u{C}\u{17}\u{2}\u{2}\u{34A}'
      '\u{34D}\u{9}\u{C}\u{2}\u{2}\u{34B}\u{34E}\u{5}\u{98}\u{4D}\u{2}\u{34C}'
      '\u{34E}\u{5}\u{B2}\u{5A}\u{2}\u{34D}\u{34B}\u{3}\u{2}\u{2}\u{2}\u{34D}'
      '\u{34C}\u{3}\u{2}\u{2}\u{2}\u{34E}\u{35A}\u{3}\u{2}\u{2}\u{2}\u{34F}'
      '\u{350}\u{C}\u{16}\u{2}\u{2}\u{350}\u{351}\u{7}\u{44}\u{2}\u{2}\u{351}'
      '\u{352}\u{5}\u{92}\u{4A}\u{2}\u{352}\u{353}\u{7}\u{45}\u{2}\u{2}\u{353}'
      '\u{35A}\u{3}\u{2}\u{2}\u{2}\u{354}\u{355}\u{C}\u{12}\u{2}\u{2}\u{355}'
      '\u{35A}\u{9}\u{D}\u{2}\u{2}\u{356}\u{357}\u{C}\u{B}\u{2}\u{2}\u{357}'
      '\u{358}\u{7}\u{18}\u{2}\u{2}\u{358}\u{35A}\u{5}\u{2E}\u{18}\u{2}\u{359}'
      '\u{317}\u{3}\u{2}\u{2}\u{2}\u{359}\u{31A}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{31D}\u{3}\u{2}\u{2}\u{2}\u{359}\u{328}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{32E}\u{3}\u{2}\u{2}\u{2}\u{359}\u{331}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{334}\u{3}\u{2}\u{2}\u{2}\u{359}\u{337}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{33A}\u{3}\u{2}\u{2}\u{2}\u{359}\u{33D}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{340}\u{3}\u{2}\u{2}\u{2}\u{359}\u{346}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{349}\u{3}\u{2}\u{2}\u{2}\u{359}\u{34F}\u{3}\u{2}\u{2}\u{2}\u{359}'
      '\u{354}\u{3}\u{2}\u{2}\u{2}\u{359}\u{356}\u{3}\u{2}\u{2}\u{2}\u{35A}'
      '\u{35D}\u{3}\u{2}\u{2}\u{2}\u{35B}\u{359}\u{3}\u{2}\u{2}\u{2}\u{35B}'
      '\u{35C}\u{3}\u{2}\u{2}\u{2}\u{35C}\u{93}\u{3}\u{2}\u{2}\u{2}\u{35D}\u{35B}'
      '\u{3}\u{2}\u{2}\u{2}\u{35E}\u{35F}\u{7}\u{40}\u{2}\u{2}\u{35F}\u{360}'
      '\u{5}\u{92}\u{4A}\u{2}\u{360}\u{361}\u{7}\u{41}\u{2}\u{2}\u{361}\u{36C}'
      '\u{3}\u{2}\u{2}\u{2}\u{362}\u{36C}\u{7}\u{2A}\u{2}\u{2}\u{363}\u{36C}'
      '\u{7}\u{27}\u{2}\u{2}\u{364}\u{36C}\u{5}\u{3E}\u{20}\u{2}\u{365}\u{366}'
      '\u{5}\u{2E}\u{18}\u{2}\u{366}\u{367}\u{7}\u{48}\u{2}\u{2}\u{367}\u{368}'
      '\u{7}\u{8}\u{2}\u{2}\u{368}\u{36C}\u{3}\u{2}\u{2}\u{2}\u{369}\u{36C}'
      '\u{5}\u{B0}\u{59}\u{2}\u{36A}\u{36C}\u{5}\u{AE}\u{58}\u{2}\u{36B}\u{35E}'
      '\u{3}\u{2}\u{2}\u{2}\u{36B}\u{362}\u{3}\u{2}\u{2}\u{2}\u{36B}\u{363}'
      '\u{3}\u{2}\u{2}\u{2}\u{36B}\u{364}\u{3}\u{2}\u{2}\u{2}\u{36B}\u{365}'
      '\u{3}\u{2}\u{2}\u{2}\u{36B}\u{369}\u{3}\u{2}\u{2}\u{2}\u{36B}\u{36A}'
      '\u{3}\u{2}\u{2}\u{2}\u{36C}\u{95}\u{3}\u{2}\u{2}\u{2}\u{36D}\u{36E}\u{5}'
      '\u{B0}\u{59}\u{2}\u{36E}\u{370}\u{7}\u{40}\u{2}\u{2}\u{36F}\u{371}\u{5}'
      '\u{90}\u{49}\u{2}\u{370}\u{36F}\u{3}\u{2}\u{2}\u{2}\u{370}\u{371}\u{3}'
      '\u{2}\u{2}\u{2}\u{371}\u{372}\u{3}\u{2}\u{2}\u{2}\u{372}\u{373}\u{7}'
      '\u{41}\u{2}\u{2}\u{373}\u{381}\u{3}\u{2}\u{2}\u{2}\u{374}\u{375}\u{7}'
      '\u{2A}\u{2}\u{2}\u{375}\u{377}\u{7}\u{40}\u{2}\u{2}\u{376}\u{378}\u{5}'
      '\u{90}\u{49}\u{2}\u{377}\u{376}\u{3}\u{2}\u{2}\u{2}\u{377}\u{378}\u{3}'
      '\u{2}\u{2}\u{2}\u{378}\u{379}\u{3}\u{2}\u{2}\u{2}\u{379}\u{381}\u{7}'
      '\u{41}\u{2}\u{2}\u{37A}\u{37B}\u{7}\u{27}\u{2}\u{2}\u{37B}\u{37D}\u{7}'
      '\u{40}\u{2}\u{2}\u{37C}\u{37E}\u{5}\u{90}\u{49}\u{2}\u{37D}\u{37C}\u{3}'
      '\u{2}\u{2}\u{2}\u{37D}\u{37E}\u{3}\u{2}\u{2}\u{2}\u{37E}\u{37F}\u{3}'
      '\u{2}\u{2}\u{2}\u{37F}\u{381}\u{7}\u{41}\u{2}\u{2}\u{380}\u{36D}\u{3}'
      '\u{2}\u{2}\u{2}\u{380}\u{374}\u{3}\u{2}\u{2}\u{2}\u{380}\u{37A}\u{3}'
      '\u{2}\u{2}\u{2}\u{381}\u{97}\u{3}\u{2}\u{2}\u{2}\u{382}\u{383}\u{5}\u{B2}'
      '\u{5A}\u{2}\u{383}\u{385}\u{7}\u{40}\u{2}\u{2}\u{384}\u{386}\u{5}\u{90}'
      '\u{49}\u{2}\u{385}\u{384}\u{3}\u{2}\u{2}\u{2}\u{385}\u{386}\u{3}\u{2}'
      '\u{2}\u{2}\u{386}\u{387}\u{3}\u{2}\u{2}\u{2}\u{387}\u{388}\u{7}\u{41}'
      '\u{2}\u{2}\u{388}\u{99}\u{3}\u{2}\u{2}\u{2}\u{389}\u{38F}\u{5}\u{9C}'
      '\u{4F}\u{2}\u{38A}\u{390}\u{5}\u{A0}\u{51}\u{2}\u{38B}\u{390}\u{5}\u{A2}'
      '\u{52}\u{2}\u{38C}\u{390}\u{5}\u{A4}\u{53}\u{2}\u{38D}\u{390}\u{5}\u{A6}'
      '\u{54}\u{2}\u{38E}\u{390}\u{5}\u{AA}\u{56}\u{2}\u{38F}\u{38A}\u{3}\u{2}'
      '\u{2}\u{2}\u{38F}\u{38B}\u{3}\u{2}\u{2}\u{2}\u{38F}\u{38C}\u{3}\u{2}'
      '\u{2}\u{2}\u{38F}\u{38D}\u{3}\u{2}\u{2}\u{2}\u{38F}\u{38E}\u{3}\u{2}'
      '\u{2}\u{2}\u{390}\u{9B}\u{3}\u{2}\u{2}\u{2}\u{391}\u{396}\u{5}\u{9E}'
      '\u{50}\u{2}\u{392}\u{393}\u{7}\u{48}\u{2}\u{2}\u{393}\u{395}\u{5}\u{9E}'
      '\u{50}\u{2}\u{394}\u{392}\u{3}\u{2}\u{2}\u{2}\u{395}\u{398}\u{3}\u{2}'
      '\u{2}\u{2}\u{396}\u{394}\u{3}\u{2}\u{2}\u{2}\u{396}\u{397}\u{3}\u{2}'
      '\u{2}\u{2}\u{397}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{398}\u{396}\u{3}\u{2}\u{2}'
      '\u{2}\u{399}\u{39E}\u{5}\u{B2}\u{5A}\u{2}\u{39A}\u{39B}\u{7}\u{4B}\u{2}'
      '\u{2}\u{39B}\u{39C}\u{5}\u{12}\u{A}\u{2}\u{39C}\u{39D}\u{7}\u{4A}\u{2}'
      '\u{2}\u{39D}\u{39F}\u{3}\u{2}\u{2}\u{2}\u{39E}\u{39A}\u{3}\u{2}\u{2}'
      '\u{2}\u{39E}\u{39F}\u{3}\u{2}\u{2}\u{2}\u{39F}\u{9F}\u{3}\u{2}\u{2}\u{2}'
      '\u{3A0}\u{3A1}\u{7}\u{42}\u{2}\u{2}\u{3A1}\u{3A2}\u{7}\u{43}\u{2}\u{2}'
      '\u{3A2}\u{A1}\u{3}\u{2}\u{2}\u{2}\u{3A3}\u{3A4}\u{5}\u{AC}\u{57}\u{2}'
      '\u{3A4}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{3A5}\u{3A6}\u{7}\u{44}\u{2}\u{2}'
      '\u{3A6}\u{3A7}\u{5}\u{92}\u{4A}\u{2}\u{3A7}\u{3A8}\u{7}\u{45}\u{2}\u{2}'
      '\u{3A8}\u{3AF}\u{3}\u{2}\u{2}\u{2}\u{3A9}\u{3AA}\u{7}\u{44}\u{2}\u{2}'
      '\u{3AA}\u{3AC}\u{7}\u{45}\u{2}\u{2}\u{3AB}\u{3AD}\u{5}\u{2C}\u{17}\u{2}'
      '\u{3AC}\u{3AB}\u{3}\u{2}\u{2}\u{2}\u{3AC}\u{3AD}\u{3}\u{2}\u{2}\u{2}'
      '\u{3AD}\u{3AF}\u{3}\u{2}\u{2}\u{2}\u{3AE}\u{3A5}\u{3}\u{2}\u{2}\u{2}'
      '\u{3AE}\u{3A9}\u{3}\u{2}\u{2}\u{2}\u{3AF}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{3B0}'
      '\u{3B1}\u{7}\u{42}\u{2}\u{2}\u{3B1}\u{3B6}\u{5}\u{A8}\u{55}\u{2}\u{3B2}'
      '\u{3B3}\u{7}\u{47}\u{2}\u{2}\u{3B3}\u{3B5}\u{5}\u{A8}\u{55}\u{2}\u{3B4}'
      '\u{3B2}\u{3}\u{2}\u{2}\u{2}\u{3B5}\u{3B8}\u{3}\u{2}\u{2}\u{2}\u{3B6}'
      '\u{3B4}\u{3}\u{2}\u{2}\u{2}\u{3B6}\u{3B7}\u{3}\u{2}\u{2}\u{2}\u{3B7}'
      '\u{3B9}\u{3}\u{2}\u{2}\u{2}\u{3B8}\u{3B6}\u{3}\u{2}\u{2}\u{2}\u{3B9}'
      '\u{3BA}\u{7}\u{43}\u{2}\u{2}\u{3BA}\u{A7}\u{3}\u{2}\u{2}\u{2}\u{3BB}'
      '\u{3BC}\u{5}\u{92}\u{4A}\u{2}\u{3BC}\u{3BD}\u{7}\u{62}\u{2}\u{2}\u{3BD}'
      '\u{3BE}\u{5}\u{92}\u{4A}\u{2}\u{3BE}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{3BF}'
      '\u{3C0}\u{7}\u{42}\u{2}\u{2}\u{3C0}\u{3C5}\u{5}\u{92}\u{4A}\u{2}\u{3C1}'
      '\u{3C2}\u{7}\u{47}\u{2}\u{2}\u{3C2}\u{3C4}\u{5}\u{92}\u{4A}\u{2}\u{3C3}'
      '\u{3C1}\u{3}\u{2}\u{2}\u{2}\u{3C4}\u{3C7}\u{3}\u{2}\u{2}\u{2}\u{3C5}'
      '\u{3C3}\u{3}\u{2}\u{2}\u{2}\u{3C5}\u{3C6}\u{3}\u{2}\u{2}\u{2}\u{3C6}'
      '\u{3C8}\u{3}\u{2}\u{2}\u{2}\u{3C7}\u{3C5}\u{3}\u{2}\u{2}\u{2}\u{3C8}'
      '\u{3C9}\u{7}\u{43}\u{2}\u{2}\u{3C9}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{3CA}'
      '\u{3CC}\u{7}\u{40}\u{2}\u{2}\u{3CB}\u{3CD}\u{5}\u{90}\u{49}\u{2}\u{3CC}'
      '\u{3CB}\u{3}\u{2}\u{2}\u{2}\u{3CC}\u{3CD}\u{3}\u{2}\u{2}\u{2}\u{3CD}'
      '\u{3CE}\u{3}\u{2}\u{2}\u{2}\u{3CE}\u{3CF}\u{7}\u{41}\u{2}\u{2}\u{3CF}'
      '\u{AD}\u{3}\u{2}\u{2}\u{2}\u{3D0}\u{3D5}\u{7}\u{44}\u{2}\u{2}\u{3D1}'
      '\u{3D4}\u{5}\u{AE}\u{58}\u{2}\u{3D2}\u{3D4}\u{A}\u{E}\u{2}\u{2}\u{3D3}'
      '\u{3D1}\u{3}\u{2}\u{2}\u{2}\u{3D3}\u{3D2}\u{3}\u{2}\u{2}\u{2}\u{3D4}'
      '\u{3D7}\u{3}\u{2}\u{2}\u{2}\u{3D5}\u{3D6}\u{3}\u{2}\u{2}\u{2}\u{3D5}'
      '\u{3D3}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3D8}\u{3}\u{2}\u{2}\u{2}\u{3D7}'
      '\u{3D5}\u{3}\u{2}\u{2}\u{2}\u{3D8}\u{3D9}\u{7}\u{45}\u{2}\u{2}\u{3D9}'
      '\u{AF}\u{3}\u{2}\u{2}\u{2}\u{3DA}\u{3DB}\u{9}\u{F}\u{2}\u{2}\u{3DB}\u{B1}'
      '\u{3}\u{2}\u{2}\u{2}\u{3DC}\u{3DD}\u{9}\u{10}\u{2}\u{2}\u{3DD}\u{B3}'
      '\u{3}\u{2}\u{2}\u{2}\u{64}\u{BE}\u{CC}\u{D1}\u{D6}\u{DB}\u{E0}\u{E5}'
      '\u{E9}\u{EF}\u{F3}\u{FB}\u{104}\u{10B}\u{114}\u{11B}\u{124}\u{12B}\u{131}'
      '\u{135}\u{14A}\u{153}\u{157}\u{15D}\u{16D}\u{175}\u{17A}\u{185}\u{18B}'
      '\u{193}\u{197}\u{199}\u{1A2}\u{1AB}\u{1B0}\u{1B4}\u{1B8}\u{1BC}\u{1BE}'
      '\u{1C6}\u{1CF}\u{1D5}\u{1E0}\u{1EA}\u{1ED}\u{1F1}\u{1F6}\u{200}\u{208}'
      '\u{20B}\u{20E}\u{216}\u{221}\u{23B}\u{242}\u{24B}\u{259}\u{25F}\u{262}'
      '\u{268}\u{27F}\u{282}\u{285}\u{289}\u{2AA}\u{2B6}\u{2C1}\u{2C6}\u{2CB}'
      '\u{2D0}\u{2D7}\u{2E4}\u{2E8}\u{2EC}\u{2EE}\u{2F2}\u{304}\u{315}\u{325}'
      '\u{32B}\u{34D}\u{359}\u{35B}\u{36B}\u{370}\u{377}\u{37D}\u{380}\u{385}'
      '\u{38F}\u{396}\u{39E}\u{3AC}\u{3AE}\u{3B6}\u{3C5}\u{3CC}\u{3D3}\u{3D5}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}

class TriggerUnitContext extends ParserRuleContext {
  TerminalNode TRIGGER() => getToken(ApexParser.TOKEN_TRIGGER, 0);

  List<IdContext> ids() => getRuleContexts<IdContext>();

  IdContext id(int i) => getRuleContext<IdContext>(i);

  TerminalNode ON() => getToken(ApexParser.TOKEN_ON, 0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  List<TriggerCaseContext> triggerCases() =>
      getRuleContexts<TriggerCaseContext>();

  TriggerCaseContext triggerCase(int i) =>
      getRuleContext<TriggerCaseContext>(i);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  TerminalNode EOF() => getToken(ApexParser.TOKEN_EOF, 0);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  TriggerUnitContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_triggerUnit;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTriggerUnit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTriggerUnit(this);
  }
}

class TriggerCaseContext extends ParserRuleContext {
  TerminalNode BEFORE() => getToken(ApexParser.TOKEN_BEFORE, 0);

  TerminalNode AFTER() => getToken(ApexParser.TOKEN_AFTER, 0);

  TerminalNode INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);

  TerminalNode UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);

  TerminalNode DELETE() => getToken(ApexParser.TOKEN_DELETE, 0);

  TerminalNode UNDELETE() => getToken(ApexParser.TOKEN_UNDELETE, 0);

  TriggerCaseContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_triggerCase;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTriggerCase(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTriggerCase(this);
  }
}

class CompilationUnitContext extends ParserRuleContext {
  TypeDeclarationContext typeDeclaration() =>
      getRuleContext<TypeDeclarationContext>(0);

  TerminalNode EOF() => getToken(ApexParser.TOKEN_EOF, 0);

  CompilationUnitContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_compilationUnit;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCompilationUnit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCompilationUnit(this);
  }
}

class TypeDeclarationContext extends ParserRuleContext {
  TypeDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_typeDeclaration;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ClassDeclarationContext extends ParserRuleContext {
  TerminalNode CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);

  IdContext id() => getRuleContext<IdContext>(0);

  ClassBodyContext classBody() => getRuleContext<ClassBodyContext>(0);

  TerminalNode EXTENDS() => getToken(ApexParser.TOKEN_EXTENDS, 0);

  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  TerminalNode IMPLEMENTS() => getToken(ApexParser.TOKEN_IMPLEMENTS, 0);

  TypeListContext typeList() => getRuleContext<TypeListContext>(0);

  ClassDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_classDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterClassDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitClassDeclaration(this);
  }
}

class EnumDeclarationContext extends ParserRuleContext {
  TerminalNode ENUM() => getToken(ApexParser.TOKEN_ENUM, 0);

  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  EnumConstantsContext enumConstants() =>
      getRuleContext<EnumConstantsContext>(0);

  EnumDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_enumDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterEnumDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitEnumDeclaration(this);
  }
}

class EnumConstantsContext extends ParserRuleContext {
  List<IdContext> ids() => getRuleContexts<IdContext>();

  IdContext id(int i) => getRuleContext<IdContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  EnumConstantsContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_enumConstants;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterEnumConstants(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitEnumConstants(this);
  }
}

class InterfaceDeclarationContext extends ParserRuleContext {
  TerminalNode INTERFACE() => getToken(ApexParser.TOKEN_INTERFACE, 0);

  IdContext id() => getRuleContext<IdContext>(0);

  InterfaceBodyContext interfaceBody() =>
      getRuleContext<InterfaceBodyContext>(0);

  TerminalNode EXTENDS() => getToken(ApexParser.TOKEN_EXTENDS, 0);

  TypeListContext typeList() => getRuleContext<TypeListContext>(0);

  InterfaceDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_interfaceDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterInterfaceDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInterfaceDeclaration(this);
  }
}

class TypeListContext extends ParserRuleContext {
  List<TypeRefContext> typeRefs() => getRuleContexts<TypeRefContext>();

  TypeRefContext typeRef(int i) => getRuleContext<TypeRefContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  TypeListContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_typeList;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeList(this);
  }
}

class ClassBodyContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<ClassBodyDeclarationContext> classBodyDeclarations() =>
      getRuleContexts<ClassBodyDeclarationContext>();

  ClassBodyDeclarationContext classBodyDeclaration(int i) =>
      getRuleContext<ClassBodyDeclarationContext>(i);

  ClassBodyContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_classBody;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterClassBody(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitClassBody(this);
  }
}

class InterfaceBodyContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<InterfaceMethodDeclarationContext> interfaceMethodDeclarations() =>
      getRuleContexts<InterfaceMethodDeclarationContext>();

  InterfaceMethodDeclarationContext interfaceMethodDeclaration(int i) =>
      getRuleContext<InterfaceMethodDeclarationContext>(i);

  InterfaceBodyContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_interfaceBody;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterInterfaceBody(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInterfaceBody(this);
  }
}

class ClassBodyDeclarationContext extends ParserRuleContext {
  ClassBodyDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_classBodyDeclaration;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ModifierContext extends ParserRuleContext {
  AnnotationContext annotation() => getRuleContext<AnnotationContext>(0);

  TerminalNode GLOBAL() => getToken(ApexParser.TOKEN_GLOBAL, 0);

  TerminalNode PUBLIC() => getToken(ApexParser.TOKEN_PUBLIC, 0);

  TerminalNode PROTECTED() => getToken(ApexParser.TOKEN_PROTECTED, 0);

  TerminalNode PRIVATE() => getToken(ApexParser.TOKEN_PRIVATE, 0);

  TerminalNode TRANSIENT() => getToken(ApexParser.TOKEN_TRANSIENT, 0);

  TerminalNode STATIC() => getToken(ApexParser.TOKEN_STATIC, 0);

  TerminalNode ABSTRACT() => getToken(ApexParser.TOKEN_ABSTRACT, 0);

  TerminalNode FINAL() => getToken(ApexParser.TOKEN_FINAL, 0);

  TerminalNode WEBSERVICE() => getToken(ApexParser.TOKEN_WEBSERVICE, 0);

  TerminalNode OVERRIDE() => getToken(ApexParser.TOKEN_OVERRIDE, 0);

  TerminalNode VIRTUAL() => getToken(ApexParser.TOKEN_VIRTUAL, 0);

  TerminalNode TESTMETHOD() => getToken(ApexParser.TOKEN_TESTMETHOD, 0);

  TerminalNode WITH() => getToken(ApexParser.TOKEN_WITH, 0);

  TerminalNode SHARING() => getToken(ApexParser.TOKEN_SHARING, 0);

  TerminalNode WITHOUT() => getToken(ApexParser.TOKEN_WITHOUT, 0);

  TerminalNode INHERITED() => getToken(ApexParser.TOKEN_INHERITED, 0);

  ModifierContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_modifier;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterModifier(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitModifier(this);
  }
}

class MemberDeclarationContext extends ParserRuleContext {
  MemberDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_memberDeclaration;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class MethodDeclarationContext extends ParserRuleContext {
  IdContext id() => getRuleContext<IdContext>(0);

  FormalParametersContext formalParameters() =>
      getRuleContext<FormalParametersContext>(0);

  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  TerminalNode VOID() => getToken(ApexParser.TOKEN_VOID, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  MethodDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_methodDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMethodDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMethodDeclaration(this);
  }
}

class ConstructorDeclarationContext extends ParserRuleContext {
  QualifiedNameContext qualifiedName() =>
      getRuleContext<QualifiedNameContext>(0);

  FormalParametersContext formalParameters() =>
      getRuleContext<FormalParametersContext>(0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  ConstructorDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_constructorDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterConstructorDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitConstructorDeclaration(this);
  }
}

class FieldDeclarationContext extends ParserRuleContext {
  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  VariableDeclaratorsContext variableDeclarators() =>
      getRuleContext<VariableDeclaratorsContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  FieldDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_fieldDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldDeclaration(this);
  }
}

class PropertyDeclarationContext extends ParserRuleContext {
  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<PropertyBlockContext> propertyBlocks() =>
      getRuleContexts<PropertyBlockContext>();

  PropertyBlockContext propertyBlock(int i) =>
      getRuleContext<PropertyBlockContext>(i);

  PropertyDeclarationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_propertyDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPropertyDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPropertyDeclaration(this);
  }
}

class InterfaceMethodDeclarationContext extends ParserRuleContext {
  IdContext id() => getRuleContext<IdContext>(0);

  FormalParametersContext formalParameters() =>
      getRuleContext<FormalParametersContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  TerminalNode VOID() => getToken(ApexParser.TOKEN_VOID, 0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  InterfaceMethodDeclarationContext(
      [ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_interfaceMethodDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterInterfaceMethodDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitInterfaceMethodDeclaration(this);
  }
}

class VariableDeclaratorsContext extends ParserRuleContext {
  List<VariableDeclaratorContext> variableDeclarators() =>
      getRuleContexts<VariableDeclaratorContext>();

  VariableDeclaratorContext variableDeclarator(int i) =>
      getRuleContext<VariableDeclaratorContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  VariableDeclaratorsContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_variableDeclarators;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterVariableDeclarators(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitVariableDeclarators(this);
  }
}

class VariableDeclaratorContext extends ParserRuleContext {
  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  VariableDeclaratorContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_variableDeclarator;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterVariableDeclarator(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitVariableDeclarator(this);
  }
}

class ArrayInitializerContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  ArrayInitializerContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_arrayInitializer;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArrayInitializer(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArrayInitializer(this);
  }
}

class TypeRefContext extends ParserRuleContext {
  List<TypeNameContext> typeNames() => getRuleContexts<TypeNameContext>();

  TypeNameContext typeName(int i) => getRuleContext<TypeNameContext>(i);

  ArraySubscriptsContext arraySubscripts() =>
      getRuleContext<ArraySubscriptsContext>(0);

  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);

  TerminalNode DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);

  TypeRefContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_typeRef;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeRef(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeRef(this);
  }
}

class ArraySubscriptsContext extends ParserRuleContext {
  List<TerminalNode> LBRACKs() => getTokens(ApexParser.TOKEN_LBRACK);

  TerminalNode LBRACK(int i) => getToken(ApexParser.TOKEN_LBRACK, i);

  List<TerminalNode> RBRACKs() => getTokens(ApexParser.TOKEN_RBRACK);

  TerminalNode RBRACK(int i) => getToken(ApexParser.TOKEN_RBRACK, i);

  ArraySubscriptsContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_arraySubscripts;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArraySubscripts(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArraySubscripts(this);
  }
}

class TypeNameContext extends ParserRuleContext {
  TerminalNode LIST() => getToken(ApexParser.TOKEN_LIST, 0);

  TypeArgumentsContext typeArguments() =>
      getRuleContext<TypeArgumentsContext>(0);

  TerminalNode SET() => getToken(ApexParser.TOKEN_SET, 0);

  TerminalNode MAP() => getToken(ApexParser.TOKEN_MAP, 0);

  IdContext id() => getRuleContext<IdContext>(0);

  TypeNameContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_typeName;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeName(this);
  }
}

class TypeArgumentsContext extends ParserRuleContext {
  TerminalNode LT() => getToken(ApexParser.TOKEN_LT, 0);

  TypeListContext typeList() => getRuleContext<TypeListContext>(0);

  TerminalNode GT() => getToken(ApexParser.TOKEN_GT, 0);

  TypeArgumentsContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_typeArguments;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeArguments(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeArguments(this);
  }
}

class FormalParametersContext extends ParserRuleContext {
  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  FormalParameterListContext formalParameterList() =>
      getRuleContext<FormalParameterListContext>(0);

  FormalParametersContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_formalParameters;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFormalParameters(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFormalParameters(this);
  }
}

class FormalParameterListContext extends ParserRuleContext {
  List<FormalParameterContext> formalParameters() =>
      getRuleContexts<FormalParameterContext>();

  FormalParameterContext formalParameter(int i) =>
      getRuleContext<FormalParameterContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  FormalParameterListContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_formalParameterList;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFormalParameterList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFormalParameterList(this);
  }
}

class FormalParameterContext extends ParserRuleContext {
  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  IdContext id() => getRuleContext<IdContext>(0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  FormalParameterContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_formalParameter;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFormalParameter(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFormalParameter(this);
  }
}

class QualifiedNameContext extends ParserRuleContext {
  List<IdContext> ids() => getRuleContexts<IdContext>();

  IdContext id(int i) => getRuleContext<IdContext>(i);

  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);

  TerminalNode DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);

  QualifiedNameContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_qualifiedName;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterQualifiedName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitQualifiedName(this);
  }
}

class LiteralContext extends ParserRuleContext {
  TerminalNode IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);

  TerminalNode NumberLiteral() => getToken(ApexParser.TOKEN_NumberLiteral, 0);

  TerminalNode StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);

  TerminalNode BooleanLiteral() => getToken(ApexParser.TOKEN_BooleanLiteral, 0);

  TerminalNode NULL() => getToken(ApexParser.TOKEN_NULL, 0);

  LiteralContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_literal;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLiteral(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLiteral(this);
  }
}

class AnnotationContext extends ParserRuleContext {
  TerminalNode AT() => getToken(ApexParser.TOKEN_AT, 0);

  QualifiedNameContext qualifiedName() =>
      getRuleContext<QualifiedNameContext>(0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  ElementValuePairsContext elementValuePairs() =>
      getRuleContext<ElementValuePairsContext>(0);

  ElementValueContext elementValue() => getRuleContext<ElementValueContext>(0);

  AnnotationContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_annotation;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterAnnotation(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitAnnotation(this);
  }
}

class ElementValuePairsContext extends ParserRuleContext {
  List<ElementValuePairContext> elementValuePairs() =>
      getRuleContexts<ElementValuePairContext>();

  ElementValuePairContext elementValuePair(int i) =>
      getRuleContext<ElementValuePairContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  ElementValuePairsContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_elementValuePairs;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterElementValuePairs(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitElementValuePairs(this);
  }
}

class ElementValuePairContext extends ParserRuleContext {
  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);

  ElementValueContext elementValue() => getRuleContext<ElementValueContext>(0);

  ElementValuePairContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_elementValuePair;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterElementValuePair(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitElementValuePair(this);
  }
}

class ElementValueContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  AnnotationContext annotation() => getRuleContext<AnnotationContext>(0);

  ElementValueArrayInitializerContext elementValueArrayInitializer() =>
      getRuleContext<ElementValueArrayInitializerContext>(0);

  ElementValueContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_elementValue;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterElementValue(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitElementValue(this);
  }
}

class ElementValueArrayInitializerContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<ElementValueContext> elementValues() =>
      getRuleContexts<ElementValueContext>();

  ElementValueContext elementValue(int i) =>
      getRuleContext<ElementValueContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  ElementValueArrayInitializerContext(
      [ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_elementValueArrayInitializer;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterElementValueArrayInitializer(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitElementValueArrayInitializer(this);
  }
}

class BlockContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<StatementContext> statements() => getRuleContexts<StatementContext>();

  StatementContext statement(int i) => getRuleContext<StatementContext>(i);

  BlockContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_block;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBlock(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBlock(this);
  }
}

class LocalVariableDeclarationStatementContext extends ParserRuleContext {
  LocalVariableDeclarationContext localVariableDeclaration() =>
      getRuleContext<LocalVariableDeclarationContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  LocalVariableDeclarationStatementContext(
      [ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_localVariableDeclarationStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterLocalVariableDeclarationStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitLocalVariableDeclarationStatement(this);
  }
}

class LocalVariableDeclarationContext extends ParserRuleContext {
  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  VariableDeclaratorsContext variableDeclarators() =>
      getRuleContext<VariableDeclaratorsContext>(0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  LocalVariableDeclarationContext(
      [ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_localVariableDeclaration;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterLocalVariableDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitLocalVariableDeclaration(this);
  }
}

class StatementContext extends ParserRuleContext {
  BlockContext block() => getRuleContext<BlockContext>(0);

  IfStatementContext ifStatement() => getRuleContext<IfStatementContext>(0);

  SwitchStatementContext switchStatement() =>
      getRuleContext<SwitchStatementContext>(0);

  ForStatementContext forStatement() => getRuleContext<ForStatementContext>(0);

  WhileStatementContext whileStatement() =>
      getRuleContext<WhileStatementContext>(0);

  DoWhileStatementContext doWhileStatement() =>
      getRuleContext<DoWhileStatementContext>(0);

  TryStatementContext tryStatement() => getRuleContext<TryStatementContext>(0);

  ReturnStatementContext returnStatement() =>
      getRuleContext<ReturnStatementContext>(0);

  ThrowStatementContext throwStatement() =>
      getRuleContext<ThrowStatementContext>(0);

  BreakStatementContext breakStatement() =>
      getRuleContext<BreakStatementContext>(0);

  ContinueStatementContext continueStatement() =>
      getRuleContext<ContinueStatementContext>(0);

  InsertStatementContext insertStatement() =>
      getRuleContext<InsertStatementContext>(0);

  UpdateStatementContext updateStatement() =>
      getRuleContext<UpdateStatementContext>(0);

  DeleteStatementContext deleteStatement() =>
      getRuleContext<DeleteStatementContext>(0);

  UndeleteStatementContext undeleteStatement() =>
      getRuleContext<UndeleteStatementContext>(0);

  UpsertStatementContext upsertStatement() =>
      getRuleContext<UpsertStatementContext>(0);

  MergeStatementContext mergeStatement() =>
      getRuleContext<MergeStatementContext>(0);

  RunAsStatementContext runAsStatement() =>
      getRuleContext<RunAsStatementContext>(0);

  LocalVariableDeclarationStatementContext
      localVariableDeclarationStatement() =>
          getRuleContext<LocalVariableDeclarationStatementContext>(0);

  ExpressionStatementContext expressionStatement() =>
      getRuleContext<ExpressionStatementContext>(0);

  StatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_statement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitStatement(this);
  }
}

class IfStatementContext extends ParserRuleContext {
  TerminalNode IF() => getToken(ApexParser.TOKEN_IF, 0);

  ParExpressionContext parExpression() =>
      getRuleContext<ParExpressionContext>(0);

  List<StatementContext> statements() => getRuleContexts<StatementContext>();

  StatementContext statement(int i) => getRuleContext<StatementContext>(i);

  TerminalNode ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);

  IfStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_ifStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterIfStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitIfStatement(this);
  }
}

class SwitchStatementContext extends ParserRuleContext {
  TerminalNode SWITCH() => getToken(ApexParser.TOKEN_SWITCH, 0);

  TerminalNode ON() => getToken(ApexParser.TOKEN_ON, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<WhenControlContext> whenControls() =>
      getRuleContexts<WhenControlContext>();

  WhenControlContext whenControl(int i) =>
      getRuleContext<WhenControlContext>(i);

  SwitchStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_switchStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSwitchStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSwitchStatement(this);
  }
}

class WhenControlContext extends ParserRuleContext {
  TerminalNode WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);

  WhenValueContext whenValue() => getRuleContext<WhenValueContext>(0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  WhenControlContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_whenControl;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWhenControl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWhenControl(this);
  }
}

class WhenValueContext extends ParserRuleContext {
  TerminalNode ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);

  List<WhenLiteralContext> whenLiterals() =>
      getRuleContexts<WhenLiteralContext>();

  WhenLiteralContext whenLiteral(int i) =>
      getRuleContext<WhenLiteralContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  List<IdContext> ids() => getRuleContexts<IdContext>();

  IdContext id(int i) => getRuleContext<IdContext>(i);

  WhenValueContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_whenValue;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWhenValue(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWhenValue(this);
  }
}

class WhenLiteralContext extends ParserRuleContext {
  TerminalNode IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);

  TerminalNode SUB() => getToken(ApexParser.TOKEN_SUB, 0);

  TerminalNode StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);

  TerminalNode NULL() => getToken(ApexParser.TOKEN_NULL, 0);

  IdContext id() => getRuleContext<IdContext>(0);

  WhenLiteralContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_whenLiteral;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWhenLiteral(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWhenLiteral(this);
  }
}

class ForStatementContext extends ParserRuleContext {
  TerminalNode FOR() => getToken(ApexParser.TOKEN_FOR, 0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  ForControlContext forControl() => getRuleContext<ForControlContext>(0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  StatementContext statement() => getRuleContext<StatementContext>(0);

  ForStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_forStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterForStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitForStatement(this);
  }
}

class WhileStatementContext extends ParserRuleContext {
  TerminalNode WHILE() => getToken(ApexParser.TOKEN_WHILE, 0);

  ParExpressionContext parExpression() =>
      getRuleContext<ParExpressionContext>(0);

  StatementContext statement() => getRuleContext<StatementContext>(0);

  WhileStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_whileStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWhileStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWhileStatement(this);
  }
}

class DoWhileStatementContext extends ParserRuleContext {
  TerminalNode DO() => getToken(ApexParser.TOKEN_DO, 0);

  StatementContext statement() => getRuleContext<StatementContext>(0);

  TerminalNode WHILE() => getToken(ApexParser.TOKEN_WHILE, 0);

  ParExpressionContext parExpression() =>
      getRuleContext<ParExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  DoWhileStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_doWhileStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDoWhileStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDoWhileStatement(this);
  }
}

class TryStatementContext extends ParserRuleContext {
  TerminalNode TRY() => getToken(ApexParser.TOKEN_TRY, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  FinallyBlockContext finallyBlock() => getRuleContext<FinallyBlockContext>(0);

  List<CatchClauseContext> catchClauses() =>
      getRuleContexts<CatchClauseContext>();

  CatchClauseContext catchClause(int i) =>
      getRuleContext<CatchClauseContext>(i);

  TryStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_tryStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTryStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTryStatement(this);
  }
}

class ReturnStatementContext extends ParserRuleContext {
  TerminalNode RETURN() => getToken(ApexParser.TOKEN_RETURN, 0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  ReturnStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_returnStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterReturnStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitReturnStatement(this);
  }
}

class ThrowStatementContext extends ParserRuleContext {
  TerminalNode THROW() => getToken(ApexParser.TOKEN_THROW, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  ThrowStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_throwStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterThrowStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitThrowStatement(this);
  }
}

class BreakStatementContext extends ParserRuleContext {
  TerminalNode BREAK() => getToken(ApexParser.TOKEN_BREAK, 0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  BreakStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_breakStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBreakStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBreakStatement(this);
  }
}

class ContinueStatementContext extends ParserRuleContext {
  TerminalNode CONTINUE() => getToken(ApexParser.TOKEN_CONTINUE, 0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  ContinueStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_continueStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterContinueStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitContinueStatement(this);
  }
}

class InsertStatementContext extends ParserRuleContext {
  TerminalNode INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  InsertStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_insertStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterInsertStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInsertStatement(this);
  }
}

class UpdateStatementContext extends ParserRuleContext {
  TerminalNode UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  UpdateStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_updateStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterUpdateStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitUpdateStatement(this);
  }
}

class DeleteStatementContext extends ParserRuleContext {
  TerminalNode DELETE() => getToken(ApexParser.TOKEN_DELETE, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  DeleteStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_deleteStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDeleteStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDeleteStatement(this);
  }
}

class UndeleteStatementContext extends ParserRuleContext {
  TerminalNode UNDELETE() => getToken(ApexParser.TOKEN_UNDELETE, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  UndeleteStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_undeleteStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterUndeleteStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitUndeleteStatement(this);
  }
}

class UpsertStatementContext extends ParserRuleContext {
  TerminalNode UPSERT() => getToken(ApexParser.TOKEN_UPSERT, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  QualifiedNameContext qualifiedName() =>
      getRuleContext<QualifiedNameContext>(0);

  UpsertStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_upsertStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterUpsertStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitUpsertStatement(this);
  }
}

class MergeStatementContext extends ParserRuleContext {
  TerminalNode MERGE() => getToken(ApexParser.TOKEN_MERGE, 0);

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  MergeStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_mergeStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMergeStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMergeStatement(this);
  }
}

class RunAsStatementContext extends ParserRuleContext {
  TerminalNode SYSTEMRUNAS() => getToken(ApexParser.TOKEN_SYSTEMRUNAS, 0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);

  RunAsStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_runAsStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterRunAsStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitRunAsStatement(this);
  }
}

class ExpressionStatementContext extends ParserRuleContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  ExpressionStatementContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_expressionStatement;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterExpressionStatement(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitExpressionStatement(this);
  }
}

class PropertyBlockContext extends ParserRuleContext {
  GetterContext getter() => getRuleContext<GetterContext>(0);

  SetterContext setter() => getRuleContext<SetterContext>(0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  PropertyBlockContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_propertyBlock;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPropertyBlock(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPropertyBlock(this);
  }
}

class GetterContext extends ParserRuleContext {
  TerminalNode GET() => getToken(ApexParser.TOKEN_GET, 0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  GetterContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_getter;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterGetter(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitGetter(this);
  }
}

class SetterContext extends ParserRuleContext {
  TerminalNode SET() => getToken(ApexParser.TOKEN_SET, 0);

  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  SetterContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_setter;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSetter(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSetter(this);
  }
}

class CatchClauseContext extends ParserRuleContext {
  TerminalNode CATCH() => getToken(ApexParser.TOKEN_CATCH, 0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  QualifiedNameContext qualifiedName() =>
      getRuleContext<QualifiedNameContext>(0);

  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  CatchClauseContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_catchClause;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCatchClause(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCatchClause(this);
  }
}

class FinallyBlockContext extends ParserRuleContext {
  TerminalNode FINALLY() => getToken(ApexParser.TOKEN_FINALLY, 0);

  BlockContext block() => getRuleContext<BlockContext>(0);

  FinallyBlockContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_finallyBlock;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFinallyBlock(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFinallyBlock(this);
  }
}

class ForControlContext extends ParserRuleContext {
  EnhancedForControlContext enhancedForControl() =>
      getRuleContext<EnhancedForControlContext>(0);

  List<TerminalNode> SEMIs() => getTokens(ApexParser.TOKEN_SEMI);

  TerminalNode SEMI(int i) => getToken(ApexParser.TOKEN_SEMI, i);

  ForInitContext forInit() => getRuleContext<ForInitContext>(0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  ForUpdateContext forUpdate() => getRuleContext<ForUpdateContext>(0);

  ForControlContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_forControl;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterForControl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitForControl(this);
  }
}

class ForInitContext extends ParserRuleContext {
  LocalVariableDeclarationContext localVariableDeclaration() =>
      getRuleContext<LocalVariableDeclarationContext>(0);

  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);

  ForInitContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_forInit;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterForInit(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitForInit(this);
  }
}

class EnhancedForControlContext extends ParserRuleContext {
  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode COLON() => getToken(ApexParser.TOKEN_COLON, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  EnhancedForControlContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_enhancedForControl;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterEnhancedForControl(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitEnhancedForControl(this);
  }
}

class ForUpdateContext extends ParserRuleContext {
  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);

  ForUpdateContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_forUpdate;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterForUpdate(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitForUpdate(this);
  }
}

class ParExpressionContext extends ParserRuleContext {
  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  ParExpressionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_parExpression;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterParExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitParExpression(this);
  }
}

class ExpressionListContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  ExpressionListContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_expressionList;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterExpressionList(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitExpressionList(this);
  }
}

class ExpressionContext extends ParserRuleContext {
  ExpressionContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_expression;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class PrimaryContext extends ParserRuleContext {
  PrimaryContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_primary;

  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class MethodCallContext extends ParserRuleContext {
  IdContext id() => getRuleContext<IdContext>(0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);

  TerminalNode THIS() => getToken(ApexParser.TOKEN_THIS, 0);

  TerminalNode SUPER() => getToken(ApexParser.TOKEN_SUPER, 0);

  MethodCallContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_methodCall;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMethodCall(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMethodCall(this);
  }
}

class DotMethodCallContext extends ParserRuleContext {
  AnyIdContext anyId() => getRuleContext<AnyIdContext>(0);

  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);

  DotMethodCallContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_dotMethodCall;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDotMethodCall(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDotMethodCall(this);
  }
}

class CreatorContext extends ParserRuleContext {
  CreatedNameContext createdName() => getRuleContext<CreatedNameContext>(0);

  NoRestContext noRest() => getRuleContext<NoRestContext>(0);

  ClassCreatorRestContext classCreatorRest() =>
      getRuleContext<ClassCreatorRestContext>(0);

  ArrayCreatorRestContext arrayCreatorRest() =>
      getRuleContext<ArrayCreatorRestContext>(0);

  MapCreatorRestContext mapCreatorRest() =>
      getRuleContext<MapCreatorRestContext>(0);

  SetCreatorRestContext setCreatorRest() =>
      getRuleContext<SetCreatorRestContext>(0);

  CreatorContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_creator;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCreator(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCreator(this);
  }
}

class CreatedNameContext extends ParserRuleContext {
  List<IdCreatedNamePairContext> idCreatedNamePairs() =>
      getRuleContexts<IdCreatedNamePairContext>();

  IdCreatedNamePairContext idCreatedNamePair(int i) =>
      getRuleContext<IdCreatedNamePairContext>(i);

  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);

  TerminalNode DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);

  CreatedNameContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_createdName;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCreatedName(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCreatedName(this);
  }
}

class IdCreatedNamePairContext extends ParserRuleContext {
  AnyIdContext anyId() => getRuleContext<AnyIdContext>(0);

  TerminalNode LT() => getToken(ApexParser.TOKEN_LT, 0);

  TypeListContext typeList() => getRuleContext<TypeListContext>(0);

  TerminalNode GT() => getToken(ApexParser.TOKEN_GT, 0);

  IdCreatedNamePairContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_idCreatedNamePair;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterIdCreatedNamePair(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitIdCreatedNamePair(this);
  }
}

class NoRestContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  NoRestContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_noRest;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterNoRest(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitNoRest(this);
  }
}

class ClassCreatorRestContext extends ParserRuleContext {
  ArgumentsContext arguments() => getRuleContext<ArgumentsContext>(0);

  ClassCreatorRestContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_classCreatorRest;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterClassCreatorRest(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitClassCreatorRest(this);
  }
}

class ArrayCreatorRestContext extends ParserRuleContext {
  TerminalNode LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode RBRACK() => getToken(ApexParser.TOKEN_RBRACK, 0);

  ArrayInitializerContext arrayInitializer() =>
      getRuleContext<ArrayInitializerContext>(0);

  ArrayCreatorRestContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_arrayCreatorRest;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArrayCreatorRest(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArrayCreatorRest(this);
  }
}

class MapCreatorRestContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  List<MapCreatorRestPairContext> mapCreatorRestPairs() =>
      getRuleContexts<MapCreatorRestPairContext>();

  MapCreatorRestPairContext mapCreatorRestPair(int i) =>
      getRuleContext<MapCreatorRestPairContext>(i);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  MapCreatorRestContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_mapCreatorRest;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMapCreatorRest(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMapCreatorRest(this);
  }
}

class MapCreatorRestPairContext extends ParserRuleContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode MAPTO() => getToken(ApexParser.TOKEN_MAPTO, 0);

  MapCreatorRestPairContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_mapCreatorRestPair;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMapCreatorRestPair(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMapCreatorRestPair(this);
  }
}

class SetCreatorRestContext extends ParserRuleContext {
  TerminalNode LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);

  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);

  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);

  TerminalNode COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);

  SetCreatorRestContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_setCreatorRest;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSetCreatorRest(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSetCreatorRest(this);
  }
}

class ArgumentsContext extends ParserRuleContext {
  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  ExpressionListContext expressionList() =>
      getRuleContext<ExpressionListContext>(0);

  ArgumentsContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_arguments;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArguments(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArguments(this);
  }
}

class SoqlLiteralContext extends ParserRuleContext {
  TerminalNode LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);

  List<TerminalNode> RBRACKs() => getTokens(ApexParser.TOKEN_RBRACK);

  TerminalNode RBRACK(int i) => getToken(ApexParser.TOKEN_RBRACK, i);

  List<SoqlLiteralContext> soqlLiterals() =>
      getRuleContexts<SoqlLiteralContext>();

  SoqlLiteralContext soqlLiteral(int i) =>
      getRuleContext<SoqlLiteralContext>(i);

  SoqlLiteralContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_soqlLiteral;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoqlLiteral(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoqlLiteral(this);
  }
}

class IdContext extends ParserRuleContext {
  TerminalNode Identifier() => getToken(ApexParser.TOKEN_Identifier, 0);

  TerminalNode AFTER() => getToken(ApexParser.TOKEN_AFTER, 0);

  TerminalNode BEFORE() => getToken(ApexParser.TOKEN_BEFORE, 0);

  TerminalNode GET() => getToken(ApexParser.TOKEN_GET, 0);

  TerminalNode INHERITED() => getToken(ApexParser.TOKEN_INHERITED, 0);

  TerminalNode INSTANCEOF() => getToken(ApexParser.TOKEN_INSTANCEOF, 0);

  TerminalNode SET() => getToken(ApexParser.TOKEN_SET, 0);

  TerminalNode SHARING() => getToken(ApexParser.TOKEN_SHARING, 0);

  TerminalNode SWITCH() => getToken(ApexParser.TOKEN_SWITCH, 0);

  TerminalNode TRANSIENT() => getToken(ApexParser.TOKEN_TRANSIENT, 0);

  TerminalNode TRIGGER() => getToken(ApexParser.TOKEN_TRIGGER, 0);

  TerminalNode WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);

  TerminalNode WITH() => getToken(ApexParser.TOKEN_WITH, 0);

  TerminalNode WITHOUT() => getToken(ApexParser.TOKEN_WITHOUT, 0);

  IdContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_id;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterId(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitId(this);
  }
}

class AnyIdContext extends ParserRuleContext {
  TerminalNode Identifier() => getToken(ApexParser.TOKEN_Identifier, 0);

  TerminalNode ABSTRACT() => getToken(ApexParser.TOKEN_ABSTRACT, 0);

  TerminalNode AFTER() => getToken(ApexParser.TOKEN_AFTER, 0);

  TerminalNode BEFORE() => getToken(ApexParser.TOKEN_BEFORE, 0);

  TerminalNode BREAK() => getToken(ApexParser.TOKEN_BREAK, 0);

  TerminalNode CATCH() => getToken(ApexParser.TOKEN_CATCH, 0);

  TerminalNode CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);

  TerminalNode CONTINUE() => getToken(ApexParser.TOKEN_CONTINUE, 0);

  TerminalNode DELETE() => getToken(ApexParser.TOKEN_DELETE, 0);

  TerminalNode DO() => getToken(ApexParser.TOKEN_DO, 0);

  TerminalNode ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);

  TerminalNode ENUM() => getToken(ApexParser.TOKEN_ENUM, 0);

  TerminalNode EXTENDS() => getToken(ApexParser.TOKEN_EXTENDS, 0);

  TerminalNode FINAL() => getToken(ApexParser.TOKEN_FINAL, 0);

  TerminalNode FINALLY() => getToken(ApexParser.TOKEN_FINALLY, 0);

  TerminalNode FOR() => getToken(ApexParser.TOKEN_FOR, 0);

  TerminalNode GET() => getToken(ApexParser.TOKEN_GET, 0);

  TerminalNode GLOBAL() => getToken(ApexParser.TOKEN_GLOBAL, 0);

  TerminalNode IF() => getToken(ApexParser.TOKEN_IF, 0);

  TerminalNode IMPLEMENTS() => getToken(ApexParser.TOKEN_IMPLEMENTS, 0);

  TerminalNode INHERITED() => getToken(ApexParser.TOKEN_INHERITED, 0);

  TerminalNode INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);

  TerminalNode INSTANCEOF() => getToken(ApexParser.TOKEN_INSTANCEOF, 0);

  TerminalNode INTERFACE() => getToken(ApexParser.TOKEN_INTERFACE, 0);

  TerminalNode LIST() => getToken(ApexParser.TOKEN_LIST, 0);

  TerminalNode MAP() => getToken(ApexParser.TOKEN_MAP, 0);

  TerminalNode MERGE() => getToken(ApexParser.TOKEN_MERGE, 0);

  TerminalNode NEW() => getToken(ApexParser.TOKEN_NEW, 0);

  TerminalNode NULL() => getToken(ApexParser.TOKEN_NULL, 0);

  TerminalNode ON() => getToken(ApexParser.TOKEN_ON, 0);

  TerminalNode OVERRIDE() => getToken(ApexParser.TOKEN_OVERRIDE, 0);

  TerminalNode PRIVATE() => getToken(ApexParser.TOKEN_PRIVATE, 0);

  TerminalNode PROTECTED() => getToken(ApexParser.TOKEN_PROTECTED, 0);

  TerminalNode PUBLIC() => getToken(ApexParser.TOKEN_PUBLIC, 0);

  TerminalNode RETURN() => getToken(ApexParser.TOKEN_RETURN, 0);

  TerminalNode SET() => getToken(ApexParser.TOKEN_SET, 0);

  TerminalNode SHARING() => getToken(ApexParser.TOKEN_SHARING, 0);

  TerminalNode STATIC() => getToken(ApexParser.TOKEN_STATIC, 0);

  TerminalNode SUPER() => getToken(ApexParser.TOKEN_SUPER, 0);

  TerminalNode SWITCH() => getToken(ApexParser.TOKEN_SWITCH, 0);

  TerminalNode TESTMETHOD() => getToken(ApexParser.TOKEN_TESTMETHOD, 0);

  TerminalNode THIS() => getToken(ApexParser.TOKEN_THIS, 0);

  TerminalNode THROW() => getToken(ApexParser.TOKEN_THROW, 0);

  TerminalNode TRANSIENT() => getToken(ApexParser.TOKEN_TRANSIENT, 0);

  TerminalNode TRIGGER() => getToken(ApexParser.TOKEN_TRIGGER, 0);

  TerminalNode TRY() => getToken(ApexParser.TOKEN_TRY, 0);

  TerminalNode UNDELETE() => getToken(ApexParser.TOKEN_UNDELETE, 0);

  TerminalNode UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);

  TerminalNode UPSERT() => getToken(ApexParser.TOKEN_UPSERT, 0);

  TerminalNode VIRTUAL() => getToken(ApexParser.TOKEN_VIRTUAL, 0);

  TerminalNode WEBSERVICE() => getToken(ApexParser.TOKEN_WEBSERVICE, 0);

  TerminalNode WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);

  TerminalNode WHILE() => getToken(ApexParser.TOKEN_WHILE, 0);

  TerminalNode WITH() => getToken(ApexParser.TOKEN_WITH, 0);

  TerminalNode WITHOUT() => getToken(ApexParser.TOKEN_WITHOUT, 0);

  AnyIdContext([ParserRuleContext? parent, int? invokingState])
      : super(parent, invokingState);

  @override
  int get ruleIndex => RULE_anyId;

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterAnyId(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitAnyId(this);
  }
}

class TypeClassDeclarationContext extends TypeDeclarationContext {
  ClassDeclarationContext classDeclaration() =>
      getRuleContext<ClassDeclarationContext>(0);

  TerminalNode DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  TypeClassDeclarationContext(TypeDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterTypeClassDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeClassDeclaration(this);
  }
}

class TypeInterfaceDeclarationContext extends TypeDeclarationContext {
  InterfaceDeclarationContext interfaceDeclaration() =>
      getRuleContext<InterfaceDeclarationContext>(0);

  TerminalNode DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  TypeInterfaceDeclarationContext(TypeDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterTypeInterfaceDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitTypeInterfaceDeclaration(this);
  }
}

class TypeEnumDeclarationContext extends TypeDeclarationContext {
  EnumDeclarationContext enumDeclaration() =>
      getRuleContext<EnumDeclarationContext>(0);

  TerminalNode DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  TypeEnumDeclarationContext(TypeDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeEnumDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeEnumDeclaration(this);
  }
}

class StaticBlockClassBodyDeclarationContext
    extends ClassBodyDeclarationContext {
  BlockContext block() => getRuleContext<BlockContext>(0);

  TerminalNode STATIC() => getToken(ApexParser.TOKEN_STATIC, 0);

  StaticBlockClassBodyDeclarationContext(ClassBodyDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterStaticBlockClassBodyDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitStaticBlockClassBodyDeclaration(this);
  }
}

class MemberClassBodyDeclarationContext extends ClassBodyDeclarationContext {
  MemberDeclarationContext memberDeclaration() =>
      getRuleContext<MemberDeclarationContext>(0);

  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();

  ModifierContext modifier(int i) => getRuleContext<ModifierContext>(i);

  MemberClassBodyDeclarationContext(ClassBodyDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterMemberClassBodyDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitMemberClassBodyDeclaration(this);
  }
}

class EmptyClassBodyDeclarationContext extends ClassBodyDeclarationContext {
  TerminalNode SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);

  EmptyClassBodyDeclarationContext(ClassBodyDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterEmptyClassBodyDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitEmptyClassBodyDeclaration(this);
  }
}

class MethodMemberDeclarationContext extends MemberDeclarationContext {
  MethodDeclarationContext methodDeclaration() =>
      getRuleContext<MethodDeclarationContext>(0);

  MethodMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterMethodMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitMethodMemberDeclaration(this);
  }
}

class ConstructorMemberDeclarationContext extends MemberDeclarationContext {
  ConstructorDeclarationContext constructorDeclaration() =>
      getRuleContext<ConstructorDeclarationContext>(0);

  ConstructorMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterConstructorMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitConstructorMemberDeclaration(this);
  }
}

class EnumMemberDeclarationContext extends MemberDeclarationContext {
  EnumDeclarationContext enumDeclaration() =>
      getRuleContext<EnumDeclarationContext>(0);

  EnumMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterEnumMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitEnumMemberDeclaration(this);
  }
}

class ClassMemberDeclarationContext extends MemberDeclarationContext {
  ClassDeclarationContext classDeclaration() =>
      getRuleContext<ClassDeclarationContext>(0);

  ClassMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterClassMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitClassMemberDeclaration(this);
  }
}

class FieldMemberDeclarationContext extends MemberDeclarationContext {
  FieldDeclarationContext fieldDeclaration() =>
      getRuleContext<FieldDeclarationContext>(0);

  FieldMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterFieldMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitFieldMemberDeclaration(this);
  }
}

class InterfaceMemberDeclarationContext extends MemberDeclarationContext {
  InterfaceDeclarationContext interfaceDeclaration() =>
      getRuleContext<InterfaceDeclarationContext>(0);

  InterfaceMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterInterfaceMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitInterfaceMemberDeclaration(this);
  }
}

class PropertyMemberDeclarationContext extends MemberDeclarationContext {
  PropertyDeclarationContext propertyDeclaration() =>
      getRuleContext<PropertyDeclarationContext>(0);

  PropertyMemberDeclarationContext(MemberDeclarationContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterPropertyMemberDeclaration(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.exitPropertyMemberDeclaration(this);
  }
}

class PrimaryExpressionContext extends ExpressionContext {
  PrimaryContext primary() => getRuleContext<PrimaryContext>(0);

  PrimaryExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPrimaryExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPrimaryExpression(this);
  }
}

class Arth1ExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode MUL() => getToken(ApexParser.TOKEN_MUL, 0);

  TerminalNode DIV() => getToken(ApexParser.TOKEN_DIV, 0);

  TerminalNode MOD() => getToken(ApexParser.TOKEN_MOD, 0);

  Arth1ExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArth1Expression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArth1Expression(this);
  }
}

class DotExpressionContext extends ExpressionContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode DOT() => getToken(ApexParser.TOKEN_DOT, 0);

  TerminalNode QUESTIONDOT() => getToken(ApexParser.TOKEN_QUESTIONDOT, 0);

  DotMethodCallContext dotMethodCall() =>
      getRuleContext<DotMethodCallContext>(0);

  AnyIdContext anyId() => getRuleContext<AnyIdContext>(0);

  DotExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDotExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDotExpression(this);
  }
}

class BitOrExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode BITOR() => getToken(ApexParser.TOKEN_BITOR, 0);

  BitOrExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBitOrExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBitOrExpression(this);
  }
}

class ArrayExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);

  TerminalNode RBRACK() => getToken(ApexParser.TOKEN_RBRACK, 0);

  ArrayExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArrayExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArrayExpression(this);
  }
}

class NewExpressionContext extends ExpressionContext {
  TerminalNode NEW() => getToken(ApexParser.TOKEN_NEW, 0);

  CreatorContext creator() => getRuleContext<CreatorContext>(0);

  NewExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterNewExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitNewExpression(this);
  }
}

class AssignExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);

  TerminalNode ADD_ASSIGN() => getToken(ApexParser.TOKEN_ADD_ASSIGN, 0);

  TerminalNode SUB_ASSIGN() => getToken(ApexParser.TOKEN_SUB_ASSIGN, 0);

  TerminalNode MUL_ASSIGN() => getToken(ApexParser.TOKEN_MUL_ASSIGN, 0);

  TerminalNode DIV_ASSIGN() => getToken(ApexParser.TOKEN_DIV_ASSIGN, 0);

  TerminalNode AND_ASSIGN() => getToken(ApexParser.TOKEN_AND_ASSIGN, 0);

  TerminalNode OR_ASSIGN() => getToken(ApexParser.TOKEN_OR_ASSIGN, 0);

  TerminalNode XOR_ASSIGN() => getToken(ApexParser.TOKEN_XOR_ASSIGN, 0);

  TerminalNode RSHIFT_ASSIGN() => getToken(ApexParser.TOKEN_RSHIFT_ASSIGN, 0);

  TerminalNode URSHIFT_ASSIGN() => getToken(ApexParser.TOKEN_URSHIFT_ASSIGN, 0);

  TerminalNode LSHIFT_ASSIGN() => getToken(ApexParser.TOKEN_LSHIFT_ASSIGN, 0);

  TerminalNode MOD_ASSIGN() => getToken(ApexParser.TOKEN_MOD_ASSIGN, 0);

  AssignExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterAssignExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitAssignExpression(this);
  }
}

class MethodCallExpressionContext extends ExpressionContext {
  MethodCallContext methodCall() => getRuleContext<MethodCallContext>(0);

  MethodCallExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterMethodCallExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMethodCallExpression(this);
  }
}

class BitNotExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode CARET() => getToken(ApexParser.TOKEN_CARET, 0);

  BitNotExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBitNotExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBitNotExpression(this);
  }
}

class Arth2ExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode ADD() => getToken(ApexParser.TOKEN_ADD, 0);

  TerminalNode SUB() => getToken(ApexParser.TOKEN_SUB, 0);

  Arth2ExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterArth2Expression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitArth2Expression(this);
  }
}

class LogAndExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode AND() => getToken(ApexParser.TOKEN_AND, 0);

  LogAndExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLogAndExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLogAndExpression(this);
  }
}

class CastExpressionContext extends ExpressionContext {
  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  CastExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCastExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCastExpression(this);
  }
}

class BitAndExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode BITAND() => getToken(ApexParser.TOKEN_BITAND, 0);

  BitAndExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBitAndExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBitAndExpression(this);
  }
}

class CmpExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode GT() => getToken(ApexParser.TOKEN_GT, 0);

  TerminalNode LT() => getToken(ApexParser.TOKEN_LT, 0);

  TerminalNode ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);

  CmpExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCmpExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCmpExpression(this);
  }
}

class BitExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  List<TerminalNode> LTs() => getTokens(ApexParser.TOKEN_LT);

  TerminalNode LT(int i) => getToken(ApexParser.TOKEN_LT, i);

  List<TerminalNode> GTs() => getTokens(ApexParser.TOKEN_GT);

  TerminalNode GT(int i) => getToken(ApexParser.TOKEN_GT, i);

  BitExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBitExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBitExpression(this);
  }
}

class LogOrExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode OR() => getToken(ApexParser.TOKEN_OR, 0);

  LogOrExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLogOrExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLogOrExpression(this);
  }
}

class CondExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode QUESTION() => getToken(ApexParser.TOKEN_QUESTION, 0);

  TerminalNode COLON() => getToken(ApexParser.TOKEN_COLON, 0);

  CondExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterCondExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitCondExpression(this);
  }
}

class EqualityExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();

  ExpressionContext expression(int i) => getRuleContext<ExpressionContext>(i);

  TerminalNode TRIPLEEQUAL() => getToken(ApexParser.TOKEN_TRIPLEEQUAL, 0);

  TerminalNode TRIPLENOTEQUAL() => getToken(ApexParser.TOKEN_TRIPLENOTEQUAL, 0);

  TerminalNode EQUAL() => getToken(ApexParser.TOKEN_EQUAL, 0);

  TerminalNode NOTEQUAL() => getToken(ApexParser.TOKEN_NOTEQUAL, 0);

  TerminalNode LESSANDGREATER() => getToken(ApexParser.TOKEN_LESSANDGREATER, 0);

  EqualityExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterEqualityExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitEqualityExpression(this);
  }
}

class PostOpExpressionContext extends ExpressionContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode INC() => getToken(ApexParser.TOKEN_INC, 0);

  TerminalNode DEC() => getToken(ApexParser.TOKEN_DEC, 0);

  PostOpExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPostOpExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPostOpExpression(this);
  }
}

class NegExpressionContext extends ExpressionContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode TILDE() => getToken(ApexParser.TOKEN_TILDE, 0);

  TerminalNode BANG() => getToken(ApexParser.TOKEN_BANG, 0);

  NegExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterNegExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitNegExpression(this);
  }
}

class PreOpExpressionContext extends ExpressionContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode ADD() => getToken(ApexParser.TOKEN_ADD, 0);

  TerminalNode SUB() => getToken(ApexParser.TOKEN_SUB, 0);

  TerminalNode INC() => getToken(ApexParser.TOKEN_INC, 0);

  TerminalNode DEC() => getToken(ApexParser.TOKEN_DEC, 0);

  PreOpExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPreOpExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPreOpExpression(this);
  }
}

class InstanceOfExpressionContext extends ExpressionContext {
  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode INSTANCEOF() => getToken(ApexParser.TOKEN_INSTANCEOF, 0);

  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  InstanceOfExpressionContext(ExpressionContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener)
      listener.enterInstanceOfExpression(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInstanceOfExpression(this);
  }
}

class ThisPrimaryContext extends PrimaryContext {
  TerminalNode THIS() => getToken(ApexParser.TOKEN_THIS, 0);

  ThisPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterThisPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitThisPrimary(this);
  }
}

class SoqlPrimaryContext extends PrimaryContext {
  SoqlLiteralContext soqlLiteral() => getRuleContext<SoqlLiteralContext>(0);

  SoqlPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoqlPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoqlPrimary(this);
  }
}

class SuperPrimaryContext extends PrimaryContext {
  TerminalNode SUPER() => getToken(ApexParser.TOKEN_SUPER, 0);

  SuperPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSuperPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSuperPrimary(this);
  }
}

class TypeRefPrimaryContext extends PrimaryContext {
  TypeRefContext typeRef() => getRuleContext<TypeRefContext>(0);

  TerminalNode DOT() => getToken(ApexParser.TOKEN_DOT, 0);

  TerminalNode CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);

  TypeRefPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeRefPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeRefPrimary(this);
  }
}

class IdPrimaryContext extends PrimaryContext {
  IdContext id() => getRuleContext<IdContext>(0);

  IdPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterIdPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitIdPrimary(this);
  }
}

class LiteralPrimaryContext extends PrimaryContext {
  LiteralContext literal() => getRuleContext<LiteralContext>(0);

  LiteralPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLiteralPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLiteralPrimary(this);
  }
}

class SubPrimaryContext extends PrimaryContext {
  TerminalNode LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);

  ExpressionContext expression() => getRuleContext<ExpressionContext>(0);

  TerminalNode RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);

  SubPrimaryContext(PrimaryContext ctx) {
    copyFrom(ctx);
  }

  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSubPrimary(this);
  }

  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSubPrimary(this);
  }
}
