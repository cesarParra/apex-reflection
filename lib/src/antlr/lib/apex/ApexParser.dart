// Generated from lib/src/antlr/grammars/apex/ApexParser.g4 by ANTLR 4.9.3
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'ApexParserListener.dart';
import 'ApexParserBaseListener.dart';
const int RULE_triggerUnit = 0, RULE_triggerCase = 1, RULE_compilationUnit = 2, 
          RULE_typeDeclaration = 3, RULE_classDeclaration = 4, RULE_enumDeclaration = 5, 
          RULE_enumConstants = 6, RULE_interfaceDeclaration = 7, RULE_typeList = 8, 
          RULE_classBody = 9, RULE_groupedDeclarations = 10, RULE_interfaceBody = 11, 
          RULE_classBodyDeclaration = 12, RULE_modifier = 13, RULE_memberDeclaration = 14, 
          RULE_methodDeclaration = 15, RULE_constructorDeclaration = 16, 
          RULE_fieldDeclaration = 17, RULE_propertyDeclaration = 18, RULE_interfaceMethodDeclaration = 19, 
          RULE_variableDeclarators = 20, RULE_variableDeclarator = 21, RULE_arrayInitializer = 22, 
          RULE_typeRef = 23, RULE_arraySubscripts = 24, RULE_typeName = 25, 
          RULE_typeArguments = 26, RULE_formalParameters = 27, RULE_formalParameterList = 28, 
          RULE_formalParameter = 29, RULE_qualifiedName = 30, RULE_literal = 31, 
          RULE_annotation = 32, RULE_elementValuePairs = 33, RULE_elementValuePair = 34, 
          RULE_elementValue = 35, RULE_elementValueArrayInitializer = 36, 
          RULE_block = 37, RULE_localVariableDeclarationStatement = 38, 
          RULE_localVariableDeclaration = 39, RULE_statement = 40, RULE_ifStatement = 41, 
          RULE_switchStatement = 42, RULE_whenControl = 43, RULE_whenValue = 44, 
          RULE_whenLiteral = 45, RULE_forStatement = 46, RULE_whileStatement = 47, 
          RULE_doWhileStatement = 48, RULE_tryStatement = 49, RULE_returnStatement = 50, 
          RULE_throwStatement = 51, RULE_breakStatement = 52, RULE_continueStatement = 53, 
          RULE_insertStatement = 54, RULE_updateStatement = 55, RULE_deleteStatement = 56, 
          RULE_undeleteStatement = 57, RULE_upsertStatement = 58, RULE_mergeStatement = 59, 
          RULE_runAsStatement = 60, RULE_expressionStatement = 61, RULE_propertyBlock = 62, 
          RULE_getter = 63, RULE_setter = 64, RULE_catchClause = 65, RULE_finallyBlock = 66, 
          RULE_forControl = 67, RULE_forInit = 68, RULE_enhancedForControl = 69, 
          RULE_forUpdate = 70, RULE_parExpression = 71, RULE_expressionList = 72, 
          RULE_expression = 73, RULE_primary = 74, RULE_methodCall = 75, 
          RULE_dotMethodCall = 76, RULE_creator = 77, RULE_createdName = 78, 
          RULE_idCreatedNamePair = 79, RULE_noRest = 80, RULE_classCreatorRest = 81, 
          RULE_arrayCreatorRest = 82, RULE_mapCreatorRest = 83, RULE_mapCreatorRestPair = 84, 
          RULE_setCreatorRest = 85, RULE_arguments = 86, RULE_soqlLiteral = 87, 
          RULE_query = 88, RULE_subQuery = 89, RULE_selectList = 90, RULE_selectEntry = 91, 
          RULE_fieldName = 92, RULE_fromNameList = 93, RULE_subFieldList = 94, 
          RULE_subFieldEntry = 95, RULE_soqlFieldsParameter = 96, RULE_soqlFunction = 97, 
          RULE_dateFieldName = 98, RULE_typeOf = 99, RULE_whenClause = 100, 
          RULE_elseClause = 101, RULE_fieldNameList = 102, RULE_usingScope = 103, 
          RULE_whereClause = 104, RULE_logicalExpression = 105, RULE_conditionalExpression = 106, 
          RULE_fieldExpression = 107, RULE_comparisonOperator = 108, RULE_value = 109, 
          RULE_valueList = 110, RULE_signedNumber = 111, RULE_withClause = 112, 
          RULE_filteringExpression = 113, RULE_dataCategorySelection = 114, 
          RULE_dataCategoryName = 115, RULE_filteringSelector = 116, RULE_groupByClause = 117, 
          RULE_orderByClause = 118, RULE_fieldOrderList = 119, RULE_fieldOrder = 120, 
          RULE_limitClause = 121, RULE_offsetClause = 122, RULE_allRowsClause = 123, 
          RULE_forClauses = 124, RULE_boundExpression = 125, RULE_dateFormula = 126, 
          RULE_signedInteger = 127, RULE_soqlId = 128, RULE_soslLiteral = 129, 
          RULE_soslClauses = 130, RULE_searchGroup = 131, RULE_fieldSpecList = 132, 
          RULE_fieldSpec = 133, RULE_fieldList = 134, RULE_updateList = 135, 
          RULE_updateType = 136, RULE_networkList = 137, RULE_soslId = 138, 
          RULE_id = 139, RULE_anyId = 140;
class ApexParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.9.3', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_ABSTRACT = 1, TOKEN_AFTER = 2, TOKEN_BEFORE = 3, 
                   TOKEN_BREAK = 4, TOKEN_CATCH = 5, TOKEN_CLASS = 6, TOKEN_CONTINUE = 7, 
                   TOKEN_DELETE = 8, TOKEN_DO = 9, TOKEN_ELSE = 10, TOKEN_ENUM = 11, 
                   TOKEN_EXTENDS = 12, TOKEN_FINAL = 13, TOKEN_FINALLY = 14, 
                   TOKEN_FOR = 15, TOKEN_GET = 16, TOKEN_GLOBAL = 17, TOKEN_IF = 18, 
                   TOKEN_IMPLEMENTS = 19, TOKEN_INHERITED = 20, TOKEN_INSERT = 21, 
                   TOKEN_INSTANCEOF = 22, TOKEN_INTERFACE = 23, TOKEN_MERGE = 24, 
                   TOKEN_NEW = 25, TOKEN_NULL = 26, TOKEN_ON = 27, TOKEN_OVERRIDE = 28, 
                   TOKEN_PRIVATE = 29, TOKEN_PROTECTED = 30, TOKEN_PUBLIC = 31, 
                   TOKEN_RETURN = 32, TOKEN_SYSTEMRUNAS = 33, TOKEN_SET = 34, 
                   TOKEN_SHARING = 35, TOKEN_STATIC = 36, TOKEN_SUPER = 37, 
                   TOKEN_SWITCH = 38, TOKEN_TESTMETHOD = 39, TOKEN_THIS = 40, 
                   TOKEN_THROW = 41, TOKEN_TRANSIENT = 42, TOKEN_TRIGGER = 43, 
                   TOKEN_TRY = 44, TOKEN_UNDELETE = 45, TOKEN_UPDATE = 46, 
                   TOKEN_UPSERT = 47, TOKEN_VIRTUAL = 48, TOKEN_VOID = 49, 
                   TOKEN_WEBSERVICE = 50, TOKEN_WHEN = 51, TOKEN_WHILE = 52, 
                   TOKEN_WITH = 53, TOKEN_WITHOUT = 54, TOKEN_LIST = 55, 
                   TOKEN_MAP = 56, TOKEN_SELECT = 57, TOKEN_COUNT = 58, 
                   TOKEN_FROM = 59, TOKEN_AS = 60, TOKEN_USING = 61, TOKEN_SCOPE = 62, 
                   TOKEN_WHERE = 63, TOKEN_ORDER = 64, TOKEN_BY = 65, TOKEN_LIMIT = 66, 
                   TOKEN_SOQLAND = 67, TOKEN_SOQLOR = 68, TOKEN_NOT = 69, 
                   TOKEN_AVG = 70, TOKEN_COUNT_DISTINCT = 71, TOKEN_MIN = 72, 
                   TOKEN_MAX = 73, TOKEN_SUM = 74, TOKEN_TYPEOF = 75, TOKEN_END = 76, 
                   TOKEN_THEN = 77, TOKEN_LIKE = 78, TOKEN_IN = 79, TOKEN_INCLUDES = 80, 
                   TOKEN_EXCLUDES = 81, TOKEN_ASC = 82, TOKEN_DESC = 83, 
                   TOKEN_NULLS = 84, TOKEN_FIRST = 85, TOKEN_LAST = 86, 
                   TOKEN_GROUP = 87, TOKEN_ALL = 88, TOKEN_ROWS = 89, TOKEN_VIEW = 90, 
                   TOKEN_HAVING = 91, TOKEN_ROLLUP = 92, TOKEN_TOLABEL = 93, 
                   TOKEN_OFFSET = 94, TOKEN_DATA = 95, TOKEN_CATEGORY = 96, 
                   TOKEN_AT = 97, TOKEN_ABOVE = 98, TOKEN_BELOW = 99, TOKEN_ABOVE_OR_BELOW = 100, 
                   TOKEN_SECURITY_ENFORCED = 101, TOKEN_REFERENCE = 102, 
                   TOKEN_CUBE = 103, TOKEN_FORMAT = 104, TOKEN_TRACKING = 105, 
                   TOKEN_VIEWSTAT = 106, TOKEN_CUSTOM = 107, TOKEN_STANDARD = 108, 
                   TOKEN_CALENDAR_MONTH = 109, TOKEN_CALENDAR_QUARTER = 110, 
                   TOKEN_CALENDAR_YEAR = 111, TOKEN_DAY_IN_MONTH = 112, 
                   TOKEN_DAY_IN_WEEK = 113, TOKEN_DAY_IN_YEAR = 114, TOKEN_DAY_ONLY = 115, 
                   TOKEN_FISCAL_MONTH = 116, TOKEN_FISCAL_QUARTER = 117, 
                   TOKEN_FISCAL_YEAR = 118, TOKEN_HOUR_IN_DAY = 119, TOKEN_WEEK_IN_MONTH = 120, 
                   TOKEN_WEEK_IN_YEAR = 121, TOKEN_CONVERT_TIMEZONE = 122, 
                   TOKEN_YESTERDAY = 123, TOKEN_TODAY = 124, TOKEN_TOMORROW = 125, 
                   TOKEN_LAST_WEEK = 126, TOKEN_THIS_WEEK = 127, TOKEN_NEXT_WEEK = 128, 
                   TOKEN_LAST_MONTH = 129, TOKEN_THIS_MONTH = 130, TOKEN_NEXT_MONTH = 131, 
                   TOKEN_LAST_90_DAYS = 132, TOKEN_NEXT_90_DAYS = 133, TOKEN_LAST_N_DAYS_N = 134, 
                   TOKEN_NEXT_N_DAYS_N = 135, TOKEN_NEXT_N_WEEKS_N = 136, 
                   TOKEN_LAST_N_WEEKS_N = 137, TOKEN_NEXT_N_MONTHS_N = 138, 
                   TOKEN_LAST_N_MONTHS_N = 139, TOKEN_THIS_QUARTER = 140, 
                   TOKEN_LAST_QUARTER = 141, TOKEN_NEXT_QUARTER = 142, TOKEN_NEXT_N_QUARTERS_N = 143, 
                   TOKEN_LAST_N_QUARTERS_N = 144, TOKEN_THIS_YEAR = 145, 
                   TOKEN_LAST_YEAR = 146, TOKEN_NEXT_YEAR = 147, TOKEN_NEXT_N_YEARS_N = 148, 
                   TOKEN_LAST_N_YEARS_N = 149, TOKEN_THIS_FISCAL_QUARTER = 150, 
                   TOKEN_LAST_FISCAL_QUARTER = 151, TOKEN_NEXT_FISCAL_QUARTER = 152, 
                   TOKEN_NEXT_N_FISCAL_QUARTERS_N = 153, TOKEN_LAST_N_FISCAL_QUARTERS_N = 154, 
                   TOKEN_THIS_FISCAL_YEAR = 155, TOKEN_LAST_FISCAL_YEAR = 156, 
                   TOKEN_NEXT_FISCAL_YEAR = 157, TOKEN_NEXT_N_FISCAL_YEARS_N = 158, 
                   TOKEN_LAST_N_FISCAL_YEARS_N = 159, TOKEN_DateLiteral = 160, 
                   TOKEN_DateTimeLiteral = 161, TOKEN_IntegralCurrencyLiteral = 162, 
                   TOKEN_FIND = 163, TOKEN_EMAIL = 164, TOKEN_NAME = 165, 
                   TOKEN_PHONE = 166, TOKEN_SIDEBAR = 167, TOKEN_FIELDS = 168, 
                   TOKEN_METADATA = 169, TOKEN_PRICEBOOKID = 170, TOKEN_NETWORK = 171, 
                   TOKEN_SNIPPET = 172, TOKEN_TARGET_LENGTH = 173, TOKEN_DIVISION = 174, 
                   TOKEN_RETURNING = 175, TOKEN_LISTVIEW = 176, TOKEN_FindLiteral = 177, 
                   TOKEN_IntegerLiteral = 178, TOKEN_LongLiteral = 179, 
                   TOKEN_NumberLiteral = 180, TOKEN_BooleanLiteral = 181, 
                   TOKEN_StringLiteral = 182, TOKEN_NullLiteral = 183, TOKEN_LPAREN = 184, 
                   TOKEN_RPAREN = 185, TOKEN_LBRACE = 186, TOKEN_RBRACE = 187, 
                   TOKEN_LBRACK = 188, TOKEN_RBRACK = 189, TOKEN_SEMI = 190, 
                   TOKEN_COMMA = 191, TOKEN_DOT = 192, TOKEN_ASSIGN = 193, 
                   TOKEN_GT = 194, TOKEN_LT = 195, TOKEN_BANG = 196, TOKEN_TILDE = 197, 
                   TOKEN_QUESTIONDOT = 198, TOKEN_QUESTION = 199, TOKEN_COLON = 200, 
                   TOKEN_EQUAL = 201, TOKEN_TRIPLEEQUAL = 202, TOKEN_NOTEQUAL = 203, 
                   TOKEN_LESSANDGREATER = 204, TOKEN_TRIPLENOTEQUAL = 205, 
                   TOKEN_AND = 206, TOKEN_OR = 207, TOKEN_INC = 208, TOKEN_DEC = 209, 
                   TOKEN_ADD = 210, TOKEN_SUB = 211, TOKEN_MUL = 212, TOKEN_DIV = 213, 
                   TOKEN_BITAND = 214, TOKEN_BITOR = 215, TOKEN_CARET = 216, 
                   TOKEN_MOD = 217, TOKEN_MAPTO = 218, TOKEN_ADD_ASSIGN = 219, 
                   TOKEN_SUB_ASSIGN = 220, TOKEN_MUL_ASSIGN = 221, TOKEN_DIV_ASSIGN = 222, 
                   TOKEN_AND_ASSIGN = 223, TOKEN_OR_ASSIGN = 224, TOKEN_XOR_ASSIGN = 225, 
                   TOKEN_MOD_ASSIGN = 226, TOKEN_LSHIFT_ASSIGN = 227, TOKEN_RSHIFT_ASSIGN = 228, 
                   TOKEN_URSHIFT_ASSIGN = 229, TOKEN_ATSIGN = 230, TOKEN_UNDERSCORE = 231, 
                   TOKEN_Identifier = 232, TOKEN_START_GROUP_COMMENT = 233, 
                   TOKEN_END_GROUP_COMMENT = 234, TOKEN_DOC_COMMENT = 235, 
                   TOKEN_WS = 236, TOKEN_COMMENT = 237, TOKEN_LINE_COMMENT = 238;

  @override
  final List<String> ruleNames = [
    'triggerUnit', 'triggerCase', 'compilationUnit', 'typeDeclaration', 
    'classDeclaration', 'enumDeclaration', 'enumConstants', 'interfaceDeclaration', 
    'typeList', 'classBody', 'groupedDeclarations', 'interfaceBody', 'classBodyDeclaration', 
    'modifier', 'memberDeclaration', 'methodDeclaration', 'constructorDeclaration', 
    'fieldDeclaration', 'propertyDeclaration', 'interfaceMethodDeclaration', 
    'variableDeclarators', 'variableDeclarator', 'arrayInitializer', 'typeRef', 
    'arraySubscripts', 'typeName', 'typeArguments', 'formalParameters', 
    'formalParameterList', 'formalParameter', 'qualifiedName', 'literal', 
    'annotation', 'elementValuePairs', 'elementValuePair', 'elementValue', 
    'elementValueArrayInitializer', 'block', 'localVariableDeclarationStatement', 
    'localVariableDeclaration', 'statement', 'ifStatement', 'switchStatement', 
    'whenControl', 'whenValue', 'whenLiteral', 'forStatement', 'whileStatement', 
    'doWhileStatement', 'tryStatement', 'returnStatement', 'throwStatement', 
    'breakStatement', 'continueStatement', 'insertStatement', 'updateStatement', 
    'deleteStatement', 'undeleteStatement', 'upsertStatement', 'mergeStatement', 
    'runAsStatement', 'expressionStatement', 'propertyBlock', 'getter', 
    'setter', 'catchClause', 'finallyBlock', 'forControl', 'forInit', 'enhancedForControl', 
    'forUpdate', 'parExpression', 'expressionList', 'expression', 'primary', 
    'methodCall', 'dotMethodCall', 'creator', 'createdName', 'idCreatedNamePair', 
    'noRest', 'classCreatorRest', 'arrayCreatorRest', 'mapCreatorRest', 
    'mapCreatorRestPair', 'setCreatorRest', 'arguments', 'soqlLiteral', 
    'query', 'subQuery', 'selectList', 'selectEntry', 'fieldName', 'fromNameList', 
    'subFieldList', 'subFieldEntry', 'soqlFieldsParameter', 'soqlFunction', 
    'dateFieldName', 'typeOf', 'whenClause', 'elseClause', 'fieldNameList', 
    'usingScope', 'whereClause', 'logicalExpression', 'conditionalExpression', 
    'fieldExpression', 'comparisonOperator', 'value', 'valueList', 'signedNumber', 
    'withClause', 'filteringExpression', 'dataCategorySelection', 'dataCategoryName', 
    'filteringSelector', 'groupByClause', 'orderByClause', 'fieldOrderList', 
    'fieldOrder', 'limitClause', 'offsetClause', 'allRowsClause', 'forClauses', 
    'boundExpression', 'dateFormula', 'signedInteger', 'soqlId', 'soslLiteral', 
    'soslClauses', 'searchGroup', 'fieldSpecList', 'fieldSpec', 'fieldList', 
    'updateList', 'updateType', 'networkList', 'soslId', 'id', 'anyId'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'abstract'", "'after'", "'before'", "'break'", "'catch'", "'class'", 
      "'continue'", "'delete'", "'do'", "'else'", "'enum'", "'extends'", 
      "'final'", "'finally'", "'for'", "'get'", "'global'", "'if'", "'implements'", 
      "'inherited'", "'insert'", "'instanceof'", "'interface'", "'merge'", 
      "'new'", "'null'", "'on'", "'override'", "'private'", "'protected'", 
      "'public'", "'return'", "'system.runas'", "'set'", "'sharing'", "'static'", 
      "'super'", "'switch'", "'testmethod'", "'this'", "'throw'", "'transient'", 
      "'trigger'", "'try'", "'undelete'", "'update'", "'upsert'", "'virtual'", 
      "'void'", "'webservice'", "'when'", "'while'", "'with'", "'without'", 
      "'list'", "'map'", "'select'", "'count'", "'from'", "'as'", "'using'", 
      "'scope'", "'where'", "'order'", "'by'", "'limit'", "'and'", "'or'", 
      "'not'", "'avg'", "'count_distinct'", "'min'", "'max'", "'sum'", "'typeof'", 
      "'end'", "'then'", "'like'", "'in'", "'includes'", "'excludes'", "'asc'", 
      "'desc'", "'nulls'", "'first'", "'last'", "'group'", "'all'", "'rows'", 
      "'view'", "'having'", "'rollup'", "'tolabel'", "'offset'", "'data'", 
      "'category'", "'at'", "'above'", "'below'", "'above_or_below'", "'security_enforced'", 
      "'reference'", "'cube'", "'format'", "'tracking'", "'viewstat'", "'custom'", 
      "'standard'", "'calendar_month'", "'calendar_quarter'", "'calendar_year'", 
      "'day_in_month'", "'day_in_week'", "'day_in_year'", "'day_only'", 
      "'fiscal_month'", "'fiscal_quarter'", "'fiscal_year'", "'hour_in_day'", 
      "'week_in_month'", "'week_in_year'", "'converttimezone'", "'yesterday'", 
      "'today'", "'tomorrow'", "'last_week'", "'this_week'", "'next_week'", 
      "'last_month'", "'this_month'", "'next_month'", "'last_90_days'", 
      "'next_90_days'", "'last_n_days'", "'next_n_days'", "'next_n_weeks'", 
      "'last_n_weeks'", "'next_n_months'", "'last_n_months'", "'this_quarter'", 
      "'last_quarted'", "'next_quarter'", "'next_n_quarters'", "'last_n_quarters'", 
      "'this_year'", "'last_year'", "'next_year'", "'next_n_years'", "'last_n_years'", 
      "'this_fiscal_quarter'", "'last_fiscal_quarter'", "'next_fiscal_quarter'", 
      "'next_n_fiscal_quarters'", "'last_n_fiscal_quarters'", "'this_fiscal_year'", 
      "'last_fiscal_year'", "'next_fiscal_year'", "'next_n_fiscal_years'", 
      "'last_n_fiscal_years'", null, null, null, "'find'", "'email'", "'name'", 
      "'phone'", "'sidebar'", "'fields'", "'metadata'", "'pricebookid'", 
      "'network'", "'snippet'", "'target_length'", "'division'", "'returning'", 
      "'listview'", null, null, null, null, null, null, null, "'('", "')'", 
      "'{'", "'}'", "'['", "']'", "';'", "','", "'.'", "'='", "'>'", "'<'", 
      "'!'", "'~'", "'?.'", "'?'", "':'", "'=='", "'==='", "'!='", "'<>'", 
      "'!=='", "'&&'", "'||'", "'++'", "'--'", "'+'", "'-'", "'*'", "'/'", 
      "'&'", "'|'", "'^'", "'%'", "'=>'", "'+='", "'-='", "'*='", "'/='", 
      "'&='", "'|='", "'^='", "'%='", "'<<='", "'>>='", "'>>>='", "'@'", 
      "'_'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "ABSTRACT", "AFTER", "BEFORE", "BREAK", "CATCH", "CLASS", "CONTINUE", 
      "DELETE", "DO", "ELSE", "ENUM", "EXTENDS", "FINAL", "FINALLY", "FOR", 
      "GET", "GLOBAL", "IF", "IMPLEMENTS", "INHERITED", "INSERT", "INSTANCEOF", 
      "INTERFACE", "MERGE", "NEW", "NULL", "ON", "OVERRIDE", "PRIVATE", 
      "PROTECTED", "PUBLIC", "RETURN", "SYSTEMRUNAS", "SET", "SHARING", 
      "STATIC", "SUPER", "SWITCH", "TESTMETHOD", "THIS", "THROW", "TRANSIENT", 
      "TRIGGER", "TRY", "UNDELETE", "UPDATE", "UPSERT", "VIRTUAL", "VOID", 
      "WEBSERVICE", "WHEN", "WHILE", "WITH", "WITHOUT", "LIST", "MAP", "SELECT", 
      "COUNT", "FROM", "AS", "USING", "SCOPE", "WHERE", "ORDER", "BY", "LIMIT", 
      "SOQLAND", "SOQLOR", "NOT", "AVG", "COUNT_DISTINCT", "MIN", "MAX", 
      "SUM", "TYPEOF", "END", "THEN", "LIKE", "IN", "INCLUDES", "EXCLUDES", 
      "ASC", "DESC", "NULLS", "FIRST", "LAST", "GROUP", "ALL", "ROWS", "VIEW", 
      "HAVING", "ROLLUP", "TOLABEL", "OFFSET", "DATA", "CATEGORY", "AT", 
      "ABOVE", "BELOW", "ABOVE_OR_BELOW", "SECURITY_ENFORCED", "REFERENCE", 
      "CUBE", "FORMAT", "TRACKING", "VIEWSTAT", "CUSTOM", "STANDARD", "CALENDAR_MONTH", 
      "CALENDAR_QUARTER", "CALENDAR_YEAR", "DAY_IN_MONTH", "DAY_IN_WEEK", 
      "DAY_IN_YEAR", "DAY_ONLY", "FISCAL_MONTH", "FISCAL_QUARTER", "FISCAL_YEAR", 
      "HOUR_IN_DAY", "WEEK_IN_MONTH", "WEEK_IN_YEAR", "CONVERT_TIMEZONE", 
      "YESTERDAY", "TODAY", "TOMORROW", "LAST_WEEK", "THIS_WEEK", "NEXT_WEEK", 
      "LAST_MONTH", "THIS_MONTH", "NEXT_MONTH", "LAST_90_DAYS", "NEXT_90_DAYS", 
      "LAST_N_DAYS_N", "NEXT_N_DAYS_N", "NEXT_N_WEEKS_N", "LAST_N_WEEKS_N", 
      "NEXT_N_MONTHS_N", "LAST_N_MONTHS_N", "THIS_QUARTER", "LAST_QUARTER", 
      "NEXT_QUARTER", "NEXT_N_QUARTERS_N", "LAST_N_QUARTERS_N", "THIS_YEAR", 
      "LAST_YEAR", "NEXT_YEAR", "NEXT_N_YEARS_N", "LAST_N_YEARS_N", "THIS_FISCAL_QUARTER", 
      "LAST_FISCAL_QUARTER", "NEXT_FISCAL_QUARTER", "NEXT_N_FISCAL_QUARTERS_N", 
      "LAST_N_FISCAL_QUARTERS_N", "THIS_FISCAL_YEAR", "LAST_FISCAL_YEAR", 
      "NEXT_FISCAL_YEAR", "NEXT_N_FISCAL_YEARS_N", "LAST_N_FISCAL_YEARS_N", 
      "DateLiteral", "DateTimeLiteral", "IntegralCurrencyLiteral", "FIND", 
      "EMAIL", "NAME", "PHONE", "SIDEBAR", "FIELDS", "METADATA", "PRICEBOOKID", 
      "NETWORK", "SNIPPET", "TARGET_LENGTH", "DIVISION", "RETURNING", "LISTVIEW", 
      "FindLiteral", "IntegerLiteral", "LongLiteral", "NumberLiteral", "BooleanLiteral", 
      "StringLiteral", "NullLiteral", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
      "LBRACK", "RBRACK", "SEMI", "COMMA", "DOT", "ASSIGN", "GT", "LT", 
      "BANG", "TILDE", "QUESTIONDOT", "QUESTION", "COLON", "EQUAL", "TRIPLEEQUAL", 
      "NOTEQUAL", "LESSANDGREATER", "TRIPLENOTEQUAL", "AND", "OR", "INC", 
      "DEC", "ADD", "SUB", "MUL", "DIV", "BITAND", "BITOR", "CARET", "MOD", 
      "MAPTO", "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", "DIV_ASSIGN", "AND_ASSIGN", 
      "OR_ASSIGN", "XOR_ASSIGN", "MOD_ASSIGN", "LSHIFT_ASSIGN", "RSHIFT_ASSIGN", 
      "URSHIFT_ASSIGN", "ATSIGN", "UNDERSCORE", "Identifier", "START_GROUP_COMMENT", 
      "END_GROUP_COMMENT", "DOC_COMMENT", "WS", "COMMENT", "LINE_COMMENT"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

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
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  TriggerUnitContext triggerUnit() {
    dynamic _localctx = TriggerUnitContext(context, state);
    enterRule(_localctx, 0, RULE_triggerUnit);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 282;
      match(TOKEN_TRIGGER);
      state = 283;
      id();
      state = 284;
      match(TOKEN_ON);
      state = 285;
      id();
      state = 286;
      match(TOKEN_LPAREN);
      state = 287;
      triggerCase();
      state = 292;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 288;
        match(TOKEN_COMMA);
        state = 289;
        triggerCase();
        state = 294;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 295;
      match(TOKEN_RPAREN);
      state = 296;
      block();
      state = 297;
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
      state = 299;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_AFTER || _la == TOKEN_BEFORE)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 300;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_DELETE) | (BigInt.one << TOKEN_INSERT) | (BigInt.one << TOKEN_UNDELETE) | (BigInt.one << TOKEN_UPDATE))) != BigInt.zero))) {
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

  CompilationUnitContext compilationUnit() {
    dynamic _localctx = CompilationUnitContext(context, state);
    enterRule(_localctx, 4, RULE_compilationUnit);
    try {
      enterOuterAlt(_localctx, 1);
      state = 302;
      typeDeclaration();
      state = 303;
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
      state = 335;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        _localctx = TypeClassDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 306;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOC_COMMENT) {
          state = 305;
          match(TOKEN_DOC_COMMENT);
        }

        state = 311;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT))) != BigInt.zero) || _la == TOKEN_ATSIGN) {
          state = 308;
          modifier();
          state = 313;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 314;
        classDeclaration();
        break;
      case 2:
        _localctx = TypeEnumDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 316;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOC_COMMENT) {
          state = 315;
          match(TOKEN_DOC_COMMENT);
        }

        state = 321;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT))) != BigInt.zero) || _la == TOKEN_ATSIGN) {
          state = 318;
          modifier();
          state = 323;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 324;
        enumDeclaration();
        break;
      case 3:
        _localctx = TypeInterfaceDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 326;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOC_COMMENT) {
          state = 325;
          match(TOKEN_DOC_COMMENT);
        }

        state = 331;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT))) != BigInt.zero) || _la == TOKEN_ATSIGN) {
          state = 328;
          modifier();
          state = 333;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 334;
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
      state = 337;
      match(TOKEN_CLASS);
      state = 338;
      id();
      state = 341;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 339;
        match(TOKEN_EXTENDS);
        state = 340;
        typeRef();
      }

      state = 345;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_IMPLEMENTS) {
        state = 343;
        match(TOKEN_IMPLEMENTS);
        state = 344;
        typeList();
      }

      state = 347;
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
      state = 349;
      match(TOKEN_ENUM);
      state = 350;
      id();
      state = 351;
      match(TOKEN_LBRACE);
      state = 353;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)))) != BigInt.zero) || _la == TOKEN_Identifier) {
        state = 352;
        enumConstants();
      }

      state = 355;
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
      state = 357;
      id();
      state = 362;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 358;
        match(TOKEN_COMMA);
        state = 359;
        id();
        state = 364;
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

  InterfaceDeclarationContext interfaceDeclaration() {
    dynamic _localctx = InterfaceDeclarationContext(context, state);
    enterRule(_localctx, 14, RULE_interfaceDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 365;
      match(TOKEN_INTERFACE);
      state = 366;
      id();
      state = 369;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 367;
        match(TOKEN_EXTENDS);
        state = 368;
        typeList();
      }

      state = 371;
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
      state = 373;
      typeRef();
      state = 378;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 374;
        match(TOKEN_COMMA);
        state = 375;
        typeRef();
        state = 380;
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

  ClassBodyContext classBody() {
    dynamic _localctx = ClassBodyContext(context, state);
    enterRule(_localctx, 18, RULE_classBody);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 381;
      match(TOKEN_LBRACE);
      state = 386;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_CLASS) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_INTERFACE) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_LBRACE - 128)) | (BigInt.one << (TOKEN_SEMI - 128)))) != BigInt.zero) || ((((_la - 230)) & ~0x3f) == 0 && ((BigInt.one << (_la - 230)) & ((BigInt.one << (TOKEN_ATSIGN - 230)) | (BigInt.one << (TOKEN_Identifier - 230)) | (BigInt.one << (TOKEN_START_GROUP_COMMENT - 230)) | (BigInt.one << (TOKEN_DOC_COMMENT - 230)))) != BigInt.zero)) {
        state = 384;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_START_GROUP_COMMENT:
          state = 382;
          groupedDeclarations();
          break;
        case TOKEN_ABSTRACT:
        case TOKEN_AFTER:
        case TOKEN_BEFORE:
        case TOKEN_CLASS:
        case TOKEN_ENUM:
        case TOKEN_FINAL:
        case TOKEN_GET:
        case TOKEN_GLOBAL:
        case TOKEN_INHERITED:
        case TOKEN_INSTANCEOF:
        case TOKEN_INTERFACE:
        case TOKEN_OVERRIDE:
        case TOKEN_PRIVATE:
        case TOKEN_PROTECTED:
        case TOKEN_PUBLIC:
        case TOKEN_SET:
        case TOKEN_SHARING:
        case TOKEN_STATIC:
        case TOKEN_SWITCH:
        case TOKEN_TESTMETHOD:
        case TOKEN_TRANSIENT:
        case TOKEN_TRIGGER:
        case TOKEN_VIRTUAL:
        case TOKEN_VOID:
        case TOKEN_WEBSERVICE:
        case TOKEN_WHEN:
        case TOKEN_WITH:
        case TOKEN_WITHOUT:
        case TOKEN_LIST:
        case TOKEN_MAP:
        case TOKEN_SELECT:
        case TOKEN_COUNT:
        case TOKEN_FROM:
        case TOKEN_AS:
        case TOKEN_USING:
        case TOKEN_SCOPE:
        case TOKEN_WHERE:
        case TOKEN_ORDER:
        case TOKEN_BY:
        case TOKEN_LIMIT:
        case TOKEN_SOQLAND:
        case TOKEN_SOQLOR:
        case TOKEN_NOT:
        case TOKEN_AVG:
        case TOKEN_COUNT_DISTINCT:
        case TOKEN_MIN:
        case TOKEN_MAX:
        case TOKEN_SUM:
        case TOKEN_TYPEOF:
        case TOKEN_END:
        case TOKEN_THEN:
        case TOKEN_LIKE:
        case TOKEN_IN:
        case TOKEN_INCLUDES:
        case TOKEN_EXCLUDES:
        case TOKEN_ASC:
        case TOKEN_DESC:
        case TOKEN_NULLS:
        case TOKEN_FIRST:
        case TOKEN_LAST:
        case TOKEN_GROUP:
        case TOKEN_ALL:
        case TOKEN_ROWS:
        case TOKEN_VIEW:
        case TOKEN_HAVING:
        case TOKEN_ROLLUP:
        case TOKEN_TOLABEL:
        case TOKEN_OFFSET:
        case TOKEN_DATA:
        case TOKEN_CATEGORY:
        case TOKEN_AT:
        case TOKEN_ABOVE:
        case TOKEN_BELOW:
        case TOKEN_ABOVE_OR_BELOW:
        case TOKEN_SECURITY_ENFORCED:
        case TOKEN_REFERENCE:
        case TOKEN_CUBE:
        case TOKEN_FORMAT:
        case TOKEN_TRACKING:
        case TOKEN_VIEWSTAT:
        case TOKEN_CUSTOM:
        case TOKEN_STANDARD:
        case TOKEN_CALENDAR_MONTH:
        case TOKEN_CALENDAR_QUARTER:
        case TOKEN_CALENDAR_YEAR:
        case TOKEN_DAY_IN_MONTH:
        case TOKEN_DAY_IN_WEEK:
        case TOKEN_DAY_IN_YEAR:
        case TOKEN_DAY_ONLY:
        case TOKEN_FISCAL_MONTH:
        case TOKEN_FISCAL_QUARTER:
        case TOKEN_FISCAL_YEAR:
        case TOKEN_HOUR_IN_DAY:
        case TOKEN_WEEK_IN_MONTH:
        case TOKEN_WEEK_IN_YEAR:
        case TOKEN_CONVERT_TIMEZONE:
        case TOKEN_YESTERDAY:
        case TOKEN_TODAY:
        case TOKEN_TOMORROW:
        case TOKEN_LAST_WEEK:
        case TOKEN_THIS_WEEK:
        case TOKEN_NEXT_WEEK:
        case TOKEN_LAST_MONTH:
        case TOKEN_THIS_MONTH:
        case TOKEN_NEXT_MONTH:
        case TOKEN_LAST_90_DAYS:
        case TOKEN_NEXT_90_DAYS:
        case TOKEN_LAST_N_DAYS_N:
        case TOKEN_NEXT_N_DAYS_N:
        case TOKEN_NEXT_N_WEEKS_N:
        case TOKEN_LAST_N_WEEKS_N:
        case TOKEN_NEXT_N_MONTHS_N:
        case TOKEN_LAST_N_MONTHS_N:
        case TOKEN_THIS_QUARTER:
        case TOKEN_LAST_QUARTER:
        case TOKEN_NEXT_QUARTER:
        case TOKEN_NEXT_N_QUARTERS_N:
        case TOKEN_LAST_N_QUARTERS_N:
        case TOKEN_THIS_YEAR:
        case TOKEN_LAST_YEAR:
        case TOKEN_NEXT_YEAR:
        case TOKEN_NEXT_N_YEARS_N:
        case TOKEN_LAST_N_YEARS_N:
        case TOKEN_THIS_FISCAL_QUARTER:
        case TOKEN_LAST_FISCAL_QUARTER:
        case TOKEN_NEXT_FISCAL_QUARTER:
        case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
        case TOKEN_LAST_N_FISCAL_QUARTERS_N:
        case TOKEN_THIS_FISCAL_YEAR:
        case TOKEN_LAST_FISCAL_YEAR:
        case TOKEN_NEXT_FISCAL_YEAR:
        case TOKEN_NEXT_N_FISCAL_YEARS_N:
        case TOKEN_LAST_N_FISCAL_YEARS_N:
        case TOKEN_IntegralCurrencyLiteral:
        case TOKEN_FIND:
        case TOKEN_EMAIL:
        case TOKEN_NAME:
        case TOKEN_PHONE:
        case TOKEN_SIDEBAR:
        case TOKEN_FIELDS:
        case TOKEN_METADATA:
        case TOKEN_PRICEBOOKID:
        case TOKEN_NETWORK:
        case TOKEN_SNIPPET:
        case TOKEN_TARGET_LENGTH:
        case TOKEN_DIVISION:
        case TOKEN_RETURNING:
        case TOKEN_LISTVIEW:
        case TOKEN_LBRACE:
        case TOKEN_SEMI:
        case TOKEN_ATSIGN:
        case TOKEN_Identifier:
        case TOKEN_DOC_COMMENT:
          state = 383;
          classBodyDeclaration();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 388;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 389;
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

  GroupedDeclarationsContext groupedDeclarations() {
    dynamic _localctx = GroupedDeclarationsContext(context, state);
    enterRule(_localctx, 20, RULE_groupedDeclarations);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 391;
      match(TOKEN_START_GROUP_COMMENT);
      state = 395;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_CLASS) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_INTERFACE) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_LBRACE - 128)) | (BigInt.one << (TOKEN_SEMI - 128)))) != BigInt.zero) || ((((_la - 230)) & ~0x3f) == 0 && ((BigInt.one << (_la - 230)) & ((BigInt.one << (TOKEN_ATSIGN - 230)) | (BigInt.one << (TOKEN_Identifier - 230)) | (BigInt.one << (TOKEN_DOC_COMMENT - 230)))) != BigInt.zero)) {
        state = 392;
        classBodyDeclaration();
        state = 397;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 398;
      match(TOKEN_END_GROUP_COMMENT);
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
    enterRule(_localctx, 22, RULE_interfaceBody);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 400;
      match(TOKEN_LBRACE);
      state = 404;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_VOID) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)))) != BigInt.zero) || ((((_la - 230)) & ~0x3f) == 0 && ((BigInt.one << (_la - 230)) & ((BigInt.one << (TOKEN_ATSIGN - 230)) | (BigInt.one << (TOKEN_Identifier - 230)) | (BigInt.one << (TOKEN_DOC_COMMENT - 230)))) != BigInt.zero)) {
        state = 401;
        interfaceMethodDeclaration();
        state = 406;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 407;
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
    enterRule(_localctx, 24, RULE_classBodyDeclaration);
    int _la;
    try {
      int _alt;
      state = 424;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 21, context)) {
      case 1:
        _localctx = EmptyClassBodyDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 409;
        match(TOKEN_SEMI);
        break;
      case 2:
        _localctx = StaticBlockClassBodyDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 411;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_STATIC) {
          state = 410;
          match(TOKEN_STATIC);
        }

        state = 413;
        block();
        break;
      case 3:
        _localctx = MemberClassBodyDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 415;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOC_COMMENT) {
          state = 414;
          match(TOKEN_DOC_COMMENT);
        }

        state = 420;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 417;
            modifier(); 
          }
          state = 422;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        }
        state = 423;
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
    enterRule(_localctx, 26, RULE_modifier);
    try {
      state = 445;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ATSIGN:
        enterOuterAlt(_localctx, 1);
        state = 426;
        annotation();
        break;
      case TOKEN_GLOBAL:
        enterOuterAlt(_localctx, 2);
        state = 427;
        match(TOKEN_GLOBAL);
        break;
      case TOKEN_PUBLIC:
        enterOuterAlt(_localctx, 3);
        state = 428;
        match(TOKEN_PUBLIC);
        break;
      case TOKEN_PROTECTED:
        enterOuterAlt(_localctx, 4);
        state = 429;
        match(TOKEN_PROTECTED);
        break;
      case TOKEN_PRIVATE:
        enterOuterAlt(_localctx, 5);
        state = 430;
        match(TOKEN_PRIVATE);
        break;
      case TOKEN_TRANSIENT:
        enterOuterAlt(_localctx, 6);
        state = 431;
        match(TOKEN_TRANSIENT);
        break;
      case TOKEN_STATIC:
        enterOuterAlt(_localctx, 7);
        state = 432;
        match(TOKEN_STATIC);
        break;
      case TOKEN_ABSTRACT:
        enterOuterAlt(_localctx, 8);
        state = 433;
        match(TOKEN_ABSTRACT);
        break;
      case TOKEN_FINAL:
        enterOuterAlt(_localctx, 9);
        state = 434;
        match(TOKEN_FINAL);
        break;
      case TOKEN_WEBSERVICE:
        enterOuterAlt(_localctx, 10);
        state = 435;
        match(TOKEN_WEBSERVICE);
        break;
      case TOKEN_OVERRIDE:
        enterOuterAlt(_localctx, 11);
        state = 436;
        match(TOKEN_OVERRIDE);
        break;
      case TOKEN_VIRTUAL:
        enterOuterAlt(_localctx, 12);
        state = 437;
        match(TOKEN_VIRTUAL);
        break;
      case TOKEN_TESTMETHOD:
        enterOuterAlt(_localctx, 13);
        state = 438;
        match(TOKEN_TESTMETHOD);
        break;
      case TOKEN_WITH:
        enterOuterAlt(_localctx, 14);
        state = 439;
        match(TOKEN_WITH);
        state = 440;
        match(TOKEN_SHARING);
        break;
      case TOKEN_WITHOUT:
        enterOuterAlt(_localctx, 15);
        state = 441;
        match(TOKEN_WITHOUT);
        state = 442;
        match(TOKEN_SHARING);
        break;
      case TOKEN_INHERITED:
        enterOuterAlt(_localctx, 16);
        state = 443;
        match(TOKEN_INHERITED);
        state = 444;
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
    enterRule(_localctx, 28, RULE_memberDeclaration);
    try {
      state = 454;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 23, context)) {
      case 1:
        _localctx = MethodMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 447;
        methodDeclaration();
        break;
      case 2:
        _localctx = FieldMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 448;
        fieldDeclaration();
        break;
      case 3:
        _localctx = ConstructorMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 449;
        constructorDeclaration();
        break;
      case 4:
        _localctx = InterfaceMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 450;
        interfaceDeclaration();
        break;
      case 5:
        _localctx = ClassMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 451;
        classDeclaration();
        break;
      case 6:
        _localctx = EnumMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 452;
        enumDeclaration();
        break;
      case 7:
        _localctx = PropertyMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 453;
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
    enterRule(_localctx, 30, RULE_methodDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 458;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_Identifier:
        state = 456;
        typeRef();
        break;
      case TOKEN_VOID:
        state = 457;
        match(TOKEN_VOID);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 460;
      id();
      state = 461;
      formalParameters();
      state = 464;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_LBRACE:
        state = 462;
        block();
        break;
      case TOKEN_SEMI:
        state = 463;
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
    enterRule(_localctx, 32, RULE_constructorDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 466;
      qualifiedName();
      state = 467;
      formalParameters();
      state = 468;
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
    enterRule(_localctx, 34, RULE_fieldDeclaration);
    try {
      enterOuterAlt(_localctx, 1);
      state = 470;
      typeRef();
      state = 471;
      variableDeclarators();
      state = 472;
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
    enterRule(_localctx, 36, RULE_propertyDeclaration);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 474;
      typeRef();
      state = 475;
      id();
      state = 476;
      match(TOKEN_LBRACE);
      state = 480;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT))) != BigInt.zero) || _la == TOKEN_ATSIGN) {
        state = 477;
        propertyBlock();
        state = 482;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 483;
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
    enterRule(_localctx, 38, RULE_interfaceMethodDeclaration);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 486;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_DOC_COMMENT) {
        state = 485;
        match(TOKEN_DOC_COMMENT);
      }

      state = 491;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 488;
          modifier(); 
        }
        state = 493;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      }
      state = 496;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_Identifier:
        state = 494;
        typeRef();
        break;
      case TOKEN_VOID:
        state = 495;
        match(TOKEN_VOID);
        break;
      default:
        throw NoViableAltException(this);
      }
      state = 498;
      id();
      state = 499;
      formalParameters();
      state = 500;
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
    enterRule(_localctx, 40, RULE_variableDeclarators);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 502;
      variableDeclarator();
      state = 507;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 503;
        match(TOKEN_COMMA);
        state = 504;
        variableDeclarator();
        state = 509;
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

  VariableDeclaratorContext variableDeclarator() {
    dynamic _localctx = VariableDeclaratorContext(context, state);
    enterRule(_localctx, 42, RULE_variableDeclarator);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 510;
      id();
      state = 513;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ASSIGN) {
        state = 511;
        match(TOKEN_ASSIGN);
        state = 512;
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
    enterRule(_localctx, 44, RULE_arrayInitializer);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 515;
      match(TOKEN_LBRACE);
      state = 527;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 516;
        expression(0);
        state = 521;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 517;
            match(TOKEN_COMMA);
            state = 518;
            expression(0); 
          }
          state = 523;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 32, context);
        }
        state = 525;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 524;
          match(TOKEN_COMMA);
        }

      }

      state = 529;
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
    enterRule(_localctx, 46, RULE_typeRef);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 531;
      typeName();
      state = 536;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 35, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 532;
          match(TOKEN_DOT);
          state = 533;
          typeName(); 
        }
        state = 538;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 35, context);
      }
      state = 539;
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
    enterRule(_localctx, 48, RULE_arraySubscripts);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 545;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 541;
          match(TOKEN_LBRACK);
          state = 542;
          match(TOKEN_RBRACK); 
        }
        state = 547;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
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
    enterRule(_localctx, 50, RULE_typeName);
    try {
      state = 564;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 41, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 548;
        match(TOKEN_LIST);
        state = 550;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 37, context)) {
        case 1:
          state = 549;
          typeArguments();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 552;
        match(TOKEN_SET);
        state = 554;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
        case 1:
          state = 553;
          typeArguments();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 556;
        match(TOKEN_MAP);
        state = 558;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
        case 1:
          state = 557;
          typeArguments();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 560;
        id();
        state = 562;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
        case 1:
          state = 561;
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
    enterRule(_localctx, 52, RULE_typeArguments);
    try {
      enterOuterAlt(_localctx, 1);
      state = 566;
      match(TOKEN_LT);
      state = 567;
      typeList();
      state = 568;
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
    enterRule(_localctx, 54, RULE_formalParameters);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 570;
      match(TOKEN_LPAREN);
      state = 572;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)))) != BigInt.zero) || _la == TOKEN_ATSIGN || _la == TOKEN_Identifier) {
        state = 571;
        formalParameterList();
      }

      state = 574;
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
    enterRule(_localctx, 56, RULE_formalParameterList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 576;
      formalParameter();
      state = 581;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 577;
        match(TOKEN_COMMA);
        state = 578;
        formalParameter();
        state = 583;
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

  FormalParameterContext formalParameter() {
    dynamic _localctx = FormalParameterContext(context, state);
    enterRule(_localctx, 58, RULE_formalParameter);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 587;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 44, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 584;
          modifier(); 
        }
        state = 589;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 44, context);
      }
      state = 590;
      typeRef();
      state = 591;
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
    enterRule(_localctx, 60, RULE_qualifiedName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 593;
      id();
      state = 598;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 594;
        match(TOKEN_DOT);
        state = 595;
        id();
        state = 600;
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

  LiteralContext literal() {
    dynamic _localctx = LiteralContext(context, state);
    enterRule(_localctx, 62, RULE_literal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 601;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_NULL || ((((_la - 178)) & ~0x3f) == 0 && ((BigInt.one << (_la - 178)) & ((BigInt.one << (TOKEN_IntegerLiteral - 178)) | (BigInt.one << (TOKEN_LongLiteral - 178)) | (BigInt.one << (TOKEN_NumberLiteral - 178)) | (BigInt.one << (TOKEN_BooleanLiteral - 178)) | (BigInt.one << (TOKEN_StringLiteral - 178)))) != BigInt.zero))) {
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

  AnnotationContext annotation() {
    dynamic _localctx = AnnotationContext(context, state);
    enterRule(_localctx, 64, RULE_annotation);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 603;
      match(TOKEN_ATSIGN);
      state = 604;
      qualifiedName();
      state = 611;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LPAREN) {
        state = 605;
        match(TOKEN_LPAREN);
        state = 608;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 46, context)) {
        case 1:
          state = 606;
          elementValuePairs();
          break;
        case 2:
          state = 607;
          elementValue();
          break;
        }
        state = 610;
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
    enterRule(_localctx, 66, RULE_elementValuePairs);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 613;
      elementValuePair();
      state = 620;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_COMMA - 128)))) != BigInt.zero) || _la == TOKEN_Identifier) {
        state = 615;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 614;
          match(TOKEN_COMMA);
        }

        state = 617;
        elementValuePair();
        state = 622;
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

  ElementValuePairContext elementValuePair() {
    dynamic _localctx = ElementValuePairContext(context, state);
    enterRule(_localctx, 68, RULE_elementValuePair);
    try {
      enterOuterAlt(_localctx, 1);
      state = 623;
      id();
      state = 624;
      match(TOKEN_ASSIGN);
      state = 625;
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
    enterRule(_localctx, 70, RULE_elementValue);
    try {
      state = 630;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_FindLiteral:
      case TOKEN_IntegerLiteral:
      case TOKEN_LongLiteral:
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
        state = 627;
        expression(0);
        break;
      case TOKEN_ATSIGN:
        enterOuterAlt(_localctx, 2);
        state = 628;
        annotation();
        break;
      case TOKEN_LBRACE:
        enterOuterAlt(_localctx, 3);
        state = 629;
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
    enterRule(_localctx, 72, RULE_elementValueArrayInitializer);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 632;
      match(TOKEN_LBRACE);
      state = 641;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACE - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_ATSIGN - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 633;
        elementValue();
        state = 638;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 634;
            match(TOKEN_COMMA);
            state = 635;
            elementValue(); 
          }
          state = 640;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 51, context);
        }
      }

      state = 644;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMA) {
        state = 643;
        match(TOKEN_COMMA);
      }

      state = 646;
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
    enterRule(_localctx, 74, RULE_block);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 648;
      match(TOKEN_LBRACE);
      state = 652;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_BREAK) | (BigInt.one << TOKEN_CONTINUE) | (BigInt.one << TOKEN_DELETE) | (BigInt.one << TOKEN_DO) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_FOR) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_IF) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSERT) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_MERGE) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_SYSTEMRUNAS) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_THROW) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_TRY) | (BigInt.one << TOKEN_UNDELETE) | (BigInt.one << TOKEN_UPDATE) | (BigInt.one << TOKEN_UPSERT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WHILE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACE - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_ATSIGN - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 649;
        statement();
        state = 654;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 655;
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
    dynamic _localctx = LocalVariableDeclarationStatementContext(context, state);
    enterRule(_localctx, 76, RULE_localVariableDeclarationStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 657;
      localVariableDeclaration();
      state = 658;
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
    enterRule(_localctx, 78, RULE_localVariableDeclaration);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 663;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 660;
          modifier(); 
        }
        state = 665;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 55, context);
      }
      state = 666;
      typeRef();
      state = 667;
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
    enterRule(_localctx, 80, RULE_statement);
    try {
      state = 689;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 56, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 669;
        block();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 670;
        ifStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 671;
        switchStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 672;
        forStatement();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 673;
        whileStatement();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 674;
        doWhileStatement();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 675;
        tryStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 676;
        returnStatement();
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 677;
        throwStatement();
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 678;
        breakStatement();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 679;
        continueStatement();
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 680;
        insertStatement();
        break;
      case 13:
        enterOuterAlt(_localctx, 13);
        state = 681;
        updateStatement();
        break;
      case 14:
        enterOuterAlt(_localctx, 14);
        state = 682;
        deleteStatement();
        break;
      case 15:
        enterOuterAlt(_localctx, 15);
        state = 683;
        undeleteStatement();
        break;
      case 16:
        enterOuterAlt(_localctx, 16);
        state = 684;
        upsertStatement();
        break;
      case 17:
        enterOuterAlt(_localctx, 17);
        state = 685;
        mergeStatement();
        break;
      case 18:
        enterOuterAlt(_localctx, 18);
        state = 686;
        runAsStatement();
        break;
      case 19:
        enterOuterAlt(_localctx, 19);
        state = 687;
        localVariableDeclarationStatement();
        break;
      case 20:
        enterOuterAlt(_localctx, 20);
        state = 688;
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
    enterRule(_localctx, 82, RULE_ifStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 691;
      match(TOKEN_IF);
      state = 692;
      parExpression();
      state = 693;
      statement();
      state = 696;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
      case 1:
        state = 694;
        match(TOKEN_ELSE);
        state = 695;
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
    enterRule(_localctx, 84, RULE_switchStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 698;
      match(TOKEN_SWITCH);
      state = 699;
      match(TOKEN_ON);
      state = 700;
      expression(0);
      state = 701;
      match(TOKEN_LBRACE);
      state = 703; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 702;
        whenControl();
        state = 705; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_WHEN);
      state = 707;
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
    enterRule(_localctx, 86, RULE_whenControl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 709;
      match(TOKEN_WHEN);
      state = 710;
      whenValue();
      state = 711;
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
    enterRule(_localctx, 88, RULE_whenValue);
    int _la;
    try {
      state = 725;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 60, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 713;
        match(TOKEN_ELSE);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 714;
        whenLiteral();
        state = 719;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 715;
          match(TOKEN_COMMA);
          state = 716;
          whenLiteral();
          state = 721;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 722;
        id();
        state = 723;
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
    enterRule(_localctx, 90, RULE_whenLiteral);
    int _la;
    try {
      state = 735;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_IntegerLiteral:
      case TOKEN_SUB:
        enterOuterAlt(_localctx, 1);
        state = 728;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SUB) {
          state = 727;
          match(TOKEN_SUB);
        }

        state = 730;
        match(TOKEN_IntegerLiteral);
        break;
      case TOKEN_LongLiteral:
        enterOuterAlt(_localctx, 2);
        state = 731;
        match(TOKEN_LongLiteral);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 732;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_NULL:
        enterOuterAlt(_localctx, 4);
        state = 733;
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 5);
        state = 734;
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
    enterRule(_localctx, 92, RULE_forStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 737;
      match(TOKEN_FOR);
      state = 738;
      match(TOKEN_LPAREN);
      state = 739;
      forControl();
      state = 740;
      match(TOKEN_RPAREN);
      state = 741;
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
    enterRule(_localctx, 94, RULE_whileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 743;
      match(TOKEN_WHILE);
      state = 744;
      parExpression();
      state = 745;
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
    enterRule(_localctx, 96, RULE_doWhileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 747;
      match(TOKEN_DO);
      state = 748;
      statement();
      state = 749;
      match(TOKEN_WHILE);
      state = 750;
      parExpression();
      state = 751;
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
    enterRule(_localctx, 98, RULE_tryStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 753;
      match(TOKEN_TRY);
      state = 754;
      block();
      state = 764;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_CATCH:
        state = 756; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 755;
          catchClause();
          state = 758; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_CATCH);
        state = 761;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_FINALLY) {
          state = 760;
          finallyBlock();
        }

        break;
      case TOKEN_FINALLY:
        state = 763;
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
    enterRule(_localctx, 100, RULE_returnStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 766;
      match(TOKEN_RETURN);
      state = 768;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 767;
        expression(0);
      }

      state = 770;
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
    enterRule(_localctx, 102, RULE_throwStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 772;
      match(TOKEN_THROW);
      state = 773;
      expression(0);
      state = 774;
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
    enterRule(_localctx, 104, RULE_breakStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 776;
      match(TOKEN_BREAK);
      state = 777;
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
    enterRule(_localctx, 106, RULE_continueStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 779;
      match(TOKEN_CONTINUE);
      state = 780;
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
    enterRule(_localctx, 108, RULE_insertStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 782;
      match(TOKEN_INSERT);
      state = 783;
      expression(0);
      state = 784;
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
    enterRule(_localctx, 110, RULE_updateStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 786;
      match(TOKEN_UPDATE);
      state = 787;
      expression(0);
      state = 788;
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
    enterRule(_localctx, 112, RULE_deleteStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 790;
      match(TOKEN_DELETE);
      state = 791;
      expression(0);
      state = 792;
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
    enterRule(_localctx, 114, RULE_undeleteStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 794;
      match(TOKEN_UNDELETE);
      state = 795;
      expression(0);
      state = 796;
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
    enterRule(_localctx, 116, RULE_upsertStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 798;
      match(TOKEN_UPSERT);
      state = 799;
      expression(0);
      state = 801;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)))) != BigInt.zero) || _la == TOKEN_Identifier) {
        state = 800;
        qualifiedName();
      }

      state = 803;
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
    enterRule(_localctx, 118, RULE_mergeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 805;
      match(TOKEN_MERGE);
      state = 806;
      expression(0);
      state = 807;
      expression(0);
      state = 808;
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
    enterRule(_localctx, 120, RULE_runAsStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 810;
      match(TOKEN_SYSTEMRUNAS);
      state = 811;
      match(TOKEN_LPAREN);
      state = 813;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 812;
        expressionList();
      }

      state = 815;
      match(TOKEN_RPAREN);
      state = 816;
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
    enterRule(_localctx, 122, RULE_expressionStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 818;
      expression(0);
      state = 819;
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
    enterRule(_localctx, 124, RULE_propertyBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 824;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT))) != BigInt.zero) || _la == TOKEN_ATSIGN) {
        state = 821;
        modifier();
        state = 826;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 829;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_GET:
        state = 827;
        getter();
        break;
      case TOKEN_SET:
        state = 828;
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
    enterRule(_localctx, 126, RULE_getter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 831;
      match(TOKEN_GET);
      state = 834;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_SEMI:
        state = 832;
        match(TOKEN_SEMI);
        break;
      case TOKEN_LBRACE:
        state = 833;
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
    enterRule(_localctx, 128, RULE_setter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 836;
      match(TOKEN_SET);
      state = 839;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_SEMI:
        state = 837;
        match(TOKEN_SEMI);
        break;
      case TOKEN_LBRACE:
        state = 838;
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
    enterRule(_localctx, 130, RULE_catchClause);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 841;
      match(TOKEN_CATCH);
      state = 842;
      match(TOKEN_LPAREN);
      state = 846;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 73, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 843;
          modifier(); 
        }
        state = 848;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 73, context);
      }
      state = 849;
      qualifiedName();
      state = 850;
      id();
      state = 851;
      match(TOKEN_RPAREN);
      state = 852;
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
    enterRule(_localctx, 132, RULE_finallyBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 854;
      match(TOKEN_FINALLY);
      state = 855;
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
    enterRule(_localctx, 134, RULE_forControl);
    int _la;
    try {
      state = 869;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 77, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 857;
        enhancedForControl();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 859;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_ATSIGN - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
          state = 858;
          forInit();
        }

        state = 861;
        match(TOKEN_SEMI);
        state = 863;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
          state = 862;
          expression(0);
        }

        state = 865;
        match(TOKEN_SEMI);
        state = 867;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
          state = 866;
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
    enterRule(_localctx, 136, RULE_forInit);
    try {
      state = 873;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 78, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 871;
        localVariableDeclaration();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 872;
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
    enterRule(_localctx, 138, RULE_enhancedForControl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 875;
      typeRef();
      state = 876;
      id();
      state = 877;
      match(TOKEN_COLON);
      state = 878;
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
    enterRule(_localctx, 140, RULE_forUpdate);
    try {
      enterOuterAlt(_localctx, 1);
      state = 880;
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
    enterRule(_localctx, 142, RULE_parExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 882;
      match(TOKEN_LPAREN);
      state = 883;
      expression(0);
      state = 884;
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
    enterRule(_localctx, 144, RULE_expressionList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 886;
      expression(0);
      state = 891;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 887;
        match(TOKEN_COMMA);
        state = 888;
        expression(0);
        state = 893;
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

  ExpressionContext expression([int _p = 0]) {
    final _parentctx = context;
    final _parentState = state;
    dynamic _localctx = ExpressionContext(context, _parentState);
    var _prevctx = _localctx;
    var _startState = 146;
    enterRecursionRule(_localctx, 146, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 912;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 80, context)) {
      case 1:
        _localctx = PrimaryExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 895;
        primary();
        break;
      case 2:
        _localctx = MethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 896;
        methodCall();
        break;
      case 3:
        _localctx = NewExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 897;
        match(TOKEN_NEW);
        state = 898;
        creator();
        break;
      case 4:
        _localctx = CastExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 899;
        match(TOKEN_LPAREN);
        state = 900;
        typeRef();
        state = 901;
        match(TOKEN_RPAREN);
        state = 902;
        expression(18);
        break;
      case 5:
        _localctx = SubExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 904;
        match(TOKEN_LPAREN);
        state = 905;
        expression(0);
        state = 906;
        match(TOKEN_RPAREN);
        break;
      case 6:
        _localctx = PreOpExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 908;
        _la = tokenStream.LA(1)!;
        if (!(((((_la - 208)) & ~0x3f) == 0 && ((BigInt.one << (_la - 208)) & ((BigInt.one << (TOKEN_INC - 208)) | (BigInt.one << (TOKEN_DEC - 208)) | (BigInt.one << (TOKEN_ADD - 208)) | (BigInt.one << (TOKEN_SUB - 208)))) != BigInt.zero))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 909;
        expression(15);
        break;
      case 7:
        _localctx = NegExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 910;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_BANG || _la == TOKEN_TILDE)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 911;
        expression(14);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 982;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 85, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 980;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 84, context)) {
          case 1:
            _localctx = Arth1ExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 914;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 915;
            _la = tokenStream.LA(1)!;
            if (!(((((_la - 212)) & ~0x3f) == 0 && ((BigInt.one << (_la - 212)) & ((BigInt.one << (TOKEN_MUL - 212)) | (BigInt.one << (TOKEN_DIV - 212)) | (BigInt.one << (TOKEN_MOD - 212)))) != BigInt.zero))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 916;
            expression(14);
            break;
          case 2:
            _localctx = Arth2ExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 917;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 918;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 919;
            expression(13);
            break;
          case 3:
            _localctx = BitExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 920;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 928;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 81, context)) {
            case 1:
              state = 921;
              match(TOKEN_LT);
              state = 922;
              match(TOKEN_LT);
              break;
            case 2:
              state = 923;
              match(TOKEN_GT);
              state = 924;
              match(TOKEN_GT);
              state = 925;
              match(TOKEN_GT);
              break;
            case 3:
              state = 926;
              match(TOKEN_GT);
              state = 927;
              match(TOKEN_GT);
              break;
            }
            state = 930;
            expression(12);
            break;
          case 4:
            _localctx = CmpExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 931;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 932;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_GT || _la == TOKEN_LT)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 934;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_ASSIGN) {
              state = 933;
              match(TOKEN_ASSIGN);
            }

            state = 936;
            expression(11);
            break;
          case 5:
            _localctx = EqualityExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 937;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 938;
            _la = tokenStream.LA(1)!;
            if (!(((((_la - 201)) & ~0x3f) == 0 && ((BigInt.one << (_la - 201)) & ((BigInt.one << (TOKEN_EQUAL - 201)) | (BigInt.one << (TOKEN_TRIPLEEQUAL - 201)) | (BigInt.one << (TOKEN_NOTEQUAL - 201)) | (BigInt.one << (TOKEN_LESSANDGREATER - 201)) | (BigInt.one << (TOKEN_TRIPLENOTEQUAL - 201)))) != BigInt.zero))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 939;
            expression(9);
            break;
          case 6:
            _localctx = BitAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 940;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 941;
            match(TOKEN_BITAND);
            state = 942;
            expression(8);
            break;
          case 7:
            _localctx = BitNotExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 943;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 944;
            match(TOKEN_CARET);
            state = 945;
            expression(7);
            break;
          case 8:
            _localctx = BitOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 946;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }
            state = 947;
            match(TOKEN_BITOR);
            state = 948;
            expression(6);
            break;
          case 9:
            _localctx = LogAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 949;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 950;
            match(TOKEN_AND);
            state = 951;
            expression(5);
            break;
          case 10:
            _localctx = LogOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 952;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 953;
            match(TOKEN_OR);
            state = 954;
            expression(4);
            break;
          case 11:
            _localctx = CondExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 955;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 956;
            match(TOKEN_QUESTION);
            state = 957;
            expression(0);
            state = 958;
            match(TOKEN_COLON);
            state = 959;
            expression(2);
            break;
          case 12:
            _localctx = AssignExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 961;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 962;
            _la = tokenStream.LA(1)!;
            if (!(((((_la - 193)) & ~0x3f) == 0 && ((BigInt.one << (_la - 193)) & ((BigInt.one << (TOKEN_ASSIGN - 193)) | (BigInt.one << (TOKEN_ADD_ASSIGN - 193)) | (BigInt.one << (TOKEN_SUB_ASSIGN - 193)) | (BigInt.one << (TOKEN_MUL_ASSIGN - 193)) | (BigInt.one << (TOKEN_DIV_ASSIGN - 193)) | (BigInt.one << (TOKEN_AND_ASSIGN - 193)) | (BigInt.one << (TOKEN_OR_ASSIGN - 193)) | (BigInt.one << (TOKEN_XOR_ASSIGN - 193)) | (BigInt.one << (TOKEN_MOD_ASSIGN - 193)) | (BigInt.one << (TOKEN_LSHIFT_ASSIGN - 193)) | (BigInt.one << (TOKEN_RSHIFT_ASSIGN - 193)) | (BigInt.one << (TOKEN_URSHIFT_ASSIGN - 193)))) != BigInt.zero))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 963;
            expression(1);
            break;
          case 13:
            _localctx = DotExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 964;
            if (!(precpred(context, 22))) {
              throw FailedPredicateException(this, "precpred(context, 22)");
            }
            state = 965;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_DOT || _la == TOKEN_QUESTIONDOT)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 968;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 83, context)) {
            case 1:
              state = 966;
              dotMethodCall();
              break;
            case 2:
              state = 967;
              anyId();
              break;
            }
            break;
          case 14:
            _localctx = ArrayExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 970;
            if (!(precpred(context, 21))) {
              throw FailedPredicateException(this, "precpred(context, 21)");
            }
            state = 971;
            match(TOKEN_LBRACK);
            state = 972;
            expression(0);
            state = 973;
            match(TOKEN_RBRACK);
            break;
          case 15:
            _localctx = PostOpExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 975;
            if (!(precpred(context, 16))) {
              throw FailedPredicateException(this, "precpred(context, 16)");
            }
            state = 976;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          case 16:
            _localctx = InstanceOfExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 977;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 978;
            match(TOKEN_INSTANCEOF);
            state = 979;
            typeRef();
            break;
          } 
        }
        state = 984;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 85, context);
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
    enterRule(_localctx, 148, RULE_primary);
    try {
      state = 995;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 86, context)) {
      case 1:
        _localctx = ThisPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 985;
        match(TOKEN_THIS);
        break;
      case 2:
        _localctx = SuperPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 986;
        match(TOKEN_SUPER);
        break;
      case 3:
        _localctx = LiteralPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 987;
        literal();
        break;
      case 4:
        _localctx = TypeRefPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 988;
        typeRef();
        state = 989;
        match(TOKEN_DOT);
        state = 990;
        match(TOKEN_CLASS);
        break;
      case 5:
        _localctx = IdPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 992;
        id();
        break;
      case 6:
        _localctx = SoqlPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 993;
        soqlLiteral();
        break;
      case 7:
        _localctx = SoslPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 994;
        soslLiteral();
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
    enterRule(_localctx, 150, RULE_methodCall);
    int _la;
    try {
      state = 1016;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 997;
        id();
        state = 998;
        match(TOKEN_LPAREN);
        state = 1000;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
          state = 999;
          expressionList();
        }

        state = 1002;
        match(TOKEN_RPAREN);
        break;
      case TOKEN_THIS:
        enterOuterAlt(_localctx, 2);
        state = 1004;
        match(TOKEN_THIS);
        state = 1005;
        match(TOKEN_LPAREN);
        state = 1007;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
          state = 1006;
          expressionList();
        }

        state = 1009;
        match(TOKEN_RPAREN);
        break;
      case TOKEN_SUPER:
        enterOuterAlt(_localctx, 3);
        state = 1010;
        match(TOKEN_SUPER);
        state = 1011;
        match(TOKEN_LPAREN);
        state = 1013;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
          state = 1012;
          expressionList();
        }

        state = 1015;
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
    enterRule(_localctx, 152, RULE_dotMethodCall);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1018;
      anyId();
      state = 1019;
      match(TOKEN_LPAREN);
      state = 1021;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 1020;
        expressionList();
      }

      state = 1023;
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
    enterRule(_localctx, 154, RULE_creator);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1025;
      createdName();
      state = 1031;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
      case 1:
        state = 1026;
        noRest();
        break;
      case 2:
        state = 1027;
        classCreatorRest();
        break;
      case 3:
        state = 1028;
        arrayCreatorRest();
        break;
      case 4:
        state = 1029;
        mapCreatorRest();
        break;
      case 5:
        state = 1030;
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
    enterRule(_localctx, 156, RULE_createdName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1033;
      idCreatedNamePair();
      state = 1038;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 1034;
        match(TOKEN_DOT);
        state = 1035;
        idCreatedNamePair();
        state = 1040;
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

  IdCreatedNamePairContext idCreatedNamePair() {
    dynamic _localctx = IdCreatedNamePairContext(context, state);
    enterRule(_localctx, 158, RULE_idCreatedNamePair);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1041;
      anyId();
      state = 1046;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LT) {
        state = 1042;
        match(TOKEN_LT);
        state = 1043;
        typeList();
        state = 1044;
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
    enterRule(_localctx, 160, RULE_noRest);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1048;
      match(TOKEN_LBRACE);
      state = 1049;
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
    enterRule(_localctx, 162, RULE_classCreatorRest);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1051;
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
    enterRule(_localctx, 164, RULE_arrayCreatorRest);
    try {
      state = 1062;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 96, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1053;
        match(TOKEN_LBRACK);
        state = 1054;
        expression(0);
        state = 1055;
        match(TOKEN_RBRACK);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1057;
        match(TOKEN_LBRACK);
        state = 1058;
        match(TOKEN_RBRACK);
        state = 1060;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 95, context)) {
        case 1:
          state = 1059;
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
    enterRule(_localctx, 166, RULE_mapCreatorRest);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1064;
      match(TOKEN_LBRACE);
      state = 1065;
      mapCreatorRestPair();
      state = 1070;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1066;
        match(TOKEN_COMMA);
        state = 1067;
        mapCreatorRestPair();
        state = 1072;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1073;
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
    enterRule(_localctx, 168, RULE_mapCreatorRestPair);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1075;
      expression(0);
      state = 1076;
      match(TOKEN_MAPTO);
      state = 1077;
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
    enterRule(_localctx, 170, RULE_setCreatorRest);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1079;
      match(TOKEN_LBRACE);
      state = 1080;
      expression(0);
      state = 1085;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1081;
        match(TOKEN_COMMA);

        state = 1082;
        expression(0);
        state = 1087;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1088;
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
    enterRule(_localctx, 172, RULE_arguments);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1090;
      match(TOKEN_LPAREN);
      state = 1092;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)) | (BigInt.one << (TOKEN_FindLiteral - 128)) | (BigInt.one << (TOKEN_IntegerLiteral - 128)) | (BigInt.one << (TOKEN_LongLiteral - 128)) | (BigInt.one << (TOKEN_NumberLiteral - 128)) | (BigInt.one << (TOKEN_BooleanLiteral - 128)) | (BigInt.one << (TOKEN_StringLiteral - 128)) | (BigInt.one << (TOKEN_LPAREN - 128)) | (BigInt.one << (TOKEN_LBRACK - 128)))) != BigInt.zero) || ((((_la - 196)) & ~0x3f) == 0 && ((BigInt.one << (_la - 196)) & ((BigInt.one << (TOKEN_BANG - 196)) | (BigInt.one << (TOKEN_TILDE - 196)) | (BigInt.one << (TOKEN_INC - 196)) | (BigInt.one << (TOKEN_DEC - 196)) | (BigInt.one << (TOKEN_ADD - 196)) | (BigInt.one << (TOKEN_SUB - 196)) | (BigInt.one << (TOKEN_Identifier - 196)))) != BigInt.zero)) {
        state = 1091;
        expressionList();
      }

      state = 1094;
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
    enterRule(_localctx, 174, RULE_soqlLiteral);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1096;
      match(TOKEN_LBRACK);
      state = 1097;
      query();
      state = 1098;
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

  QueryContext query() {
    dynamic _localctx = QueryContext(context, state);
    enterRule(_localctx, 176, RULE_query);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1100;
      match(TOKEN_SELECT);
      state = 1101;
      selectList();
      state = 1102;
      match(TOKEN_FROM);
      state = 1103;
      fromNameList();
      state = 1105;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_USING) {
        state = 1104;
        usingScope();
      }

      state = 1108;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WHERE) {
        state = 1107;
        whereClause();
      }

      state = 1111;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WITH) {
        state = 1110;
        withClause();
      }

      state = 1114;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_GROUP) {
        state = 1113;
        groupByClause();
      }

      state = 1117;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ORDER) {
        state = 1116;
        orderByClause();
      }

      state = 1120;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LIMIT) {
        state = 1119;
        limitClause();
      }

      state = 1123;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_OFFSET) {
        state = 1122;
        offsetClause();
      }

      state = 1126;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ALL) {
        state = 1125;
        allRowsClause();
      }

      state = 1128;
      forClauses();
      state = 1131;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_UPDATE) {
        state = 1129;
        match(TOKEN_UPDATE);
        state = 1130;
        updateList();
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

  SubQueryContext subQuery() {
    dynamic _localctx = SubQueryContext(context, state);
    enterRule(_localctx, 178, RULE_subQuery);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1133;
      match(TOKEN_SELECT);
      state = 1134;
      subFieldList();
      state = 1135;
      match(TOKEN_FROM);
      state = 1136;
      fromNameList();
      state = 1138;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WHERE) {
        state = 1137;
        whereClause();
      }

      state = 1141;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ORDER) {
        state = 1140;
        orderByClause();
      }

      state = 1144;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LIMIT) {
        state = 1143;
        limitClause();
      }

      state = 1146;
      forClauses();
      state = 1149;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_UPDATE) {
        state = 1147;
        match(TOKEN_UPDATE);
        state = 1148;
        updateList();
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

  SelectListContext selectList() {
    dynamic _localctx = SelectListContext(context, state);
    enterRule(_localctx, 180, RULE_selectList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1151;
      selectEntry();
      state = 1156;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1152;
        match(TOKEN_COMMA);
        state = 1153;
        selectEntry();
        state = 1158;
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

  SelectEntryContext selectEntry() {
    dynamic _localctx = SelectEntryContext(context, state);
    enterRule(_localctx, 182, RULE_selectEntry);
    try {
      state = 1174;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 117, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1159;
        fieldName();
        state = 1161;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 114, context)) {
        case 1:
          state = 1160;
          soqlId();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1163;
        soqlFunction();
        state = 1165;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 115, context)) {
        case 1:
          state = 1164;
          soqlId();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1167;
        match(TOKEN_LPAREN);
        state = 1168;
        subQuery();
        state = 1169;
        match(TOKEN_RPAREN);
        state = 1171;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 116, context)) {
        case 1:
          state = 1170;
          soqlId();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1173;
        typeOf();
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

  FieldNameContext fieldName() {
    dynamic _localctx = FieldNameContext(context, state);
    enterRule(_localctx, 184, RULE_fieldName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1176;
      soqlId();
      state = 1181;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 1177;
        match(TOKEN_DOT);
        state = 1178;
        soqlId();
        state = 1183;
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

  FromNameListContext fromNameList() {
    dynamic _localctx = FromNameListContext(context, state);
    enterRule(_localctx, 186, RULE_fromNameList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1184;
      fieldName();
      state = 1186;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 119, context)) {
      case 1:
        state = 1185;
        soqlId();
        break;
      }
      state = 1195;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1188;
        match(TOKEN_COMMA);
        state = 1189;
        fieldName();
        state = 1191;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 120, context)) {
        case 1:
          state = 1190;
          soqlId();
          break;
        }
        state = 1197;
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

  SubFieldListContext subFieldList() {
    dynamic _localctx = SubFieldListContext(context, state);
    enterRule(_localctx, 188, RULE_subFieldList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1198;
      subFieldEntry();
      state = 1203;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1199;
        match(TOKEN_COMMA);
        state = 1200;
        subFieldEntry();
        state = 1205;
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

  SubFieldEntryContext subFieldEntry() {
    dynamic _localctx = SubFieldEntryContext(context, state);
    enterRule(_localctx, 190, RULE_subFieldEntry);
    try {
      state = 1214;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 125, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1206;
        fieldName();
        state = 1208;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 123, context)) {
        case 1:
          state = 1207;
          soqlId();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1210;
        soqlFunction();
        state = 1212;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 124, context)) {
        case 1:
          state = 1211;
          soqlId();
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

  SoqlFieldsParameterContext soqlFieldsParameter() {
    dynamic _localctx = SoqlFieldsParameterContext(context, state);
    enterRule(_localctx, 192, RULE_soqlFieldsParameter);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1216;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 88)) & ~0x3f) == 0 && ((BigInt.one << (_la - 88)) & ((BigInt.one << (TOKEN_ALL - 88)) | (BigInt.one << (TOKEN_CUSTOM - 88)) | (BigInt.one << (TOKEN_STANDARD - 88)))) != BigInt.zero))) {
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

  SoqlFunctionContext soqlFunction() {
    dynamic _localctx = SoqlFunctionContext(context, state);
    enterRule(_localctx, 194, RULE_soqlFunction);
    try {
      state = 1331;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 126, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1218;
        match(TOKEN_AVG);
        state = 1219;
        match(TOKEN_LPAREN);
        state = 1220;
        fieldName();
        state = 1221;
        match(TOKEN_RPAREN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1223;
        match(TOKEN_COUNT);
        state = 1224;
        match(TOKEN_LPAREN);
        state = 1225;
        match(TOKEN_RPAREN);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1226;
        match(TOKEN_COUNT);
        state = 1227;
        match(TOKEN_LPAREN);
        state = 1228;
        fieldName();
        state = 1229;
        match(TOKEN_RPAREN);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1231;
        match(TOKEN_COUNT_DISTINCT);
        state = 1232;
        match(TOKEN_LPAREN);
        state = 1233;
        fieldName();
        state = 1234;
        match(TOKEN_RPAREN);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1236;
        match(TOKEN_MIN);
        state = 1237;
        match(TOKEN_LPAREN);
        state = 1238;
        fieldName();
        state = 1239;
        match(TOKEN_RPAREN);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1241;
        match(TOKEN_MAX);
        state = 1242;
        match(TOKEN_LPAREN);
        state = 1243;
        fieldName();
        state = 1244;
        match(TOKEN_RPAREN);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1246;
        match(TOKEN_SUM);
        state = 1247;
        match(TOKEN_LPAREN);
        state = 1248;
        fieldName();
        state = 1249;
        match(TOKEN_RPAREN);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1251;
        match(TOKEN_TOLABEL);
        state = 1252;
        match(TOKEN_LPAREN);
        state = 1253;
        fieldName();
        state = 1254;
        match(TOKEN_RPAREN);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1256;
        match(TOKEN_FORMAT);
        state = 1257;
        match(TOKEN_LPAREN);
        state = 1258;
        fieldName();
        state = 1259;
        match(TOKEN_RPAREN);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1261;
        match(TOKEN_CALENDAR_MONTH);
        state = 1262;
        match(TOKEN_LPAREN);
        state = 1263;
        dateFieldName();
        state = 1264;
        match(TOKEN_RPAREN);
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1266;
        match(TOKEN_CALENDAR_QUARTER);
        state = 1267;
        match(TOKEN_LPAREN);
        state = 1268;
        dateFieldName();
        state = 1269;
        match(TOKEN_RPAREN);
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 1271;
        match(TOKEN_CALENDAR_YEAR);
        state = 1272;
        match(TOKEN_LPAREN);
        state = 1273;
        dateFieldName();
        state = 1274;
        match(TOKEN_RPAREN);
        break;
      case 13:
        enterOuterAlt(_localctx, 13);
        state = 1276;
        match(TOKEN_DAY_IN_MONTH);
        state = 1277;
        match(TOKEN_LPAREN);
        state = 1278;
        dateFieldName();
        state = 1279;
        match(TOKEN_RPAREN);
        break;
      case 14:
        enterOuterAlt(_localctx, 14);
        state = 1281;
        match(TOKEN_DAY_IN_WEEK);
        state = 1282;
        match(TOKEN_LPAREN);
        state = 1283;
        dateFieldName();
        state = 1284;
        match(TOKEN_RPAREN);
        break;
      case 15:
        enterOuterAlt(_localctx, 15);
        state = 1286;
        match(TOKEN_DAY_IN_YEAR);
        state = 1287;
        match(TOKEN_LPAREN);
        state = 1288;
        dateFieldName();
        state = 1289;
        match(TOKEN_RPAREN);
        break;
      case 16:
        enterOuterAlt(_localctx, 16);
        state = 1291;
        match(TOKEN_DAY_ONLY);
        state = 1292;
        match(TOKEN_LPAREN);
        state = 1293;
        dateFieldName();
        state = 1294;
        match(TOKEN_RPAREN);
        break;
      case 17:
        enterOuterAlt(_localctx, 17);
        state = 1296;
        match(TOKEN_FISCAL_MONTH);
        state = 1297;
        match(TOKEN_LPAREN);
        state = 1298;
        dateFieldName();
        state = 1299;
        match(TOKEN_RPAREN);
        break;
      case 18:
        enterOuterAlt(_localctx, 18);
        state = 1301;
        match(TOKEN_FISCAL_QUARTER);
        state = 1302;
        match(TOKEN_LPAREN);
        state = 1303;
        dateFieldName();
        state = 1304;
        match(TOKEN_RPAREN);
        break;
      case 19:
        enterOuterAlt(_localctx, 19);
        state = 1306;
        match(TOKEN_FISCAL_YEAR);
        state = 1307;
        match(TOKEN_LPAREN);
        state = 1308;
        dateFieldName();
        state = 1309;
        match(TOKEN_RPAREN);
        break;
      case 20:
        enterOuterAlt(_localctx, 20);
        state = 1311;
        match(TOKEN_HOUR_IN_DAY);
        state = 1312;
        match(TOKEN_LPAREN);
        state = 1313;
        dateFieldName();
        state = 1314;
        match(TOKEN_RPAREN);
        break;
      case 21:
        enterOuterAlt(_localctx, 21);
        state = 1316;
        match(TOKEN_WEEK_IN_MONTH);
        state = 1317;
        match(TOKEN_LPAREN);
        state = 1318;
        dateFieldName();
        state = 1319;
        match(TOKEN_RPAREN);
        break;
      case 22:
        enterOuterAlt(_localctx, 22);
        state = 1321;
        match(TOKEN_WEEK_IN_YEAR);
        state = 1322;
        match(TOKEN_LPAREN);
        state = 1323;
        dateFieldName();
        state = 1324;
        match(TOKEN_RPAREN);
        break;
      case 23:
        enterOuterAlt(_localctx, 23);
        state = 1326;
        match(TOKEN_FIELDS);
        state = 1327;
        match(TOKEN_LPAREN);
        state = 1328;
        soqlFieldsParameter();
        state = 1329;
        match(TOKEN_RPAREN);
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

  DateFieldNameContext dateFieldName() {
    dynamic _localctx = DateFieldNameContext(context, state);
    enterRule(_localctx, 196, RULE_dateFieldName);
    try {
      state = 1339;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 127, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1333;
        match(TOKEN_CONVERT_TIMEZONE);
        state = 1334;
        match(TOKEN_LPAREN);
        state = 1335;
        fieldName();
        state = 1336;
        match(TOKEN_RPAREN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1338;
        fieldName();
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

  TypeOfContext typeOf() {
    dynamic _localctx = TypeOfContext(context, state);
    enterRule(_localctx, 198, RULE_typeOf);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1341;
      match(TOKEN_TYPEOF);
      state = 1342;
      fieldName();
      state = 1344; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 1343;
        whenClause();
        state = 1346; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_WHEN);
      state = 1349;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 1348;
        elseClause();
      }

      state = 1351;
      match(TOKEN_END);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhenClauseContext whenClause() {
    dynamic _localctx = WhenClauseContext(context, state);
    enterRule(_localctx, 200, RULE_whenClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1353;
      match(TOKEN_WHEN);
      state = 1354;
      fieldName();
      state = 1355;
      match(TOKEN_THEN);
      state = 1356;
      fieldNameList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ElseClauseContext elseClause() {
    dynamic _localctx = ElseClauseContext(context, state);
    enterRule(_localctx, 202, RULE_elseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1358;
      match(TOKEN_ELSE);
      state = 1359;
      fieldNameList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldNameListContext fieldNameList() {
    dynamic _localctx = FieldNameListContext(context, state);
    enterRule(_localctx, 204, RULE_fieldNameList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1361;
      fieldName();
      state = 1366;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1362;
        match(TOKEN_COMMA);
        state = 1363;
        fieldName();
        state = 1368;
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

  UsingScopeContext usingScope() {
    dynamic _localctx = UsingScopeContext(context, state);
    enterRule(_localctx, 206, RULE_usingScope);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1369;
      match(TOKEN_USING);
      state = 1370;
      match(TOKEN_SCOPE);
      state = 1371;
      soqlId();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  WhereClauseContext whereClause() {
    dynamic _localctx = WhereClauseContext(context, state);
    enterRule(_localctx, 208, RULE_whereClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1373;
      match(TOKEN_WHERE);
      state = 1374;
      logicalExpression();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LogicalExpressionContext logicalExpression() {
    dynamic _localctx = LogicalExpressionContext(context, state);
    enterRule(_localctx, 210, RULE_logicalExpression);
    int _la;
    try {
      state = 1394;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 133, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1376;
        conditionalExpression();
        state = 1381;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SOQLAND) {
          state = 1377;
          match(TOKEN_SOQLAND);
          state = 1378;
          conditionalExpression();
          state = 1383;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1384;
        conditionalExpression();
        state = 1389;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SOQLOR) {
          state = 1385;
          match(TOKEN_SOQLOR);
          state = 1386;
          conditionalExpression();
          state = 1391;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1392;
        match(TOKEN_NOT);
        state = 1393;
        conditionalExpression();
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

  ConditionalExpressionContext conditionalExpression() {
    dynamic _localctx = ConditionalExpressionContext(context, state);
    enterRule(_localctx, 212, RULE_conditionalExpression);
    try {
      state = 1401;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 1);
        state = 1396;
        match(TOKEN_LPAREN);
        state = 1397;
        logicalExpression();
        state = 1398;
        match(TOKEN_RPAREN);
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 2);
        state = 1400;
        fieldExpression();
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

  FieldExpressionContext fieldExpression() {
    dynamic _localctx = FieldExpressionContext(context, state);
    enterRule(_localctx, 214, RULE_fieldExpression);
    try {
      state = 1411;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 135, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1403;
        fieldName();
        state = 1404;
        comparisonOperator();
        state = 1405;
        value();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1407;
        soqlFunction();
        state = 1408;
        comparisonOperator();
        state = 1409;
        value();
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

  ComparisonOperatorContext comparisonOperator() {
    dynamic _localctx = ComparisonOperatorContext(context, state);
    enterRule(_localctx, 216, RULE_comparisonOperator);
    try {
      state = 1428;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 136, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1413;
        match(TOKEN_ASSIGN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1414;
        match(TOKEN_NOTEQUAL);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1415;
        match(TOKEN_LT);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1416;
        match(TOKEN_GT);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1417;
        match(TOKEN_LT);
        state = 1418;
        match(TOKEN_ASSIGN);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1419;
        match(TOKEN_GT);
        state = 1420;
        match(TOKEN_ASSIGN);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1421;
        match(TOKEN_LESSANDGREATER);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1422;
        match(TOKEN_LIKE);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1423;
        match(TOKEN_IN);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1424;
        match(TOKEN_NOT);
        state = 1425;
        match(TOKEN_IN);
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1426;
        match(TOKEN_INCLUDES);
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 1427;
        match(TOKEN_EXCLUDES);
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

  ValueContext value() {
    dynamic _localctx = ValueContext(context, state);
    enterRule(_localctx, 218, RULE_value);
    int _la;
    try {
      state = 1450;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 139, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1430;
        match(TOKEN_NULL);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1431;
        match(TOKEN_BooleanLiteral);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1432;
        signedNumber();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1433;
        match(TOKEN_StringLiteral);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1434;
        match(TOKEN_DateLiteral);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1435;
        match(TOKEN_DateTimeLiteral);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1436;
        dateFormula();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1437;
        match(TOKEN_IntegralCurrencyLiteral);
        state = 1442;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOT) {
          state = 1438;
          match(TOKEN_DOT);
          state = 1440;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_IntegerLiteral) {
            state = 1439;
            match(TOKEN_IntegerLiteral);
          }

        }

        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1444;
        match(TOKEN_LPAREN);
        state = 1445;
        subQuery();
        state = 1446;
        match(TOKEN_RPAREN);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1448;
        valueList();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1449;
        boundExpression();
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

  ValueListContext valueList() {
    dynamic _localctx = ValueListContext(context, state);
    enterRule(_localctx, 220, RULE_valueList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1452;
      match(TOKEN_LPAREN);
      state = 1453;
      value();
      state = 1458;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1454;
        match(TOKEN_COMMA);
        state = 1455;
        value();
        state = 1460;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1461;
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

  SignedNumberContext signedNumber() {
    dynamic _localctx = SignedNumberContext(context, state);
    enterRule(_localctx, 222, RULE_signedNumber);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1464;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ADD || _la == TOKEN_SUB) {
        state = 1463;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
      }

      state = 1466;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_IntegerLiteral || _la == TOKEN_NumberLiteral)) {
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

  WithClauseContext withClause() {
    dynamic _localctx = WithClauseContext(context, state);
    enterRule(_localctx, 224, RULE_withClause);
    try {
      state = 1476;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 142, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1468;
        match(TOKEN_WITH);
        state = 1469;
        match(TOKEN_DATA);
        state = 1470;
        match(TOKEN_CATEGORY);
        state = 1471;
        filteringExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1472;
        match(TOKEN_WITH);
        state = 1473;
        match(TOKEN_SECURITY_ENFORCED);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1474;
        match(TOKEN_WITH);
        state = 1475;
        logicalExpression();
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

  FilteringExpressionContext filteringExpression() {
    dynamic _localctx = FilteringExpressionContext(context, state);
    enterRule(_localctx, 226, RULE_filteringExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1478;
      dataCategorySelection();
      state = 1483;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_AND) {
        state = 1479;
        match(TOKEN_AND);
        state = 1480;
        dataCategorySelection();
        state = 1485;
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

  DataCategorySelectionContext dataCategorySelection() {
    dynamic _localctx = DataCategorySelectionContext(context, state);
    enterRule(_localctx, 228, RULE_dataCategorySelection);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1486;
      soqlId();
      state = 1487;
      filteringSelector();
      state = 1488;
      dataCategoryName();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  DataCategoryNameContext dataCategoryName() {
    dynamic _localctx = DataCategoryNameContext(context, state);
    enterRule(_localctx, 230, RULE_dataCategoryName);
    int _la;
    try {
      state = 1502;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
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
      case TOKEN_SELECT:
      case TOKEN_COUNT:
      case TOKEN_FROM:
      case TOKEN_AS:
      case TOKEN_USING:
      case TOKEN_SCOPE:
      case TOKEN_WHERE:
      case TOKEN_ORDER:
      case TOKEN_BY:
      case TOKEN_LIMIT:
      case TOKEN_SOQLAND:
      case TOKEN_SOQLOR:
      case TOKEN_NOT:
      case TOKEN_AVG:
      case TOKEN_COUNT_DISTINCT:
      case TOKEN_MIN:
      case TOKEN_MAX:
      case TOKEN_SUM:
      case TOKEN_TYPEOF:
      case TOKEN_END:
      case TOKEN_THEN:
      case TOKEN_LIKE:
      case TOKEN_IN:
      case TOKEN_INCLUDES:
      case TOKEN_EXCLUDES:
      case TOKEN_ASC:
      case TOKEN_DESC:
      case TOKEN_NULLS:
      case TOKEN_FIRST:
      case TOKEN_LAST:
      case TOKEN_GROUP:
      case TOKEN_ALL:
      case TOKEN_ROWS:
      case TOKEN_VIEW:
      case TOKEN_HAVING:
      case TOKEN_ROLLUP:
      case TOKEN_TOLABEL:
      case TOKEN_OFFSET:
      case TOKEN_DATA:
      case TOKEN_CATEGORY:
      case TOKEN_AT:
      case TOKEN_ABOVE:
      case TOKEN_BELOW:
      case TOKEN_ABOVE_OR_BELOW:
      case TOKEN_SECURITY_ENFORCED:
      case TOKEN_REFERENCE:
      case TOKEN_CUBE:
      case TOKEN_FORMAT:
      case TOKEN_TRACKING:
      case TOKEN_VIEWSTAT:
      case TOKEN_CUSTOM:
      case TOKEN_STANDARD:
      case TOKEN_CALENDAR_MONTH:
      case TOKEN_CALENDAR_QUARTER:
      case TOKEN_CALENDAR_YEAR:
      case TOKEN_DAY_IN_MONTH:
      case TOKEN_DAY_IN_WEEK:
      case TOKEN_DAY_IN_YEAR:
      case TOKEN_DAY_ONLY:
      case TOKEN_FISCAL_MONTH:
      case TOKEN_FISCAL_QUARTER:
      case TOKEN_FISCAL_YEAR:
      case TOKEN_HOUR_IN_DAY:
      case TOKEN_WEEK_IN_MONTH:
      case TOKEN_WEEK_IN_YEAR:
      case TOKEN_CONVERT_TIMEZONE:
      case TOKEN_YESTERDAY:
      case TOKEN_TODAY:
      case TOKEN_TOMORROW:
      case TOKEN_LAST_WEEK:
      case TOKEN_THIS_WEEK:
      case TOKEN_NEXT_WEEK:
      case TOKEN_LAST_MONTH:
      case TOKEN_THIS_MONTH:
      case TOKEN_NEXT_MONTH:
      case TOKEN_LAST_90_DAYS:
      case TOKEN_NEXT_90_DAYS:
      case TOKEN_LAST_N_DAYS_N:
      case TOKEN_NEXT_N_DAYS_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_IntegralCurrencyLiteral:
      case TOKEN_FIND:
      case TOKEN_EMAIL:
      case TOKEN_NAME:
      case TOKEN_PHONE:
      case TOKEN_SIDEBAR:
      case TOKEN_FIELDS:
      case TOKEN_METADATA:
      case TOKEN_PRICEBOOKID:
      case TOKEN_NETWORK:
      case TOKEN_SNIPPET:
      case TOKEN_TARGET_LENGTH:
      case TOKEN_DIVISION:
      case TOKEN_RETURNING:
      case TOKEN_LISTVIEW:
      case TOKEN_Identifier:
        enterOuterAlt(_localctx, 1);
        state = 1490;
        soqlId();
        break;
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 2);
        state = 1491;
        match(TOKEN_LPAREN);
        state = 1492;
        soqlId();
        state = 1497;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 1493;
          match(TOKEN_COMMA);
          state = 1494;
          soqlId();
          state = 1499;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 1500;
        match(TOKEN_LPAREN);
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

  FilteringSelectorContext filteringSelector() {
    dynamic _localctx = FilteringSelectorContext(context, state);
    enterRule(_localctx, 232, RULE_filteringSelector);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1504;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 97)) & ~0x3f) == 0 && ((BigInt.one << (_la - 97)) & ((BigInt.one << (TOKEN_AT - 97)) | (BigInt.one << (TOKEN_ABOVE - 97)) | (BigInt.one << (TOKEN_BELOW - 97)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 97)))) != BigInt.zero))) {
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

  GroupByClauseContext groupByClause() {
    dynamic _localctx = GroupByClauseContext(context, state);
    enterRule(_localctx, 234, RULE_groupByClause);
    int _la;
    try {
      state = 1541;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 149, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1506;
        match(TOKEN_GROUP);
        state = 1507;
        match(TOKEN_BY);
        state = 1508;
        selectList();
        state = 1511;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_HAVING) {
          state = 1509;
          match(TOKEN_HAVING);
          state = 1510;
          logicalExpression();
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1513;
        match(TOKEN_GROUP);
        state = 1514;
        match(TOKEN_BY);
        state = 1515;
        match(TOKEN_ROLLUP);
        state = 1516;
        match(TOKEN_LPAREN);
        state = 1517;
        fieldName();
        state = 1522;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 1518;
          match(TOKEN_COMMA);
          state = 1519;
          fieldName();
          state = 1524;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 1525;
        match(TOKEN_RPAREN);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1527;
        match(TOKEN_GROUP);
        state = 1528;
        match(TOKEN_BY);
        state = 1529;
        match(TOKEN_CUBE);
        state = 1530;
        match(TOKEN_LPAREN);
        state = 1531;
        fieldName();
        state = 1536;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 1532;
          match(TOKEN_COMMA);
          state = 1533;
          fieldName();
          state = 1538;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 1539;
        match(TOKEN_RPAREN);
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

  OrderByClauseContext orderByClause() {
    dynamic _localctx = OrderByClauseContext(context, state);
    enterRule(_localctx, 236, RULE_orderByClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1543;
      match(TOKEN_ORDER);
      state = 1544;
      match(TOKEN_BY);
      state = 1545;
      fieldOrderList();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldOrderListContext fieldOrderList() {
    dynamic _localctx = FieldOrderListContext(context, state);
    enterRule(_localctx, 238, RULE_fieldOrderList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1547;
      fieldOrder();
      state = 1552;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1548;
        match(TOKEN_COMMA);
        state = 1549;
        fieldOrder();
        state = 1554;
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

  FieldOrderContext fieldOrder() {
    dynamic _localctx = FieldOrderContext(context, state);
    enterRule(_localctx, 240, RULE_fieldOrder);
    int _la;
    try {
      state = 1571;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 155, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1555;
        fieldName();
        state = 1557;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASC || _la == TOKEN_DESC) {
          state = 1556;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_ASC || _la == TOKEN_DESC)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1561;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_NULLS) {
          state = 1559;
          match(TOKEN_NULLS);
          state = 1560;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_FIRST || _la == TOKEN_LAST)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1563;
        soqlFunction();
        state = 1565;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASC || _la == TOKEN_DESC) {
          state = 1564;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_ASC || _la == TOKEN_DESC)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1569;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_NULLS) {
          state = 1567;
          match(TOKEN_NULLS);
          state = 1568;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_FIRST || _la == TOKEN_LAST)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
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

  LimitClauseContext limitClause() {
    dynamic _localctx = LimitClauseContext(context, state);
    enterRule(_localctx, 242, RULE_limitClause);
    try {
      state = 1577;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 156, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1573;
        match(TOKEN_LIMIT);
        state = 1574;
        match(TOKEN_IntegerLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1575;
        match(TOKEN_LIMIT);
        state = 1576;
        boundExpression();
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

  OffsetClauseContext offsetClause() {
    dynamic _localctx = OffsetClauseContext(context, state);
    enterRule(_localctx, 244, RULE_offsetClause);
    try {
      state = 1583;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 157, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1579;
        match(TOKEN_OFFSET);
        state = 1580;
        match(TOKEN_IntegerLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1581;
        match(TOKEN_OFFSET);
        state = 1582;
        boundExpression();
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

  AllRowsClauseContext allRowsClause() {
    dynamic _localctx = AllRowsClauseContext(context, state);
    enterRule(_localctx, 246, RULE_allRowsClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1585;
      match(TOKEN_ALL);
      state = 1586;
      match(TOKEN_ROWS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ForClausesContext forClauses() {
    dynamic _localctx = ForClausesContext(context, state);
    enterRule(_localctx, 248, RULE_forClauses);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1592;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_FOR) {
        state = 1588;
        match(TOKEN_FOR);
        state = 1589;
        _la = tokenStream.LA(1)!;
        if (!(((((_la - 46)) & ~0x3f) == 0 && ((BigInt.one << (_la - 46)) & ((BigInt.one << (TOKEN_UPDATE - 46)) | (BigInt.one << (TOKEN_VIEW - 46)) | (BigInt.one << (TOKEN_REFERENCE - 46)))) != BigInt.zero))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 1594;
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

  BoundExpressionContext boundExpression() {
    dynamic _localctx = BoundExpressionContext(context, state);
    enterRule(_localctx, 250, RULE_boundExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1595;
      match(TOKEN_COLON);
      state = 1596;
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

  DateFormulaContext dateFormula() {
    dynamic _localctx = DateFormulaContext(context, state);
    enterRule(_localctx, 252, RULE_dateFormula);
    try {
      state = 1663;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_YESTERDAY:
        enterOuterAlt(_localctx, 1);
        state = 1598;
        match(TOKEN_YESTERDAY);
        break;
      case TOKEN_TODAY:
        enterOuterAlt(_localctx, 2);
        state = 1599;
        match(TOKEN_TODAY);
        break;
      case TOKEN_TOMORROW:
        enterOuterAlt(_localctx, 3);
        state = 1600;
        match(TOKEN_TOMORROW);
        break;
      case TOKEN_LAST_WEEK:
        enterOuterAlt(_localctx, 4);
        state = 1601;
        match(TOKEN_LAST_WEEK);
        break;
      case TOKEN_THIS_WEEK:
        enterOuterAlt(_localctx, 5);
        state = 1602;
        match(TOKEN_THIS_WEEK);
        break;
      case TOKEN_NEXT_WEEK:
        enterOuterAlt(_localctx, 6);
        state = 1603;
        match(TOKEN_NEXT_WEEK);
        break;
      case TOKEN_LAST_MONTH:
        enterOuterAlt(_localctx, 7);
        state = 1604;
        match(TOKEN_LAST_MONTH);
        break;
      case TOKEN_THIS_MONTH:
        enterOuterAlt(_localctx, 8);
        state = 1605;
        match(TOKEN_THIS_MONTH);
        break;
      case TOKEN_NEXT_MONTH:
        enterOuterAlt(_localctx, 9);
        state = 1606;
        match(TOKEN_NEXT_MONTH);
        break;
      case TOKEN_LAST_90_DAYS:
        enterOuterAlt(_localctx, 10);
        state = 1607;
        match(TOKEN_LAST_90_DAYS);
        break;
      case TOKEN_NEXT_90_DAYS:
        enterOuterAlt(_localctx, 11);
        state = 1608;
        match(TOKEN_NEXT_90_DAYS);
        break;
      case TOKEN_LAST_N_DAYS_N:
        enterOuterAlt(_localctx, 12);
        state = 1609;
        match(TOKEN_LAST_N_DAYS_N);
        state = 1610;
        match(TOKEN_COLON);
        state = 1611;
        signedInteger();
        break;
      case TOKEN_NEXT_N_DAYS_N:
        enterOuterAlt(_localctx, 13);
        state = 1612;
        match(TOKEN_NEXT_N_DAYS_N);
        state = 1613;
        match(TOKEN_COLON);
        state = 1614;
        signedInteger();
        break;
      case TOKEN_NEXT_N_WEEKS_N:
        enterOuterAlt(_localctx, 14);
        state = 1615;
        match(TOKEN_NEXT_N_WEEKS_N);
        state = 1616;
        match(TOKEN_COLON);
        state = 1617;
        signedInteger();
        break;
      case TOKEN_LAST_N_WEEKS_N:
        enterOuterAlt(_localctx, 15);
        state = 1618;
        match(TOKEN_LAST_N_WEEKS_N);
        state = 1619;
        match(TOKEN_COLON);
        state = 1620;
        signedInteger();
        break;
      case TOKEN_NEXT_N_MONTHS_N:
        enterOuterAlt(_localctx, 16);
        state = 1621;
        match(TOKEN_NEXT_N_MONTHS_N);
        state = 1622;
        match(TOKEN_COLON);
        state = 1623;
        signedInteger();
        break;
      case TOKEN_LAST_N_MONTHS_N:
        enterOuterAlt(_localctx, 17);
        state = 1624;
        match(TOKEN_LAST_N_MONTHS_N);
        state = 1625;
        match(TOKEN_COLON);
        state = 1626;
        signedInteger();
        break;
      case TOKEN_THIS_QUARTER:
        enterOuterAlt(_localctx, 18);
        state = 1627;
        match(TOKEN_THIS_QUARTER);
        break;
      case TOKEN_LAST_QUARTER:
        enterOuterAlt(_localctx, 19);
        state = 1628;
        match(TOKEN_LAST_QUARTER);
        break;
      case TOKEN_NEXT_QUARTER:
        enterOuterAlt(_localctx, 20);
        state = 1629;
        match(TOKEN_NEXT_QUARTER);
        break;
      case TOKEN_NEXT_N_QUARTERS_N:
        enterOuterAlt(_localctx, 21);
        state = 1630;
        match(TOKEN_NEXT_N_QUARTERS_N);
        state = 1631;
        match(TOKEN_COLON);
        state = 1632;
        signedInteger();
        break;
      case TOKEN_LAST_N_QUARTERS_N:
        enterOuterAlt(_localctx, 22);
        state = 1633;
        match(TOKEN_LAST_N_QUARTERS_N);
        state = 1634;
        match(TOKEN_COLON);
        state = 1635;
        signedInteger();
        break;
      case TOKEN_THIS_YEAR:
        enterOuterAlt(_localctx, 23);
        state = 1636;
        match(TOKEN_THIS_YEAR);
        break;
      case TOKEN_LAST_YEAR:
        enterOuterAlt(_localctx, 24);
        state = 1637;
        match(TOKEN_LAST_YEAR);
        break;
      case TOKEN_NEXT_YEAR:
        enterOuterAlt(_localctx, 25);
        state = 1638;
        match(TOKEN_NEXT_YEAR);
        break;
      case TOKEN_NEXT_N_YEARS_N:
        enterOuterAlt(_localctx, 26);
        state = 1639;
        match(TOKEN_NEXT_N_YEARS_N);
        state = 1640;
        match(TOKEN_COLON);
        state = 1641;
        signedInteger();
        break;
      case TOKEN_LAST_N_YEARS_N:
        enterOuterAlt(_localctx, 27);
        state = 1642;
        match(TOKEN_LAST_N_YEARS_N);
        state = 1643;
        match(TOKEN_COLON);
        state = 1644;
        signedInteger();
        break;
      case TOKEN_THIS_FISCAL_QUARTER:
        enterOuterAlt(_localctx, 28);
        state = 1645;
        match(TOKEN_THIS_FISCAL_QUARTER);
        break;
      case TOKEN_LAST_FISCAL_QUARTER:
        enterOuterAlt(_localctx, 29);
        state = 1646;
        match(TOKEN_LAST_FISCAL_QUARTER);
        break;
      case TOKEN_NEXT_FISCAL_QUARTER:
        enterOuterAlt(_localctx, 30);
        state = 1647;
        match(TOKEN_NEXT_FISCAL_QUARTER);
        break;
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
        enterOuterAlt(_localctx, 31);
        state = 1648;
        match(TOKEN_NEXT_N_FISCAL_QUARTERS_N);
        state = 1649;
        match(TOKEN_COLON);
        state = 1650;
        signedInteger();
        break;
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
        enterOuterAlt(_localctx, 32);
        state = 1651;
        match(TOKEN_LAST_N_FISCAL_QUARTERS_N);
        state = 1652;
        match(TOKEN_COLON);
        state = 1653;
        signedInteger();
        break;
      case TOKEN_THIS_FISCAL_YEAR:
        enterOuterAlt(_localctx, 33);
        state = 1654;
        match(TOKEN_THIS_FISCAL_YEAR);
        break;
      case TOKEN_LAST_FISCAL_YEAR:
        enterOuterAlt(_localctx, 34);
        state = 1655;
        match(TOKEN_LAST_FISCAL_YEAR);
        break;
      case TOKEN_NEXT_FISCAL_YEAR:
        enterOuterAlt(_localctx, 35);
        state = 1656;
        match(TOKEN_NEXT_FISCAL_YEAR);
        break;
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
        enterOuterAlt(_localctx, 36);
        state = 1657;
        match(TOKEN_NEXT_N_FISCAL_YEARS_N);
        state = 1658;
        match(TOKEN_COLON);
        state = 1659;
        signedInteger();
        break;
      case TOKEN_LAST_N_FISCAL_YEARS_N:
        enterOuterAlt(_localctx, 37);
        state = 1660;
        match(TOKEN_LAST_N_FISCAL_YEARS_N);
        state = 1661;
        match(TOKEN_COLON);
        state = 1662;
        signedInteger();
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

  SignedIntegerContext signedInteger() {
    dynamic _localctx = SignedIntegerContext(context, state);
    enterRule(_localctx, 254, RULE_signedInteger);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1666;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ADD || _la == TOKEN_SUB) {
        state = 1665;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
      }

      state = 1668;
      match(TOKEN_IntegerLiteral);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  SoqlIdContext soqlId() {
    dynamic _localctx = SoqlIdContext(context, state);
    enterRule(_localctx, 256, RULE_soqlId);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1670;
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

  SoslLiteralContext soslLiteral() {
    dynamic _localctx = SoslLiteralContext(context, state);
    enterRule(_localctx, 258, RULE_soslLiteral);
    try {
      state = 1682;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_FindLiteral:
        enterOuterAlt(_localctx, 1);
        state = 1672;
        match(TOKEN_FindLiteral);
        state = 1673;
        soslClauses();
        state = 1674;
        match(TOKEN_RBRACK);
        break;
      case TOKEN_LBRACK:
        enterOuterAlt(_localctx, 2);
        state = 1676;
        match(TOKEN_LBRACK);
        state = 1677;
        match(TOKEN_FIND);
        state = 1678;
        boundExpression();
        state = 1679;
        soslClauses();
        state = 1680;
        match(TOKEN_RBRACK);
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

  SoslClausesContext soslClauses() {
    dynamic _localctx = SoslClausesContext(context, state);
    enterRule(_localctx, 260, RULE_soslClauses);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1686;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_IN) {
        state = 1684;
        match(TOKEN_IN);
        state = 1685;
        searchGroup();
      }

      state = 1690;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_RETURNING) {
        state = 1688;
        match(TOKEN_RETURNING);
        state = 1689;
        fieldSpecList();
      }

      state = 1696;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 164, context)) {
      case 1:
        state = 1692;
        match(TOKEN_WITH);
        state = 1693;
        match(TOKEN_DIVISION);
        state = 1694;
        match(TOKEN_ASSIGN);
        state = 1695;
        match(TOKEN_StringLiteral);
        break;
      }
      state = 1702;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 165, context)) {
      case 1:
        state = 1698;
        match(TOKEN_WITH);
        state = 1699;
        match(TOKEN_DATA);
        state = 1700;
        match(TOKEN_CATEGORY);
        state = 1701;
        filteringExpression();
        break;
      }
      state = 1713;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 167, context)) {
      case 1:
        state = 1704;
        match(TOKEN_WITH);
        state = 1705;
        match(TOKEN_SNIPPET);
        state = 1711;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_LPAREN) {
          state = 1706;
          match(TOKEN_LPAREN);
          state = 1707;
          match(TOKEN_TARGET_LENGTH);
          state = 1708;
          match(TOKEN_ASSIGN);
          state = 1709;
          match(TOKEN_IntegerLiteral);
          state = 1710;
          match(TOKEN_RPAREN);
        }

        break;
      }
      state = 1722;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 168, context)) {
      case 1:
        state = 1715;
        match(TOKEN_WITH);
        state = 1716;
        match(TOKEN_NETWORK);
        state = 1717;
        match(TOKEN_IN);
        state = 1718;
        match(TOKEN_LPAREN);
        state = 1719;
        networkList();
        state = 1720;
        match(TOKEN_RPAREN);
        break;
      }
      state = 1728;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 169, context)) {
      case 1:
        state = 1724;
        match(TOKEN_WITH);
        state = 1725;
        match(TOKEN_NETWORK);
        state = 1726;
        match(TOKEN_ASSIGN);
        state = 1727;
        match(TOKEN_StringLiteral);
        break;
      }
      state = 1734;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 170, context)) {
      case 1:
        state = 1730;
        match(TOKEN_WITH);
        state = 1731;
        match(TOKEN_PRICEBOOKID);
        state = 1732;
        match(TOKEN_ASSIGN);
        state = 1733;
        match(TOKEN_StringLiteral);
        break;
      }
      state = 1740;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WITH) {
        state = 1736;
        match(TOKEN_WITH);
        state = 1737;
        match(TOKEN_METADATA);
        state = 1738;
        match(TOKEN_ASSIGN);
        state = 1739;
        match(TOKEN_StringLiteral);
      }

      state = 1743;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LIMIT) {
        state = 1742;
        limitClause();
      }

      state = 1747;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_UPDATE) {
        state = 1745;
        match(TOKEN_UPDATE);
        state = 1746;
        updateList();
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

  SearchGroupContext searchGroup() {
    dynamic _localctx = SearchGroupContext(context, state);
    enterRule(_localctx, 262, RULE_searchGroup);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1749;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_ALL || ((((_la - 164)) & ~0x3f) == 0 && ((BigInt.one << (_la - 164)) & ((BigInt.one << (TOKEN_EMAIL - 164)) | (BigInt.one << (TOKEN_NAME - 164)) | (BigInt.one << (TOKEN_PHONE - 164)) | (BigInt.one << (TOKEN_SIDEBAR - 164)))) != BigInt.zero))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 1750;
      match(TOKEN_FIELDS);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  FieldSpecListContext fieldSpecList() {
    dynamic _localctx = FieldSpecListContext(context, state);
    enterRule(_localctx, 264, RULE_fieldSpecList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1752;
      fieldSpec();
      state = 1757;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 174, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1753;
          match(TOKEN_COMMA);
          state = 1754;
          fieldSpecList(); 
        }
        state = 1759;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 174, context);
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

  FieldSpecContext fieldSpec() {
    dynamic _localctx = FieldSpecContext(context, state);
    enterRule(_localctx, 266, RULE_fieldSpec);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1760;
      soslId();
      state = 1786;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LPAREN) {
        state = 1761;
        match(TOKEN_LPAREN);
        state = 1762;
        fieldList();
        state = 1765;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_WHERE) {
          state = 1763;
          match(TOKEN_WHERE);
          state = 1764;
          logicalExpression();
        }

        state = 1771;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_USING) {
          state = 1767;
          match(TOKEN_USING);
          state = 1768;
          match(TOKEN_LISTVIEW);
          state = 1769;
          match(TOKEN_ASSIGN);
          state = 1770;
          soslId();
        }

        state = 1776;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ORDER) {
          state = 1773;
          match(TOKEN_ORDER);
          state = 1774;
          match(TOKEN_BY);
          state = 1775;
          fieldOrderList();
        }

        state = 1779;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_LIMIT) {
          state = 1778;
          limitClause();
        }

        state = 1782;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_OFFSET) {
          state = 1781;
          offsetClause();
        }

        state = 1784;
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

  FieldListContext fieldList() {
    dynamic _localctx = FieldListContext(context, state);
    enterRule(_localctx, 268, RULE_fieldList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1788;
      soslId();
      state = 1793;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 181, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1789;
          match(TOKEN_COMMA);
          state = 1790;
          fieldList(); 
        }
        state = 1795;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 181, context);
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

  UpdateListContext updateList() {
    dynamic _localctx = UpdateListContext(context, state);
    enterRule(_localctx, 270, RULE_updateList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1796;
      updateType();
      state = 1799;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMA) {
        state = 1797;
        match(TOKEN_COMMA);
        state = 1798;
        updateList();
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

  UpdateTypeContext updateType() {
    dynamic _localctx = UpdateTypeContext(context, state);
    enterRule(_localctx, 272, RULE_updateType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1801;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_TRACKING || _la == TOKEN_VIEWSTAT)) {
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

  NetworkListContext networkList() {
    dynamic _localctx = NetworkListContext(context, state);
    enterRule(_localctx, 274, RULE_networkList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1803;
      match(TOKEN_StringLiteral);
      state = 1806;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMA) {
        state = 1804;
        match(TOKEN_COMMA);
        state = 1805;
        networkList();
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

  SoslIdContext soslId() {
    dynamic _localctx = SoslIdContext(context, state);
    enterRule(_localctx, 276, RULE_soslId);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1808;
      id();
      state = 1813;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 184, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1809;
          match(TOKEN_DOT);
          state = 1810;
          soslId(); 
        }
        state = 1815;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 184, context);
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

  IdContext id() {
    dynamic _localctx = IdContext(context, state);
    enterRule(_localctx, 278, RULE_id);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1816;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)))) != BigInt.zero) || _la == TOKEN_Identifier)) {
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

  AnyIdContext anyId() {
    dynamic _localctx = AnyIdContext(context, state);
    enterRule(_localctx, 280, RULE_anyId);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1818;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((BigInt.one << _la) & ((BigInt.one << TOKEN_ABSTRACT) | (BigInt.one << TOKEN_AFTER) | (BigInt.one << TOKEN_BEFORE) | (BigInt.one << TOKEN_BREAK) | (BigInt.one << TOKEN_CATCH) | (BigInt.one << TOKEN_CLASS) | (BigInt.one << TOKEN_CONTINUE) | (BigInt.one << TOKEN_DELETE) | (BigInt.one << TOKEN_DO) | (BigInt.one << TOKEN_ELSE) | (BigInt.one << TOKEN_ENUM) | (BigInt.one << TOKEN_EXTENDS) | (BigInt.one << TOKEN_FINAL) | (BigInt.one << TOKEN_FINALLY) | (BigInt.one << TOKEN_FOR) | (BigInt.one << TOKEN_GET) | (BigInt.one << TOKEN_GLOBAL) | (BigInt.one << TOKEN_IF) | (BigInt.one << TOKEN_IMPLEMENTS) | (BigInt.one << TOKEN_INHERITED) | (BigInt.one << TOKEN_INSERT) | (BigInt.one << TOKEN_INSTANCEOF) | (BigInt.one << TOKEN_INTERFACE) | (BigInt.one << TOKEN_MERGE) | (BigInt.one << TOKEN_NEW) | (BigInt.one << TOKEN_NULL) | (BigInt.one << TOKEN_ON) | (BigInt.one << TOKEN_OVERRIDE) | (BigInt.one << TOKEN_PRIVATE) | (BigInt.one << TOKEN_PROTECTED) | (BigInt.one << TOKEN_PUBLIC) | (BigInt.one << TOKEN_RETURN) | (BigInt.one << TOKEN_SET) | (BigInt.one << TOKEN_SHARING) | (BigInt.one << TOKEN_STATIC) | (BigInt.one << TOKEN_SUPER) | (BigInt.one << TOKEN_SWITCH) | (BigInt.one << TOKEN_TESTMETHOD) | (BigInt.one << TOKEN_THIS) | (BigInt.one << TOKEN_THROW) | (BigInt.one << TOKEN_TRANSIENT) | (BigInt.one << TOKEN_TRIGGER) | (BigInt.one << TOKEN_TRY) | (BigInt.one << TOKEN_UNDELETE) | (BigInt.one << TOKEN_UPDATE) | (BigInt.one << TOKEN_UPSERT) | (BigInt.one << TOKEN_VIRTUAL) | (BigInt.one << TOKEN_WEBSERVICE) | (BigInt.one << TOKEN_WHEN) | (BigInt.one << TOKEN_WHILE) | (BigInt.one << TOKEN_WITH) | (BigInt.one << TOKEN_WITHOUT) | (BigInt.one << TOKEN_LIST) | (BigInt.one << TOKEN_MAP) | (BigInt.one << TOKEN_SELECT) | (BigInt.one << TOKEN_COUNT) | (BigInt.one << TOKEN_FROM) | (BigInt.one << TOKEN_AS) | (BigInt.one << TOKEN_USING) | (BigInt.one << TOKEN_SCOPE) | (BigInt.one << TOKEN_WHERE))) != BigInt.zero) || ((((_la - 64)) & ~0x3f) == 0 && ((BigInt.one << (_la - 64)) & ((BigInt.one << (TOKEN_ORDER - 64)) | (BigInt.one << (TOKEN_BY - 64)) | (BigInt.one << (TOKEN_LIMIT - 64)) | (BigInt.one << (TOKEN_SOQLAND - 64)) | (BigInt.one << (TOKEN_SOQLOR - 64)) | (BigInt.one << (TOKEN_NOT - 64)) | (BigInt.one << (TOKEN_AVG - 64)) | (BigInt.one << (TOKEN_COUNT_DISTINCT - 64)) | (BigInt.one << (TOKEN_MIN - 64)) | (BigInt.one << (TOKEN_MAX - 64)) | (BigInt.one << (TOKEN_SUM - 64)) | (BigInt.one << (TOKEN_TYPEOF - 64)) | (BigInt.one << (TOKEN_END - 64)) | (BigInt.one << (TOKEN_THEN - 64)) | (BigInt.one << (TOKEN_LIKE - 64)) | (BigInt.one << (TOKEN_IN - 64)) | (BigInt.one << (TOKEN_INCLUDES - 64)) | (BigInt.one << (TOKEN_EXCLUDES - 64)) | (BigInt.one << (TOKEN_ASC - 64)) | (BigInt.one << (TOKEN_DESC - 64)) | (BigInt.one << (TOKEN_NULLS - 64)) | (BigInt.one << (TOKEN_FIRST - 64)) | (BigInt.one << (TOKEN_LAST - 64)) | (BigInt.one << (TOKEN_GROUP - 64)) | (BigInt.one << (TOKEN_ALL - 64)) | (BigInt.one << (TOKEN_ROWS - 64)) | (BigInt.one << (TOKEN_VIEW - 64)) | (BigInt.one << (TOKEN_HAVING - 64)) | (BigInt.one << (TOKEN_ROLLUP - 64)) | (BigInt.one << (TOKEN_TOLABEL - 64)) | (BigInt.one << (TOKEN_OFFSET - 64)) | (BigInt.one << (TOKEN_DATA - 64)) | (BigInt.one << (TOKEN_CATEGORY - 64)) | (BigInt.one << (TOKEN_AT - 64)) | (BigInt.one << (TOKEN_ABOVE - 64)) | (BigInt.one << (TOKEN_BELOW - 64)) | (BigInt.one << (TOKEN_ABOVE_OR_BELOW - 64)) | (BigInt.one << (TOKEN_SECURITY_ENFORCED - 64)) | (BigInt.one << (TOKEN_REFERENCE - 64)) | (BigInt.one << (TOKEN_CUBE - 64)) | (BigInt.one << (TOKEN_FORMAT - 64)) | (BigInt.one << (TOKEN_TRACKING - 64)) | (BigInt.one << (TOKEN_VIEWSTAT - 64)) | (BigInt.one << (TOKEN_CUSTOM - 64)) | (BigInt.one << (TOKEN_STANDARD - 64)) | (BigInt.one << (TOKEN_CALENDAR_MONTH - 64)) | (BigInt.one << (TOKEN_CALENDAR_QUARTER - 64)) | (BigInt.one << (TOKEN_CALENDAR_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_IN_MONTH - 64)) | (BigInt.one << (TOKEN_DAY_IN_WEEK - 64)) | (BigInt.one << (TOKEN_DAY_IN_YEAR - 64)) | (BigInt.one << (TOKEN_DAY_ONLY - 64)) | (BigInt.one << (TOKEN_FISCAL_MONTH - 64)) | (BigInt.one << (TOKEN_FISCAL_QUARTER - 64)) | (BigInt.one << (TOKEN_FISCAL_YEAR - 64)) | (BigInt.one << (TOKEN_HOUR_IN_DAY - 64)) | (BigInt.one << (TOKEN_WEEK_IN_MONTH - 64)) | (BigInt.one << (TOKEN_WEEK_IN_YEAR - 64)) | (BigInt.one << (TOKEN_CONVERT_TIMEZONE - 64)) | (BigInt.one << (TOKEN_YESTERDAY - 64)) | (BigInt.one << (TOKEN_TODAY - 64)) | (BigInt.one << (TOKEN_TOMORROW - 64)) | (BigInt.one << (TOKEN_LAST_WEEK - 64)) | (BigInt.one << (TOKEN_THIS_WEEK - 64)))) != BigInt.zero) || ((((_la - 128)) & ~0x3f) == 0 && ((BigInt.one << (_la - 128)) & ((BigInt.one << (TOKEN_NEXT_WEEK - 128)) | (BigInt.one << (TOKEN_LAST_MONTH - 128)) | (BigInt.one << (TOKEN_THIS_MONTH - 128)) | (BigInt.one << (TOKEN_NEXT_MONTH - 128)) | (BigInt.one << (TOKEN_LAST_90_DAYS - 128)) | (BigInt.one << (TOKEN_NEXT_90_DAYS - 128)) | (BigInt.one << (TOKEN_LAST_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_DAYS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_WEEKS_N - 128)) | (BigInt.one << (TOKEN_NEXT_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_MONTHS_N - 128)) | (BigInt.one << (TOKEN_THIS_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_YEARS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_QUARTER - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_QUARTERS_N - 128)) | (BigInt.one << (TOKEN_THIS_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_LAST_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_FISCAL_YEAR - 128)) | (BigInt.one << (TOKEN_NEXT_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_LAST_N_FISCAL_YEARS_N - 128)) | (BigInt.one << (TOKEN_IntegralCurrencyLiteral - 128)) | (BigInt.one << (TOKEN_FIND - 128)) | (BigInt.one << (TOKEN_EMAIL - 128)) | (BigInt.one << (TOKEN_NAME - 128)) | (BigInt.one << (TOKEN_PHONE - 128)) | (BigInt.one << (TOKEN_SIDEBAR - 128)) | (BigInt.one << (TOKEN_FIELDS - 128)) | (BigInt.one << (TOKEN_METADATA - 128)) | (BigInt.one << (TOKEN_PRICEBOOKID - 128)) | (BigInt.one << (TOKEN_NETWORK - 128)) | (BigInt.one << (TOKEN_SNIPPET - 128)) | (BigInt.one << (TOKEN_TARGET_LENGTH - 128)) | (BigInt.one << (TOKEN_DIVISION - 128)) | (BigInt.one << (TOKEN_RETURNING - 128)) | (BigInt.one << (TOKEN_LISTVIEW - 128)))) != BigInt.zero) || _la == TOKEN_Identifier)) {
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

  @override
  bool sempred(RuleContext? _localctx, int ruleIndex, int predIndex) {
    switch (ruleIndex) {
    case 73:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 13);
      case 1: return precpred(context, 12);
      case 2: return precpred(context, 11);
      case 3: return precpred(context, 10);
      case 4: return precpred(context, 8);
      case 5: return precpred(context, 7);
      case 6: return precpred(context, 6);
      case 7: return precpred(context, 5);
      case 8: return precpred(context, 4);
      case 9: return precpred(context, 3);
      case 10: return precpred(context, 2);
      case 11: return precpred(context, 1);
      case 12: return precpred(context, 22);
      case 13: return precpred(context, 21);
      case 14: return precpred(context, 16);
      case 15: return precpred(context, 9);
    }
    return true;
  }

  static const String _serializedATN = '\u{3}\u{608B}\u{A72A}\u{8133}\u{B9ED}'
  	'\u{417C}\u{3BE7}\u{7786}\u{5964}\u{3}\u{F0}\u{71F}\u{4}\u{2}\u{9}\u{2}'
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
  	'\u{9}\u{58}\u{4}\u{59}\u{9}\u{59}\u{4}\u{5A}\u{9}\u{5A}\u{4}\u{5B}\u{9}'
  	'\u{5B}\u{4}\u{5C}\u{9}\u{5C}\u{4}\u{5D}\u{9}\u{5D}\u{4}\u{5E}\u{9}\u{5E}'
  	'\u{4}\u{5F}\u{9}\u{5F}\u{4}\u{60}\u{9}\u{60}\u{4}\u{61}\u{9}\u{61}\u{4}'
  	'\u{62}\u{9}\u{62}\u{4}\u{63}\u{9}\u{63}\u{4}\u{64}\u{9}\u{64}\u{4}\u{65}'
  	'\u{9}\u{65}\u{4}\u{66}\u{9}\u{66}\u{4}\u{67}\u{9}\u{67}\u{4}\u{68}\u{9}'
  	'\u{68}\u{4}\u{69}\u{9}\u{69}\u{4}\u{6A}\u{9}\u{6A}\u{4}\u{6B}\u{9}\u{6B}'
  	'\u{4}\u{6C}\u{9}\u{6C}\u{4}\u{6D}\u{9}\u{6D}\u{4}\u{6E}\u{9}\u{6E}\u{4}'
  	'\u{6F}\u{9}\u{6F}\u{4}\u{70}\u{9}\u{70}\u{4}\u{71}\u{9}\u{71}\u{4}\u{72}'
  	'\u{9}\u{72}\u{4}\u{73}\u{9}\u{73}\u{4}\u{74}\u{9}\u{74}\u{4}\u{75}\u{9}'
  	'\u{75}\u{4}\u{76}\u{9}\u{76}\u{4}\u{77}\u{9}\u{77}\u{4}\u{78}\u{9}\u{78}'
  	'\u{4}\u{79}\u{9}\u{79}\u{4}\u{7A}\u{9}\u{7A}\u{4}\u{7B}\u{9}\u{7B}\u{4}'
  	'\u{7C}\u{9}\u{7C}\u{4}\u{7D}\u{9}\u{7D}\u{4}\u{7E}\u{9}\u{7E}\u{4}\u{7F}'
  	'\u{9}\u{7F}\u{4}\u{80}\u{9}\u{80}\u{4}\u{81}\u{9}\u{81}\u{4}\u{82}\u{9}'
  	'\u{82}\u{4}\u{83}\u{9}\u{83}\u{4}\u{84}\u{9}\u{84}\u{4}\u{85}\u{9}\u{85}'
  	'\u{4}\u{86}\u{9}\u{86}\u{4}\u{87}\u{9}\u{87}\u{4}\u{88}\u{9}\u{88}\u{4}'
  	'\u{89}\u{9}\u{89}\u{4}\u{8A}\u{9}\u{8A}\u{4}\u{8B}\u{9}\u{8B}\u{4}\u{8C}'
  	'\u{9}\u{8C}\u{4}\u{8D}\u{9}\u{8D}\u{4}\u{8E}\u{9}\u{8E}\u{3}\u{2}\u{3}'
  	'\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{7}'
  	'\u{2}\u{125}\u{A}\u{2}\u{C}\u{2}\u{E}\u{2}\u{128}\u{B}\u{2}\u{3}\u{2}'
  	'\u{3}\u{2}\u{3}\u{2}\u{3}\u{2}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{3}\u{4}'
  	'\u{3}\u{4}\u{3}\u{4}\u{3}\u{5}\u{5}\u{5}\u{135}\u{A}\u{5}\u{3}\u{5}\u{7}'
  	'\u{5}\u{138}\u{A}\u{5}\u{C}\u{5}\u{E}\u{5}\u{13B}\u{B}\u{5}\u{3}\u{5}'
  	'\u{3}\u{5}\u{5}\u{5}\u{13F}\u{A}\u{5}\u{3}\u{5}\u{7}\u{5}\u{142}\u{A}'
  	'\u{5}\u{C}\u{5}\u{E}\u{5}\u{145}\u{B}\u{5}\u{3}\u{5}\u{3}\u{5}\u{5}\u{5}'
  	'\u{149}\u{A}\u{5}\u{3}\u{5}\u{7}\u{5}\u{14C}\u{A}\u{5}\u{C}\u{5}\u{E}'
  	'\u{5}\u{14F}\u{B}\u{5}\u{3}\u{5}\u{5}\u{5}\u{152}\u{A}\u{5}\u{3}\u{6}'
  	'\u{3}\u{6}\u{3}\u{6}\u{3}\u{6}\u{5}\u{6}\u{158}\u{A}\u{6}\u{3}\u{6}\u{3}'
  	'\u{6}\u{5}\u{6}\u{15C}\u{A}\u{6}\u{3}\u{6}\u{3}\u{6}\u{3}\u{7}\u{3}\u{7}'
  	'\u{3}\u{7}\u{3}\u{7}\u{5}\u{7}\u{164}\u{A}\u{7}\u{3}\u{7}\u{3}\u{7}\u{3}'
  	'\u{8}\u{3}\u{8}\u{3}\u{8}\u{7}\u{8}\u{16B}\u{A}\u{8}\u{C}\u{8}\u{E}\u{8}'
  	'\u{16E}\u{B}\u{8}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{9}\u{5}\u{9}\u{174}'
  	'\u{A}\u{9}\u{3}\u{9}\u{3}\u{9}\u{3}\u{A}\u{3}\u{A}\u{3}\u{A}\u{7}\u{A}'
  	'\u{17B}\u{A}\u{A}\u{C}\u{A}\u{E}\u{A}\u{17E}\u{B}\u{A}\u{3}\u{B}\u{3}'
  	'\u{B}\u{3}\u{B}\u{7}\u{B}\u{183}\u{A}\u{B}\u{C}\u{B}\u{E}\u{B}\u{186}'
  	'\u{B}\u{B}\u{3}\u{B}\u{3}\u{B}\u{3}\u{C}\u{3}\u{C}\u{7}\u{C}\u{18C}\u{A}'
  	'\u{C}\u{C}\u{C}\u{E}\u{C}\u{18F}\u{B}\u{C}\u{3}\u{C}\u{3}\u{C}\u{3}\u{D}'
  	'\u{3}\u{D}\u{7}\u{D}\u{195}\u{A}\u{D}\u{C}\u{D}\u{E}\u{D}\u{198}\u{B}'
  	'\u{D}\u{3}\u{D}\u{3}\u{D}\u{3}\u{E}\u{3}\u{E}\u{5}\u{E}\u{19E}\u{A}\u{E}'
  	'\u{3}\u{E}\u{3}\u{E}\u{5}\u{E}\u{1A2}\u{A}\u{E}\u{3}\u{E}\u{7}\u{E}\u{1A5}'
  	'\u{A}\u{E}\u{C}\u{E}\u{E}\u{E}\u{1A8}\u{B}\u{E}\u{3}\u{E}\u{5}\u{E}\u{1AB}'
  	'\u{A}\u{E}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}'
  	'\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}'
  	'\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{3}\u{F}\u{5}\u{F}'
  	'\u{1C0}\u{A}\u{F}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}\u{3}\u{10}'
  	'\u{3}\u{10}\u{3}\u{10}\u{5}\u{10}\u{1C9}\u{A}\u{10}\u{3}\u{11}\u{3}\u{11}'
  	'\u{5}\u{11}\u{1CD}\u{A}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}\u{3}\u{11}'
  	'\u{5}\u{11}\u{1D3}\u{A}\u{11}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}\u{3}\u{12}'
  	'\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{13}\u{3}\u{14}\u{3}\u{14}\u{3}'
  	'\u{14}\u{3}\u{14}\u{7}\u{14}\u{1E1}\u{A}\u{14}\u{C}\u{14}\u{E}\u{14}'
  	'\u{1E4}\u{B}\u{14}\u{3}\u{14}\u{3}\u{14}\u{3}\u{15}\u{5}\u{15}\u{1E9}'
  	'\u{A}\u{15}\u{3}\u{15}\u{7}\u{15}\u{1EC}\u{A}\u{15}\u{C}\u{15}\u{E}\u{15}'
  	'\u{1EF}\u{B}\u{15}\u{3}\u{15}\u{3}\u{15}\u{5}\u{15}\u{1F3}\u{A}\u{15}'
  	'\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{15}\u{3}\u{16}\u{3}\u{16}\u{3}'
  	'\u{16}\u{7}\u{16}\u{1FC}\u{A}\u{16}\u{C}\u{16}\u{E}\u{16}\u{1FF}\u{B}'
  	'\u{16}\u{3}\u{17}\u{3}\u{17}\u{3}\u{17}\u{5}\u{17}\u{204}\u{A}\u{17}'
  	'\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{18}\u{7}\u{18}\u{20A}\u{A}\u{18}'
  	'\u{C}\u{18}\u{E}\u{18}\u{20D}\u{B}\u{18}\u{3}\u{18}\u{5}\u{18}\u{210}'
  	'\u{A}\u{18}\u{5}\u{18}\u{212}\u{A}\u{18}\u{3}\u{18}\u{3}\u{18}\u{3}\u{19}'
  	'\u{3}\u{19}\u{3}\u{19}\u{7}\u{19}\u{219}\u{A}\u{19}\u{C}\u{19}\u{E}\u{19}'
  	'\u{21C}\u{B}\u{19}\u{3}\u{19}\u{3}\u{19}\u{3}\u{1A}\u{3}\u{1A}\u{7}\u{1A}'
  	'\u{222}\u{A}\u{1A}\u{C}\u{1A}\u{E}\u{1A}\u{225}\u{B}\u{1A}\u{3}\u{1B}'
  	'\u{3}\u{1B}\u{5}\u{1B}\u{229}\u{A}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{5}\u{1B}'
  	'\u{22D}\u{A}\u{1B}\u{3}\u{1B}\u{3}\u{1B}\u{5}\u{1B}\u{231}\u{A}\u{1B}'
  	'\u{3}\u{1B}\u{3}\u{1B}\u{5}\u{1B}\u{235}\u{A}\u{1B}\u{5}\u{1B}\u{237}'
  	'\u{A}\u{1B}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1C}\u{3}\u{1D}\u{3}'
  	'\u{1D}\u{5}\u{1D}\u{23F}\u{A}\u{1D}\u{3}\u{1D}\u{3}\u{1D}\u{3}\u{1E}'
  	'\u{3}\u{1E}\u{3}\u{1E}\u{7}\u{1E}\u{246}\u{A}\u{1E}\u{C}\u{1E}\u{E}\u{1E}'
  	'\u{249}\u{B}\u{1E}\u{3}\u{1F}\u{7}\u{1F}\u{24C}\u{A}\u{1F}\u{C}\u{1F}'
  	'\u{E}\u{1F}\u{24F}\u{B}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{1F}\u{3}\u{20}'
  	'\u{3}\u{20}\u{3}\u{20}\u{7}\u{20}\u{257}\u{A}\u{20}\u{C}\u{20}\u{E}\u{20}'
  	'\u{25A}\u{B}\u{20}\u{3}\u{21}\u{3}\u{21}\u{3}\u{22}\u{3}\u{22}\u{3}\u{22}'
  	'\u{3}\u{22}\u{3}\u{22}\u{5}\u{22}\u{263}\u{A}\u{22}\u{3}\u{22}\u{5}\u{22}'
  	'\u{266}\u{A}\u{22}\u{3}\u{23}\u{3}\u{23}\u{5}\u{23}\u{26A}\u{A}\u{23}'
  	'\u{3}\u{23}\u{7}\u{23}\u{26D}\u{A}\u{23}\u{C}\u{23}\u{E}\u{23}\u{270}'
  	'\u{B}\u{23}\u{3}\u{24}\u{3}\u{24}\u{3}\u{24}\u{3}\u{24}\u{3}\u{25}\u{3}'
  	'\u{25}\u{3}\u{25}\u{5}\u{25}\u{279}\u{A}\u{25}\u{3}\u{26}\u{3}\u{26}'
  	'\u{3}\u{26}\u{3}\u{26}\u{7}\u{26}\u{27F}\u{A}\u{26}\u{C}\u{26}\u{E}\u{26}'
  	'\u{282}\u{B}\u{26}\u{5}\u{26}\u{284}\u{A}\u{26}\u{3}\u{26}\u{5}\u{26}'
  	'\u{287}\u{A}\u{26}\u{3}\u{26}\u{3}\u{26}\u{3}\u{27}\u{3}\u{27}\u{7}\u{27}'
  	'\u{28D}\u{A}\u{27}\u{C}\u{27}\u{E}\u{27}\u{290}\u{B}\u{27}\u{3}\u{27}'
  	'\u{3}\u{27}\u{3}\u{28}\u{3}\u{28}\u{3}\u{28}\u{3}\u{29}\u{7}\u{29}\u{298}'
  	'\u{A}\u{29}\u{C}\u{29}\u{E}\u{29}\u{29B}\u{B}\u{29}\u{3}\u{29}\u{3}\u{29}'
  	'\u{3}\u{29}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}'
  	'\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}'
  	'\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}\u{2A}\u{3}'
  	'\u{2A}\u{3}\u{2A}\u{5}\u{2A}\u{2B4}\u{A}\u{2A}\u{3}\u{2B}\u{3}\u{2B}'
  	'\u{3}\u{2B}\u{3}\u{2B}\u{3}\u{2B}\u{5}\u{2B}\u{2BB}\u{A}\u{2B}\u{3}\u{2C}'
  	'\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2C}\u{6}\u{2C}\u{2C2}\u{A}\u{2C}'
  	'\u{D}\u{2C}\u{E}\u{2C}\u{2C3}\u{3}\u{2C}\u{3}\u{2C}\u{3}\u{2D}\u{3}\u{2D}'
  	'\u{3}\u{2D}\u{3}\u{2D}\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{7}'
  	'\u{2E}\u{2D0}\u{A}\u{2E}\u{C}\u{2E}\u{E}\u{2E}\u{2D3}\u{B}\u{2E}\u{3}'
  	'\u{2E}\u{3}\u{2E}\u{3}\u{2E}\u{5}\u{2E}\u{2D8}\u{A}\u{2E}\u{3}\u{2F}'
  	'\u{5}\u{2F}\u{2DB}\u{A}\u{2F}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}\u{3}\u{2F}'
  	'\u{3}\u{2F}\u{5}\u{2F}\u{2E2}\u{A}\u{2F}\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}'
  	'\u{3}\u{30}\u{3}\u{30}\u{3}\u{30}\u{3}\u{31}\u{3}\u{31}\u{3}\u{31}\u{3}'
  	'\u{31}\u{3}\u{32}\u{3}\u{32}\u{3}\u{32}\u{3}\u{32}\u{3}\u{32}\u{3}\u{32}'
  	'\u{3}\u{33}\u{3}\u{33}\u{3}\u{33}\u{6}\u{33}\u{2F7}\u{A}\u{33}\u{D}\u{33}'
  	'\u{E}\u{33}\u{2F8}\u{3}\u{33}\u{5}\u{33}\u{2FC}\u{A}\u{33}\u{3}\u{33}'
  	'\u{5}\u{33}\u{2FF}\u{A}\u{33}\u{3}\u{34}\u{3}\u{34}\u{5}\u{34}\u{303}'
  	'\u{A}\u{34}\u{3}\u{34}\u{3}\u{34}\u{3}\u{35}\u{3}\u{35}\u{3}\u{35}\u{3}'
  	'\u{35}\u{3}\u{36}\u{3}\u{36}\u{3}\u{36}\u{3}\u{37}\u{3}\u{37}\u{3}\u{37}'
  	'\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{3}\u{38}\u{3}\u{39}\u{3}\u{39}\u{3}'
  	'\u{39}\u{3}\u{39}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3A}\u{3}\u{3B}'
  	'\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3B}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{5}'
  	'\u{3C}\u{324}\u{A}\u{3C}\u{3}\u{3C}\u{3}\u{3C}\u{3}\u{3D}\u{3}\u{3D}'
  	'\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3D}\u{3}\u{3E}\u{3}\u{3E}\u{3}\u{3E}\u{5}'
  	'\u{3E}\u{330}\u{A}\u{3E}\u{3}\u{3E}\u{3}\u{3E}\u{3}\u{3E}\u{3}\u{3F}'
  	'\u{3}\u{3F}\u{3}\u{3F}\u{3}\u{40}\u{7}\u{40}\u{339}\u{A}\u{40}\u{C}\u{40}'
  	'\u{E}\u{40}\u{33C}\u{B}\u{40}\u{3}\u{40}\u{3}\u{40}\u{5}\u{40}\u{340}'
  	'\u{A}\u{40}\u{3}\u{41}\u{3}\u{41}\u{3}\u{41}\u{5}\u{41}\u{345}\u{A}\u{41}'
  	'\u{3}\u{42}\u{3}\u{42}\u{3}\u{42}\u{5}\u{42}\u{34A}\u{A}\u{42}\u{3}\u{43}'
  	'\u{3}\u{43}\u{3}\u{43}\u{7}\u{43}\u{34F}\u{A}\u{43}\u{C}\u{43}\u{E}\u{43}'
  	'\u{352}\u{B}\u{43}\u{3}\u{43}\u{3}\u{43}\u{3}\u{43}\u{3}\u{43}\u{3}\u{43}'
  	'\u{3}\u{44}\u{3}\u{44}\u{3}\u{44}\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}\u{35E}'
  	'\u{A}\u{45}\u{3}\u{45}\u{3}\u{45}\u{5}\u{45}\u{362}\u{A}\u{45}\u{3}\u{45}'
  	'\u{3}\u{45}\u{5}\u{45}\u{366}\u{A}\u{45}\u{5}\u{45}\u{368}\u{A}\u{45}'
  	'\u{3}\u{46}\u{3}\u{46}\u{5}\u{46}\u{36C}\u{A}\u{46}\u{3}\u{47}\u{3}\u{47}'
  	'\u{3}\u{47}\u{3}\u{47}\u{3}\u{47}\u{3}\u{48}\u{3}\u{48}\u{3}\u{49}\u{3}'
  	'\u{49}\u{3}\u{49}\u{3}\u{49}\u{3}\u{4A}\u{3}\u{4A}\u{3}\u{4A}\u{7}\u{4A}'
  	'\u{37C}\u{A}\u{4A}\u{C}\u{4A}\u{E}\u{4A}\u{37F}\u{B}\u{4A}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}'
  	'\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{5}\u{4B}\u{393}\u{A}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}'
  	'\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{5}\u{4B}\u{3A3}\u{A}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{5}\u{4B}\u{3A9}\u{A}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}'
  	'\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}'
  	'\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{5}\u{4B}\u{3CB}\u{A}\u{4B}\u{3}\u{4B}'
  	'\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{3}'
  	'\u{4B}\u{3}\u{4B}\u{3}\u{4B}\u{7}\u{4B}\u{3D7}\u{A}\u{4B}\u{C}\u{4B}'
  	'\u{E}\u{4B}\u{3DA}\u{B}\u{4B}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}'
  	'\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{3}\u{4C}\u{5}'
  	'\u{4C}\u{3E6}\u{A}\u{4C}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{5}\u{4D}'
  	'\u{3EB}\u{A}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}'
  	'\u{5}\u{4D}\u{3F2}\u{A}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}\u{3}\u{4D}'
  	'\u{5}\u{4D}\u{3F8}\u{A}\u{4D}\u{3}\u{4D}\u{5}\u{4D}\u{3FB}\u{A}\u{4D}'
  	'\u{3}\u{4E}\u{3}\u{4E}\u{3}\u{4E}\u{5}\u{4E}\u{400}\u{A}\u{4E}\u{3}\u{4E}'
  	'\u{3}\u{4E}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{3}\u{4F}\u{3}'
  	'\u{4F}\u{5}\u{4F}\u{40A}\u{A}\u{4F}\u{3}\u{50}\u{3}\u{50}\u{3}\u{50}'
  	'\u{7}\u{50}\u{40F}\u{A}\u{50}\u{C}\u{50}\u{E}\u{50}\u{412}\u{B}\u{50}'
  	'\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{3}\u{51}\u{5}\u{51}\u{419}'
  	'\u{A}\u{51}\u{3}\u{52}\u{3}\u{52}\u{3}\u{52}\u{3}\u{53}\u{3}\u{53}\u{3}'
  	'\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}\u{3}\u{54}'
  	'\u{5}\u{54}\u{427}\u{A}\u{54}\u{5}\u{54}\u{429}\u{A}\u{54}\u{3}\u{55}'
  	'\u{3}\u{55}\u{3}\u{55}\u{3}\u{55}\u{7}\u{55}\u{42F}\u{A}\u{55}\u{C}\u{55}'
  	'\u{E}\u{55}\u{432}\u{B}\u{55}\u{3}\u{55}\u{3}\u{55}\u{3}\u{56}\u{3}\u{56}'
  	'\u{3}\u{56}\u{3}\u{56}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{3}\u{57}\u{7}'
  	'\u{57}\u{43E}\u{A}\u{57}\u{C}\u{57}\u{E}\u{57}\u{441}\u{B}\u{57}\u{3}'
  	'\u{57}\u{3}\u{57}\u{3}\u{58}\u{3}\u{58}\u{5}\u{58}\u{447}\u{A}\u{58}'
  	'\u{3}\u{58}\u{3}\u{58}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}\u{59}\u{3}'
  	'\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{454}'
  	'\u{A}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{457}\u{A}\u{5A}\u{3}\u{5A}\u{5}\u{5A}'
  	'\u{45A}\u{A}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{45D}\u{A}\u{5A}\u{3}\u{5A}'
  	'\u{5}\u{5A}\u{460}\u{A}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{463}\u{A}\u{5A}'
  	'\u{3}\u{5A}\u{5}\u{5A}\u{466}\u{A}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{469}'
  	'\u{A}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{3}\u{5A}\u{5}\u{5A}\u{46E}\u{A}\u{5A}'
  	'\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{5}\u{5B}\u{475}'
  	'\u{A}\u{5B}\u{3}\u{5B}\u{5}\u{5B}\u{478}\u{A}\u{5B}\u{3}\u{5B}\u{5}\u{5B}'
  	'\u{47B}\u{A}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{3}\u{5B}\u{5}\u{5B}\u{480}'
  	'\u{A}\u{5B}\u{3}\u{5C}\u{3}\u{5C}\u{3}\u{5C}\u{7}\u{5C}\u{485}\u{A}\u{5C}'
  	'\u{C}\u{5C}\u{E}\u{5C}\u{488}\u{B}\u{5C}\u{3}\u{5D}\u{3}\u{5D}\u{5}\u{5D}'
  	'\u{48C}\u{A}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{5}\u{5D}\u{490}\u{A}\u{5D}'
  	'\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{3}\u{5D}\u{5}\u{5D}\u{496}\u{A}\u{5D}'
  	'\u{3}\u{5D}\u{5}\u{5D}\u{499}\u{A}\u{5D}\u{3}\u{5E}\u{3}\u{5E}\u{3}\u{5E}'
  	'\u{7}\u{5E}\u{49E}\u{A}\u{5E}\u{C}\u{5E}\u{E}\u{5E}\u{4A1}\u{B}\u{5E}'
  	'\u{3}\u{5F}\u{3}\u{5F}\u{5}\u{5F}\u{4A5}\u{A}\u{5F}\u{3}\u{5F}\u{3}\u{5F}'
  	'\u{3}\u{5F}\u{5}\u{5F}\u{4AA}\u{A}\u{5F}\u{7}\u{5F}\u{4AC}\u{A}\u{5F}'
  	'\u{C}\u{5F}\u{E}\u{5F}\u{4AF}\u{B}\u{5F}\u{3}\u{60}\u{3}\u{60}\u{3}\u{60}'
  	'\u{7}\u{60}\u{4B4}\u{A}\u{60}\u{C}\u{60}\u{E}\u{60}\u{4B7}\u{B}\u{60}'
  	'\u{3}\u{61}\u{3}\u{61}\u{5}\u{61}\u{4BB}\u{A}\u{61}\u{3}\u{61}\u{3}\u{61}'
  	'\u{5}\u{61}\u{4BF}\u{A}\u{61}\u{5}\u{61}\u{4C1}\u{A}\u{61}\u{3}\u{62}'
  	'\u{3}\u{62}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}'
  	'\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}'
  	'\u{63}\u{3}\u{63}\u{3}\u{63}\u{3}\u{63}\u{5}\u{63}\u{536}\u{A}\u{63}'
  	'\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{3}\u{64}\u{5}'
  	'\u{64}\u{53E}\u{A}\u{64}\u{3}\u{65}\u{3}\u{65}\u{3}\u{65}\u{6}\u{65}'
  	'\u{543}\u{A}\u{65}\u{D}\u{65}\u{E}\u{65}\u{544}\u{3}\u{65}\u{5}\u{65}'
  	'\u{548}\u{A}\u{65}\u{3}\u{65}\u{3}\u{65}\u{3}\u{66}\u{3}\u{66}\u{3}\u{66}'
  	'\u{3}\u{66}\u{3}\u{66}\u{3}\u{67}\u{3}\u{67}\u{3}\u{67}\u{3}\u{68}\u{3}'
  	'\u{68}\u{3}\u{68}\u{7}\u{68}\u{557}\u{A}\u{68}\u{C}\u{68}\u{E}\u{68}'
  	'\u{55A}\u{B}\u{68}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{3}\u{69}\u{3}\u{6A}'
  	'\u{3}\u{6A}\u{3}\u{6A}\u{3}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{7}\u{6B}\u{566}'
  	'\u{A}\u{6B}\u{C}\u{6B}\u{E}\u{6B}\u{569}\u{B}\u{6B}\u{3}\u{6B}\u{3}\u{6B}'
  	'\u{3}\u{6B}\u{7}\u{6B}\u{56E}\u{A}\u{6B}\u{C}\u{6B}\u{E}\u{6B}\u{571}'
  	'\u{B}\u{6B}\u{3}\u{6B}\u{3}\u{6B}\u{5}\u{6B}\u{575}\u{A}\u{6B}\u{3}\u{6C}'
  	'\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{3}\u{6C}\u{5}\u{6C}\u{57C}\u{A}\u{6C}'
  	'\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{3}\u{6D}\u{3}'
  	'\u{6D}\u{3}\u{6D}\u{5}\u{6D}\u{586}\u{A}\u{6D}\u{3}\u{6E}\u{3}\u{6E}'
  	'\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}'
  	'\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}\u{3}\u{6E}'
  	'\u{5}\u{6E}\u{597}\u{A}\u{6E}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}'
  	'\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{5}'
  	'\u{6F}\u{5A3}\u{A}\u{6F}\u{5}\u{6F}\u{5A5}\u{A}\u{6F}\u{3}\u{6F}\u{3}'
  	'\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{3}\u{6F}\u{5}\u{6F}\u{5AD}'
  	'\u{A}\u{6F}\u{3}\u{70}\u{3}\u{70}\u{3}\u{70}\u{3}\u{70}\u{7}\u{70}\u{5B3}'
  	'\u{A}\u{70}\u{C}\u{70}\u{E}\u{70}\u{5B6}\u{B}\u{70}\u{3}\u{70}\u{3}\u{70}'
  	'\u{3}\u{71}\u{5}\u{71}\u{5BB}\u{A}\u{71}\u{3}\u{71}\u{3}\u{71}\u{3}\u{72}'
  	'\u{3}\u{72}\u{3}\u{72}\u{3}\u{72}\u{3}\u{72}\u{3}\u{72}\u{3}\u{72}\u{3}'
  	'\u{72}\u{5}\u{72}\u{5C7}\u{A}\u{72}\u{3}\u{73}\u{3}\u{73}\u{3}\u{73}'
  	'\u{7}\u{73}\u{5CC}\u{A}\u{73}\u{C}\u{73}\u{E}\u{73}\u{5CF}\u{B}\u{73}'
  	'\u{3}\u{74}\u{3}\u{74}\u{3}\u{74}\u{3}\u{74}\u{3}\u{75}\u{3}\u{75}\u{3}'
  	'\u{75}\u{3}\u{75}\u{3}\u{75}\u{7}\u{75}\u{5DA}\u{A}\u{75}\u{C}\u{75}'
  	'\u{E}\u{75}\u{5DD}\u{B}\u{75}\u{3}\u{75}\u{3}\u{75}\u{5}\u{75}\u{5E1}'
  	'\u{A}\u{75}\u{3}\u{76}\u{3}\u{76}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}'
  	'\u{77}\u{3}\u{77}\u{5}\u{77}\u{5EA}\u{A}\u{77}\u{3}\u{77}\u{3}\u{77}'
  	'\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{7}\u{77}\u{5F3}'
  	'\u{A}\u{77}\u{C}\u{77}\u{E}\u{77}\u{5F6}\u{B}\u{77}\u{3}\u{77}\u{3}\u{77}'
  	'\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}\u{77}\u{3}'
  	'\u{77}\u{7}\u{77}\u{601}\u{A}\u{77}\u{C}\u{77}\u{E}\u{77}\u{604}\u{B}'
  	'\u{77}\u{3}\u{77}\u{3}\u{77}\u{5}\u{77}\u{608}\u{A}\u{77}\u{3}\u{78}'
  	'\u{3}\u{78}\u{3}\u{78}\u{3}\u{78}\u{3}\u{79}\u{3}\u{79}\u{3}\u{79}\u{7}'
  	'\u{79}\u{611}\u{A}\u{79}\u{C}\u{79}\u{E}\u{79}\u{614}\u{B}\u{79}\u{3}'
  	'\u{7A}\u{3}\u{7A}\u{5}\u{7A}\u{618}\u{A}\u{7A}\u{3}\u{7A}\u{3}\u{7A}'
  	'\u{5}\u{7A}\u{61C}\u{A}\u{7A}\u{3}\u{7A}\u{3}\u{7A}\u{5}\u{7A}\u{620}'
  	'\u{A}\u{7A}\u{3}\u{7A}\u{3}\u{7A}\u{5}\u{7A}\u{624}\u{A}\u{7A}\u{5}\u{7A}'
  	'\u{626}\u{A}\u{7A}\u{3}\u{7B}\u{3}\u{7B}\u{3}\u{7B}\u{3}\u{7B}\u{5}\u{7B}'
  	'\u{62C}\u{A}\u{7B}\u{3}\u{7C}\u{3}\u{7C}\u{3}\u{7C}\u{3}\u{7C}\u{5}\u{7C}'
  	'\u{632}\u{A}\u{7C}\u{3}\u{7D}\u{3}\u{7D}\u{3}\u{7D}\u{3}\u{7E}\u{3}\u{7E}'
  	'\u{7}\u{7E}\u{639}\u{A}\u{7E}\u{C}\u{7E}\u{E}\u{7E}\u{63C}\u{B}\u{7E}'
  	'\u{3}\u{7F}\u{3}\u{7F}\u{3}\u{7F}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}'
  	'\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}'
  	'\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}'
  	'\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}'
  	'\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}'
  	'\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}'
  	'\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}'
  	'\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}'
  	'\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}'
  	'\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}'
  	'\u{3}\u{80}\u{3}\u{80}\u{3}\u{80}\u{5}\u{80}\u{682}\u{A}\u{80}\u{3}\u{81}'
  	'\u{5}\u{81}\u{685}\u{A}\u{81}\u{3}\u{81}\u{3}\u{81}\u{3}\u{82}\u{3}\u{82}'
  	'\u{3}\u{83}\u{3}\u{83}\u{3}\u{83}\u{3}\u{83}\u{3}\u{83}\u{3}\u{83}\u{3}'
  	'\u{83}\u{3}\u{83}\u{3}\u{83}\u{3}\u{83}\u{5}\u{83}\u{695}\u{A}\u{83}'
  	'\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{699}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{5}\u{84}\u{69D}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{5}\u{84}\u{6A3}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{5}\u{84}\u{6A9}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{6B2}\u{A}\u{84}\u{5}\u{84}'
  	'\u{6B4}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{6BD}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{6C3}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{6C9}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}'
  	'\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{6CF}\u{A}\u{84}\u{3}\u{84}\u{5}\u{84}'
  	'\u{6D2}\u{A}\u{84}\u{3}\u{84}\u{3}\u{84}\u{5}\u{84}\u{6D6}\u{A}\u{84}'
  	'\u{3}\u{85}\u{3}\u{85}\u{3}\u{85}\u{3}\u{86}\u{3}\u{86}\u{3}\u{86}\u{7}'
  	'\u{86}\u{6DE}\u{A}\u{86}\u{C}\u{86}\u{E}\u{86}\u{6E1}\u{B}\u{86}\u{3}'
  	'\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{5}\u{87}\u{6E8}'
  	'\u{A}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{5}\u{87}\u{6EE}'
  	'\u{A}\u{87}\u{3}\u{87}\u{3}\u{87}\u{3}\u{87}\u{5}\u{87}\u{6F3}\u{A}\u{87}'
  	'\u{3}\u{87}\u{5}\u{87}\u{6F6}\u{A}\u{87}\u{3}\u{87}\u{5}\u{87}\u{6F9}'
  	'\u{A}\u{87}\u{3}\u{87}\u{3}\u{87}\u{5}\u{87}\u{6FD}\u{A}\u{87}\u{3}\u{88}'
  	'\u{3}\u{88}\u{3}\u{88}\u{7}\u{88}\u{702}\u{A}\u{88}\u{C}\u{88}\u{E}\u{88}'
  	'\u{705}\u{B}\u{88}\u{3}\u{89}\u{3}\u{89}\u{3}\u{89}\u{5}\u{89}\u{70A}'
  	'\u{A}\u{89}\u{3}\u{8A}\u{3}\u{8A}\u{3}\u{8B}\u{3}\u{8B}\u{3}\u{8B}\u{5}'
  	'\u{8B}\u{711}\u{A}\u{8B}\u{3}\u{8C}\u{3}\u{8C}\u{3}\u{8C}\u{7}\u{8C}'
  	'\u{716}\u{A}\u{8C}\u{C}\u{8C}\u{E}\u{8C}\u{719}\u{B}\u{8C}\u{3}\u{8D}'
  	'\u{3}\u{8D}\u{3}\u{8E}\u{3}\u{8E}\u{3}\u{8E}\u{2}\u{3}\u{94}\u{8F}\u{2}'
  	'\u{4}\u{6}\u{8}\u{A}\u{C}\u{E}\u{10}\u{12}\u{14}\u{16}\u{18}\u{1A}\u{1C}'
  	'\u{1E}\u{20}\u{22}\u{24}\u{26}\u{28}\u{2A}\u{2C}\u{2E}\u{30}\u{32}\u{34}'
  	'\u{36}\u{38}\u{3A}\u{3C}\u{3E}\u{40}\u{42}\u{44}\u{46}\u{48}\u{4A}\u{4C}'
  	'\u{4E}\u{50}\u{52}\u{54}\u{56}\u{58}\u{5A}\u{5C}\u{5E}\u{60}\u{62}\u{64}'
  	'\u{66}\u{68}\u{6A}\u{6C}\u{6E}\u{70}\u{72}\u{74}\u{76}\u{78}\u{7A}\u{7C}'
  	'\u{7E}\u{80}\u{82}\u{84}\u{86}\u{88}\u{8A}\u{8C}\u{8E}\u{90}\u{92}\u{94}'
  	'\u{96}\u{98}\u{9A}\u{9C}\u{9E}\u{A0}\u{A2}\u{A4}\u{A6}\u{A8}\u{AA}\u{AC}'
  	'\u{AE}\u{B0}\u{B2}\u{B4}\u{B6}\u{B8}\u{BA}\u{BC}\u{BE}\u{C0}\u{C2}\u{C4}'
  	'\u{C6}\u{C8}\u{CA}\u{CC}\u{CE}\u{D0}\u{D2}\u{D4}\u{D6}\u{D8}\u{DA}\u{DC}'
  	'\u{DE}\u{E0}\u{E2}\u{E4}\u{E6}\u{E8}\u{EA}\u{EC}\u{EE}\u{F0}\u{F2}\u{F4}'
  	'\u{F6}\u{F8}\u{FA}\u{FC}\u{FE}\u{100}\u{102}\u{104}\u{106}\u{108}\u{10A}'
  	'\u{10C}\u{10E}\u{110}\u{112}\u{114}\u{116}\u{118}\u{11A}\u{2}\u{18}\u{3}'
  	'\u{2}\u{4}\u{5}\u{5}\u{2}\u{A}\u{A}\u{17}\u{17}\u{2F}\u{30}\u{4}\u{2}'
  	'\u{1C}\u{1C}\u{B4}\u{B8}\u{3}\u{2}\u{D2}\u{D5}\u{3}\u{2}\u{C6}\u{C7}'
  	'\u{4}\u{2}\u{D6}\u{D7}\u{DB}\u{DB}\u{3}\u{2}\u{D4}\u{D5}\u{3}\u{2}\u{C4}'
  	'\u{C5}\u{3}\u{2}\u{CB}\u{CF}\u{4}\u{2}\u{C3}\u{C3}\u{DD}\u{E7}\u{4}\u{2}'
  	'\u{C2}\u{C2}\u{C8}\u{C8}\u{3}\u{2}\u{D2}\u{D3}\u{4}\u{2}\u{5A}\u{5A}'
  	'\u{6D}\u{6E}\u{4}\u{2}\u{B4}\u{B4}\u{B6}\u{B6}\u{3}\u{2}\u{63}\u{66}'
  	'\u{3}\u{2}\u{54}\u{55}\u{3}\u{2}\u{57}\u{58}\u{5}\u{2}\u{30}\u{30}\u{5C}'
  	'\u{5C}\u{68}\u{68}\u{4}\u{2}\u{5A}\u{5A}\u{A6}\u{A9}\u{3}\u{2}\u{6B}'
  	'\u{6C}\u{E}\u{2}\u{4}\u{5}\u{12}\u{12}\u{16}\u{16}\u{18}\u{18}\u{24}'
  	'\u{25}\u{28}\u{28}\u{2C}\u{2D}\u{35}\u{35}\u{37}\u{38}\u{3B}\u{A1}\u{A4}'
  	'\u{B2}\u{EA}\u{EA}\u{7}\u{2}\u{3}\u{22}\u{24}\u{32}\u{34}\u{A1}\u{A4}'
  	'\u{B2}\u{EA}\u{EA}\u{2}\u{7E6}\u{2}\u{11C}\u{3}\u{2}\u{2}\u{2}\u{4}\u{12D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6}\u{130}\u{3}\u{2}\u{2}\u{2}\u{8}\u{151}\u{3}'
  	'\u{2}\u{2}\u{2}\u{A}\u{153}\u{3}\u{2}\u{2}\u{2}\u{C}\u{15F}\u{3}\u{2}'
  	'\u{2}\u{2}\u{E}\u{167}\u{3}\u{2}\u{2}\u{2}\u{10}\u{16F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{12}\u{177}\u{3}\u{2}\u{2}\u{2}\u{14}\u{17F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{16}\u{189}\u{3}\u{2}\u{2}\u{2}\u{18}\u{192}\u{3}\u{2}\u{2}\u{2}\u{1A}'
  	'\u{1AA}\u{3}\u{2}\u{2}\u{2}\u{1C}\u{1BF}\u{3}\u{2}\u{2}\u{2}\u{1E}\u{1C8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{20}\u{1CC}\u{3}\u{2}\u{2}\u{2}\u{22}\u{1D4}\u{3}'
  	'\u{2}\u{2}\u{2}\u{24}\u{1D8}\u{3}\u{2}\u{2}\u{2}\u{26}\u{1DC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{28}\u{1E8}\u{3}\u{2}\u{2}\u{2}\u{2A}\u{1F8}\u{3}\u{2}\u{2}'
  	'\u{2}\u{2C}\u{200}\u{3}\u{2}\u{2}\u{2}\u{2E}\u{205}\u{3}\u{2}\u{2}\u{2}'
  	'\u{30}\u{215}\u{3}\u{2}\u{2}\u{2}\u{32}\u{223}\u{3}\u{2}\u{2}\u{2}\u{34}'
  	'\u{236}\u{3}\u{2}\u{2}\u{2}\u{36}\u{238}\u{3}\u{2}\u{2}\u{2}\u{38}\u{23C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3A}\u{242}\u{3}\u{2}\u{2}\u{2}\u{3C}\u{24D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3E}\u{253}\u{3}\u{2}\u{2}\u{2}\u{40}\u{25B}\u{3}\u{2}'
  	'\u{2}\u{2}\u{42}\u{25D}\u{3}\u{2}\u{2}\u{2}\u{44}\u{267}\u{3}\u{2}\u{2}'
  	'\u{2}\u{46}\u{271}\u{3}\u{2}\u{2}\u{2}\u{48}\u{278}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4A}\u{27A}\u{3}\u{2}\u{2}\u{2}\u{4C}\u{28A}\u{3}\u{2}\u{2}\u{2}\u{4E}'
  	'\u{293}\u{3}\u{2}\u{2}\u{2}\u{50}\u{299}\u{3}\u{2}\u{2}\u{2}\u{52}\u{2B3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{54}\u{2B5}\u{3}\u{2}\u{2}\u{2}\u{56}\u{2BC}\u{3}'
  	'\u{2}\u{2}\u{2}\u{58}\u{2C7}\u{3}\u{2}\u{2}\u{2}\u{5A}\u{2D7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5C}\u{2E1}\u{3}\u{2}\u{2}\u{2}\u{5E}\u{2E3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{60}\u{2E9}\u{3}\u{2}\u{2}\u{2}\u{62}\u{2ED}\u{3}\u{2}\u{2}\u{2}'
  	'\u{64}\u{2F3}\u{3}\u{2}\u{2}\u{2}\u{66}\u{300}\u{3}\u{2}\u{2}\u{2}\u{68}'
  	'\u{306}\u{3}\u{2}\u{2}\u{2}\u{6A}\u{30A}\u{3}\u{2}\u{2}\u{2}\u{6C}\u{30D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{6E}\u{310}\u{3}\u{2}\u{2}\u{2}\u{70}\u{314}\u{3}'
  	'\u{2}\u{2}\u{2}\u{72}\u{318}\u{3}\u{2}\u{2}\u{2}\u{74}\u{31C}\u{3}\u{2}'
  	'\u{2}\u{2}\u{76}\u{320}\u{3}\u{2}\u{2}\u{2}\u{78}\u{327}\u{3}\u{2}\u{2}'
  	'\u{2}\u{7A}\u{32C}\u{3}\u{2}\u{2}\u{2}\u{7C}\u{334}\u{3}\u{2}\u{2}\u{2}'
  	'\u{7E}\u{33A}\u{3}\u{2}\u{2}\u{2}\u{80}\u{341}\u{3}\u{2}\u{2}\u{2}\u{82}'
  	'\u{346}\u{3}\u{2}\u{2}\u{2}\u{84}\u{34B}\u{3}\u{2}\u{2}\u{2}\u{86}\u{358}'
  	'\u{3}\u{2}\u{2}\u{2}\u{88}\u{367}\u{3}\u{2}\u{2}\u{2}\u{8A}\u{36B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{8C}\u{36D}\u{3}\u{2}\u{2}\u{2}\u{8E}\u{372}\u{3}\u{2}'
  	'\u{2}\u{2}\u{90}\u{374}\u{3}\u{2}\u{2}\u{2}\u{92}\u{378}\u{3}\u{2}\u{2}'
  	'\u{2}\u{94}\u{392}\u{3}\u{2}\u{2}\u{2}\u{96}\u{3E5}\u{3}\u{2}\u{2}\u{2}'
  	'\u{98}\u{3FA}\u{3}\u{2}\u{2}\u{2}\u{9A}\u{3FC}\u{3}\u{2}\u{2}\u{2}\u{9C}'
  	'\u{403}\u{3}\u{2}\u{2}\u{2}\u{9E}\u{40B}\u{3}\u{2}\u{2}\u{2}\u{A0}\u{413}'
  	'\u{3}\u{2}\u{2}\u{2}\u{A2}\u{41A}\u{3}\u{2}\u{2}\u{2}\u{A4}\u{41D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{A6}\u{428}\u{3}\u{2}\u{2}\u{2}\u{A8}\u{42A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{AA}\u{435}\u{3}\u{2}\u{2}\u{2}\u{AC}\u{439}\u{3}\u{2}\u{2}'
  	'\u{2}\u{AE}\u{444}\u{3}\u{2}\u{2}\u{2}\u{B0}\u{44A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{B2}\u{44E}\u{3}\u{2}\u{2}\u{2}\u{B4}\u{46F}\u{3}\u{2}\u{2}\u{2}\u{B6}'
  	'\u{481}\u{3}\u{2}\u{2}\u{2}\u{B8}\u{498}\u{3}\u{2}\u{2}\u{2}\u{BA}\u{49A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{BC}\u{4A2}\u{3}\u{2}\u{2}\u{2}\u{BE}\u{4B0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{C0}\u{4C0}\u{3}\u{2}\u{2}\u{2}\u{C2}\u{4C2}\u{3}\u{2}'
  	'\u{2}\u{2}\u{C4}\u{535}\u{3}\u{2}\u{2}\u{2}\u{C6}\u{53D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{C8}\u{53F}\u{3}\u{2}\u{2}\u{2}\u{CA}\u{54B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{CC}\u{550}\u{3}\u{2}\u{2}\u{2}\u{CE}\u{553}\u{3}\u{2}\u{2}\u{2}\u{D0}'
  	'\u{55B}\u{3}\u{2}\u{2}\u{2}\u{D2}\u{55F}\u{3}\u{2}\u{2}\u{2}\u{D4}\u{574}'
  	'\u{3}\u{2}\u{2}\u{2}\u{D6}\u{57B}\u{3}\u{2}\u{2}\u{2}\u{D8}\u{585}\u{3}'
  	'\u{2}\u{2}\u{2}\u{DA}\u{596}\u{3}\u{2}\u{2}\u{2}\u{DC}\u{5AC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{DE}\u{5AE}\u{3}\u{2}\u{2}\u{2}\u{E0}\u{5BA}\u{3}\u{2}\u{2}'
  	'\u{2}\u{E2}\u{5C6}\u{3}\u{2}\u{2}\u{2}\u{E4}\u{5C8}\u{3}\u{2}\u{2}\u{2}'
  	'\u{E6}\u{5D0}\u{3}\u{2}\u{2}\u{2}\u{E8}\u{5E0}\u{3}\u{2}\u{2}\u{2}\u{EA}'
  	'\u{5E2}\u{3}\u{2}\u{2}\u{2}\u{EC}\u{607}\u{3}\u{2}\u{2}\u{2}\u{EE}\u{609}'
  	'\u{3}\u{2}\u{2}\u{2}\u{F0}\u{60D}\u{3}\u{2}\u{2}\u{2}\u{F2}\u{625}\u{3}'
  	'\u{2}\u{2}\u{2}\u{F4}\u{62B}\u{3}\u{2}\u{2}\u{2}\u{F6}\u{631}\u{3}\u{2}'
  	'\u{2}\u{2}\u{F8}\u{633}\u{3}\u{2}\u{2}\u{2}\u{FA}\u{63A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{FC}\u{63D}\u{3}\u{2}\u{2}\u{2}\u{FE}\u{681}\u{3}\u{2}\u{2}\u{2}'
  	'\u{100}\u{684}\u{3}\u{2}\u{2}\u{2}\u{102}\u{688}\u{3}\u{2}\u{2}\u{2}'
  	'\u{104}\u{694}\u{3}\u{2}\u{2}\u{2}\u{106}\u{698}\u{3}\u{2}\u{2}\u{2}'
  	'\u{108}\u{6D7}\u{3}\u{2}\u{2}\u{2}\u{10A}\u{6DA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{10C}\u{6E2}\u{3}\u{2}\u{2}\u{2}\u{10E}\u{6FE}\u{3}\u{2}\u{2}\u{2}'
  	'\u{110}\u{706}\u{3}\u{2}\u{2}\u{2}\u{112}\u{70B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{114}\u{70D}\u{3}\u{2}\u{2}\u{2}\u{116}\u{712}\u{3}\u{2}\u{2}\u{2}'
  	'\u{118}\u{71A}\u{3}\u{2}\u{2}\u{2}\u{11A}\u{71C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{11C}\u{11D}\u{7}\u{2D}\u{2}\u{2}\u{11D}\u{11E}\u{5}\u{118}\u{8D}\u{2}'
  	'\u{11E}\u{11F}\u{7}\u{1D}\u{2}\u{2}\u{11F}\u{120}\u{5}\u{118}\u{8D}\u{2}'
  	'\u{120}\u{121}\u{7}\u{BA}\u{2}\u{2}\u{121}\u{126}\u{5}\u{4}\u{3}\u{2}'
  	'\u{122}\u{123}\u{7}\u{C1}\u{2}\u{2}\u{123}\u{125}\u{5}\u{4}\u{3}\u{2}'
  	'\u{124}\u{122}\u{3}\u{2}\u{2}\u{2}\u{125}\u{128}\u{3}\u{2}\u{2}\u{2}'
  	'\u{126}\u{124}\u{3}\u{2}\u{2}\u{2}\u{126}\u{127}\u{3}\u{2}\u{2}\u{2}'
  	'\u{127}\u{129}\u{3}\u{2}\u{2}\u{2}\u{128}\u{126}\u{3}\u{2}\u{2}\u{2}'
  	'\u{129}\u{12A}\u{7}\u{BB}\u{2}\u{2}\u{12A}\u{12B}\u{5}\u{4C}\u{27}\u{2}'
  	'\u{12B}\u{12C}\u{7}\u{2}\u{2}\u{3}\u{12C}\u{3}\u{3}\u{2}\u{2}\u{2}\u{12D}'
  	'\u{12E}\u{9}\u{2}\u{2}\u{2}\u{12E}\u{12F}\u{9}\u{3}\u{2}\u{2}\u{12F}'
  	'\u{5}\u{3}\u{2}\u{2}\u{2}\u{130}\u{131}\u{5}\u{8}\u{5}\u{2}\u{131}\u{132}'
  	'\u{7}\u{2}\u{2}\u{3}\u{132}\u{7}\u{3}\u{2}\u{2}\u{2}\u{133}\u{135}\u{7}'
  	'\u{ED}\u{2}\u{2}\u{134}\u{133}\u{3}\u{2}\u{2}\u{2}\u{134}\u{135}\u{3}'
  	'\u{2}\u{2}\u{2}\u{135}\u{139}\u{3}\u{2}\u{2}\u{2}\u{136}\u{138}\u{5}'
  	'\u{1C}\u{F}\u{2}\u{137}\u{136}\u{3}\u{2}\u{2}\u{2}\u{138}\u{13B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{139}\u{137}\u{3}\u{2}\u{2}\u{2}\u{139}\u{13A}\u{3}'
  	'\u{2}\u{2}\u{2}\u{13A}\u{13C}\u{3}\u{2}\u{2}\u{2}\u{13B}\u{139}\u{3}'
  	'\u{2}\u{2}\u{2}\u{13C}\u{152}\u{5}\u{A}\u{6}\u{2}\u{13D}\u{13F}\u{7}'
  	'\u{ED}\u{2}\u{2}\u{13E}\u{13D}\u{3}\u{2}\u{2}\u{2}\u{13E}\u{13F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{13F}\u{143}\u{3}\u{2}\u{2}\u{2}\u{140}\u{142}\u{5}'
  	'\u{1C}\u{F}\u{2}\u{141}\u{140}\u{3}\u{2}\u{2}\u{2}\u{142}\u{145}\u{3}'
  	'\u{2}\u{2}\u{2}\u{143}\u{141}\u{3}\u{2}\u{2}\u{2}\u{143}\u{144}\u{3}'
  	'\u{2}\u{2}\u{2}\u{144}\u{146}\u{3}\u{2}\u{2}\u{2}\u{145}\u{143}\u{3}'
  	'\u{2}\u{2}\u{2}\u{146}\u{152}\u{5}\u{C}\u{7}\u{2}\u{147}\u{149}\u{7}'
  	'\u{ED}\u{2}\u{2}\u{148}\u{147}\u{3}\u{2}\u{2}\u{2}\u{148}\u{149}\u{3}'
  	'\u{2}\u{2}\u{2}\u{149}\u{14D}\u{3}\u{2}\u{2}\u{2}\u{14A}\u{14C}\u{5}'
  	'\u{1C}\u{F}\u{2}\u{14B}\u{14A}\u{3}\u{2}\u{2}\u{2}\u{14C}\u{14F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{14D}\u{14B}\u{3}\u{2}\u{2}\u{2}\u{14D}\u{14E}\u{3}'
  	'\u{2}\u{2}\u{2}\u{14E}\u{150}\u{3}\u{2}\u{2}\u{2}\u{14F}\u{14D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{150}\u{152}\u{5}\u{10}\u{9}\u{2}\u{151}\u{134}\u{3}'
  	'\u{2}\u{2}\u{2}\u{151}\u{13E}\u{3}\u{2}\u{2}\u{2}\u{151}\u{148}\u{3}'
  	'\u{2}\u{2}\u{2}\u{152}\u{9}\u{3}\u{2}\u{2}\u{2}\u{153}\u{154}\u{7}\u{8}'
  	'\u{2}\u{2}\u{154}\u{157}\u{5}\u{118}\u{8D}\u{2}\u{155}\u{156}\u{7}\u{E}'
  	'\u{2}\u{2}\u{156}\u{158}\u{5}\u{30}\u{19}\u{2}\u{157}\u{155}\u{3}\u{2}'
  	'\u{2}\u{2}\u{157}\u{158}\u{3}\u{2}\u{2}\u{2}\u{158}\u{15B}\u{3}\u{2}'
  	'\u{2}\u{2}\u{159}\u{15A}\u{7}\u{15}\u{2}\u{2}\u{15A}\u{15C}\u{5}\u{12}'
  	'\u{A}\u{2}\u{15B}\u{159}\u{3}\u{2}\u{2}\u{2}\u{15B}\u{15C}\u{3}\u{2}'
  	'\u{2}\u{2}\u{15C}\u{15D}\u{3}\u{2}\u{2}\u{2}\u{15D}\u{15E}\u{5}\u{14}'
  	'\u{B}\u{2}\u{15E}\u{B}\u{3}\u{2}\u{2}\u{2}\u{15F}\u{160}\u{7}\u{D}\u{2}'
  	'\u{2}\u{160}\u{161}\u{5}\u{118}\u{8D}\u{2}\u{161}\u{163}\u{7}\u{BC}\u{2}'
  	'\u{2}\u{162}\u{164}\u{5}\u{E}\u{8}\u{2}\u{163}\u{162}\u{3}\u{2}\u{2}'
  	'\u{2}\u{163}\u{164}\u{3}\u{2}\u{2}\u{2}\u{164}\u{165}\u{3}\u{2}\u{2}'
  	'\u{2}\u{165}\u{166}\u{7}\u{BD}\u{2}\u{2}\u{166}\u{D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{167}\u{16C}\u{5}\u{118}\u{8D}\u{2}\u{168}\u{169}\u{7}\u{C1}\u{2}\u{2}'
  	'\u{169}\u{16B}\u{5}\u{118}\u{8D}\u{2}\u{16A}\u{168}\u{3}\u{2}\u{2}\u{2}'
  	'\u{16B}\u{16E}\u{3}\u{2}\u{2}\u{2}\u{16C}\u{16A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{16C}\u{16D}\u{3}\u{2}\u{2}\u{2}\u{16D}\u{F}\u{3}\u{2}\u{2}\u{2}\u{16E}'
  	'\u{16C}\u{3}\u{2}\u{2}\u{2}\u{16F}\u{170}\u{7}\u{19}\u{2}\u{2}\u{170}'
  	'\u{173}\u{5}\u{118}\u{8D}\u{2}\u{171}\u{172}\u{7}\u{E}\u{2}\u{2}\u{172}'
  	'\u{174}\u{5}\u{12}\u{A}\u{2}\u{173}\u{171}\u{3}\u{2}\u{2}\u{2}\u{173}'
  	'\u{174}\u{3}\u{2}\u{2}\u{2}\u{174}\u{175}\u{3}\u{2}\u{2}\u{2}\u{175}'
  	'\u{176}\u{5}\u{18}\u{D}\u{2}\u{176}\u{11}\u{3}\u{2}\u{2}\u{2}\u{177}'
  	'\u{17C}\u{5}\u{30}\u{19}\u{2}\u{178}\u{179}\u{7}\u{C1}\u{2}\u{2}\u{179}'
  	'\u{17B}\u{5}\u{30}\u{19}\u{2}\u{17A}\u{178}\u{3}\u{2}\u{2}\u{2}\u{17B}'
  	'\u{17E}\u{3}\u{2}\u{2}\u{2}\u{17C}\u{17A}\u{3}\u{2}\u{2}\u{2}\u{17C}'
  	'\u{17D}\u{3}\u{2}\u{2}\u{2}\u{17D}\u{13}\u{3}\u{2}\u{2}\u{2}\u{17E}\u{17C}'
  	'\u{3}\u{2}\u{2}\u{2}\u{17F}\u{184}\u{7}\u{BC}\u{2}\u{2}\u{180}\u{183}'
  	'\u{5}\u{16}\u{C}\u{2}\u{181}\u{183}\u{5}\u{1A}\u{E}\u{2}\u{182}\u{180}'
  	'\u{3}\u{2}\u{2}\u{2}\u{182}\u{181}\u{3}\u{2}\u{2}\u{2}\u{183}\u{186}'
  	'\u{3}\u{2}\u{2}\u{2}\u{184}\u{182}\u{3}\u{2}\u{2}\u{2}\u{184}\u{185}'
  	'\u{3}\u{2}\u{2}\u{2}\u{185}\u{187}\u{3}\u{2}\u{2}\u{2}\u{186}\u{184}'
  	'\u{3}\u{2}\u{2}\u{2}\u{187}\u{188}\u{7}\u{BD}\u{2}\u{2}\u{188}\u{15}'
  	'\u{3}\u{2}\u{2}\u{2}\u{189}\u{18D}\u{7}\u{EB}\u{2}\u{2}\u{18A}\u{18C}'
  	'\u{5}\u{1A}\u{E}\u{2}\u{18B}\u{18A}\u{3}\u{2}\u{2}\u{2}\u{18C}\u{18F}'
  	'\u{3}\u{2}\u{2}\u{2}\u{18D}\u{18B}\u{3}\u{2}\u{2}\u{2}\u{18D}\u{18E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{18E}\u{190}\u{3}\u{2}\u{2}\u{2}\u{18F}\u{18D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{190}\u{191}\u{7}\u{EC}\u{2}\u{2}\u{191}\u{17}'
  	'\u{3}\u{2}\u{2}\u{2}\u{192}\u{196}\u{7}\u{BC}\u{2}\u{2}\u{193}\u{195}'
  	'\u{5}\u{28}\u{15}\u{2}\u{194}\u{193}\u{3}\u{2}\u{2}\u{2}\u{195}\u{198}'
  	'\u{3}\u{2}\u{2}\u{2}\u{196}\u{194}\u{3}\u{2}\u{2}\u{2}\u{196}\u{197}'
  	'\u{3}\u{2}\u{2}\u{2}\u{197}\u{199}\u{3}\u{2}\u{2}\u{2}\u{198}\u{196}'
  	'\u{3}\u{2}\u{2}\u{2}\u{199}\u{19A}\u{7}\u{BD}\u{2}\u{2}\u{19A}\u{19}'
  	'\u{3}\u{2}\u{2}\u{2}\u{19B}\u{1AB}\u{7}\u{C0}\u{2}\u{2}\u{19C}\u{19E}'
  	'\u{7}\u{26}\u{2}\u{2}\u{19D}\u{19C}\u{3}\u{2}\u{2}\u{2}\u{19D}\u{19E}'
  	'\u{3}\u{2}\u{2}\u{2}\u{19E}\u{19F}\u{3}\u{2}\u{2}\u{2}\u{19F}\u{1AB}'
  	'\u{5}\u{4C}\u{27}\u{2}\u{1A0}\u{1A2}\u{7}\u{ED}\u{2}\u{2}\u{1A1}\u{1A0}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A1}\u{1A2}\u{3}\u{2}\u{2}\u{2}\u{1A2}\u{1A6}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A3}\u{1A5}\u{5}\u{1C}\u{F}\u{2}\u{1A4}\u{1A3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A5}\u{1A8}\u{3}\u{2}\u{2}\u{2}\u{1A6}\u{1A4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A6}\u{1A7}\u{3}\u{2}\u{2}\u{2}\u{1A7}\u{1A9}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1A8}\u{1A6}\u{3}\u{2}\u{2}\u{2}\u{1A9}\u{1AB}'
  	'\u{5}\u{1E}\u{10}\u{2}\u{1AA}\u{19B}\u{3}\u{2}\u{2}\u{2}\u{1AA}\u{19D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{1AA}\u{1A1}\u{3}\u{2}\u{2}\u{2}\u{1AB}\u{1B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1AC}\u{1C0}\u{5}\u{42}\u{22}\u{2}\u{1AD}\u{1C0}\u{7}'
  	'\u{13}\u{2}\u{2}\u{1AE}\u{1C0}\u{7}\u{21}\u{2}\u{2}\u{1AF}\u{1C0}\u{7}'
  	'\u{20}\u{2}\u{2}\u{1B0}\u{1C0}\u{7}\u{1F}\u{2}\u{2}\u{1B1}\u{1C0}\u{7}'
  	'\u{2C}\u{2}\u{2}\u{1B2}\u{1C0}\u{7}\u{26}\u{2}\u{2}\u{1B3}\u{1C0}\u{7}'
  	'\u{3}\u{2}\u{2}\u{1B4}\u{1C0}\u{7}\u{F}\u{2}\u{2}\u{1B5}\u{1C0}\u{7}'
  	'\u{34}\u{2}\u{2}\u{1B6}\u{1C0}\u{7}\u{1E}\u{2}\u{2}\u{1B7}\u{1C0}\u{7}'
  	'\u{32}\u{2}\u{2}\u{1B8}\u{1C0}\u{7}\u{29}\u{2}\u{2}\u{1B9}\u{1BA}\u{7}'
  	'\u{37}\u{2}\u{2}\u{1BA}\u{1C0}\u{7}\u{25}\u{2}\u{2}\u{1BB}\u{1BC}\u{7}'
  	'\u{38}\u{2}\u{2}\u{1BC}\u{1C0}\u{7}\u{25}\u{2}\u{2}\u{1BD}\u{1BE}\u{7}'
  	'\u{16}\u{2}\u{2}\u{1BE}\u{1C0}\u{7}\u{25}\u{2}\u{2}\u{1BF}\u{1AC}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1AD}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1AE}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1AF}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1B0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1B1}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1B2}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1B3}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1B4}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1B5}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1B6}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1B7}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1B8}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1B9}\u{3}\u{2}\u{2}\u{2}\u{1BF}\u{1BB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{1BF}\u{1BD}\u{3}\u{2}\u{2}\u{2}\u{1C0}\u{1D}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C1}\u{1C9}\u{5}\u{20}\u{11}\u{2}\u{1C2}\u{1C9}\u{5}\u{24}'
  	'\u{13}\u{2}\u{1C3}\u{1C9}\u{5}\u{22}\u{12}\u{2}\u{1C4}\u{1C9}\u{5}\u{10}'
  	'\u{9}\u{2}\u{1C5}\u{1C9}\u{5}\u{A}\u{6}\u{2}\u{1C6}\u{1C9}\u{5}\u{C}'
  	'\u{7}\u{2}\u{1C7}\u{1C9}\u{5}\u{26}\u{14}\u{2}\u{1C8}\u{1C1}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C8}\u{1C2}\u{3}\u{2}\u{2}\u{2}\u{1C8}\u{1C3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C8}\u{1C4}\u{3}\u{2}\u{2}\u{2}\u{1C8}\u{1C5}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C8}\u{1C6}\u{3}\u{2}\u{2}\u{2}\u{1C8}\u{1C7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1C9}\u{1F}\u{3}\u{2}\u{2}\u{2}\u{1CA}\u{1CD}\u{5}\u{30}'
  	'\u{19}\u{2}\u{1CB}\u{1CD}\u{7}\u{33}\u{2}\u{2}\u{1CC}\u{1CA}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1CC}\u{1CB}\u{3}\u{2}\u{2}\u{2}\u{1CD}\u{1CE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1CE}\u{1CF}\u{5}\u{118}\u{8D}\u{2}\u{1CF}\u{1D2}\u{5}\u{38}'
  	'\u{1D}\u{2}\u{1D0}\u{1D3}\u{5}\u{4C}\u{27}\u{2}\u{1D1}\u{1D3}\u{7}\u{C0}'
  	'\u{2}\u{2}\u{1D2}\u{1D0}\u{3}\u{2}\u{2}\u{2}\u{1D2}\u{1D1}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1D3}\u{21}\u{3}\u{2}\u{2}\u{2}\u{1D4}\u{1D5}\u{5}\u{3E}'
  	'\u{20}\u{2}\u{1D5}\u{1D6}\u{5}\u{38}\u{1D}\u{2}\u{1D6}\u{1D7}\u{5}\u{4C}'
  	'\u{27}\u{2}\u{1D7}\u{23}\u{3}\u{2}\u{2}\u{2}\u{1D8}\u{1D9}\u{5}\u{30}'
  	'\u{19}\u{2}\u{1D9}\u{1DA}\u{5}\u{2A}\u{16}\u{2}\u{1DA}\u{1DB}\u{7}\u{C0}'
  	'\u{2}\u{2}\u{1DB}\u{25}\u{3}\u{2}\u{2}\u{2}\u{1DC}\u{1DD}\u{5}\u{30}'
  	'\u{19}\u{2}\u{1DD}\u{1DE}\u{5}\u{118}\u{8D}\u{2}\u{1DE}\u{1E2}\u{7}\u{BC}'
  	'\u{2}\u{2}\u{1DF}\u{1E1}\u{5}\u{7E}\u{40}\u{2}\u{1E0}\u{1DF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1E1}\u{1E4}\u{3}\u{2}\u{2}\u{2}\u{1E2}\u{1E0}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1E2}\u{1E3}\u{3}\u{2}\u{2}\u{2}\u{1E3}\u{1E5}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1E4}\u{1E2}\u{3}\u{2}\u{2}\u{2}\u{1E5}\u{1E6}\u{7}\u{BD}'
  	'\u{2}\u{2}\u{1E6}\u{27}\u{3}\u{2}\u{2}\u{2}\u{1E7}\u{1E9}\u{7}\u{ED}'
  	'\u{2}\u{2}\u{1E8}\u{1E7}\u{3}\u{2}\u{2}\u{2}\u{1E8}\u{1E9}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1E9}\u{1ED}\u{3}\u{2}\u{2}\u{2}\u{1EA}\u{1EC}\u{5}\u{1C}'
  	'\u{F}\u{2}\u{1EB}\u{1EA}\u{3}\u{2}\u{2}\u{2}\u{1EC}\u{1EF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1ED}\u{1EB}\u{3}\u{2}\u{2}\u{2}\u{1ED}\u{1EE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1EE}\u{1F2}\u{3}\u{2}\u{2}\u{2}\u{1EF}\u{1ED}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1F0}\u{1F3}\u{5}\u{30}\u{19}\u{2}\u{1F1}\u{1F3}\u{7}\u{33}'
  	'\u{2}\u{2}\u{1F2}\u{1F0}\u{3}\u{2}\u{2}\u{2}\u{1F2}\u{1F1}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1F3}\u{1F4}\u{3}\u{2}\u{2}\u{2}\u{1F4}\u{1F5}\u{5}\u{118}'
  	'\u{8D}\u{2}\u{1F5}\u{1F6}\u{5}\u{38}\u{1D}\u{2}\u{1F6}\u{1F7}\u{7}\u{C0}'
  	'\u{2}\u{2}\u{1F7}\u{29}\u{3}\u{2}\u{2}\u{2}\u{1F8}\u{1FD}\u{5}\u{2C}'
  	'\u{17}\u{2}\u{1F9}\u{1FA}\u{7}\u{C1}\u{2}\u{2}\u{1FA}\u{1FC}\u{5}\u{2C}'
  	'\u{17}\u{2}\u{1FB}\u{1F9}\u{3}\u{2}\u{2}\u{2}\u{1FC}\u{1FF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1FD}\u{1FB}\u{3}\u{2}\u{2}\u{2}\u{1FD}\u{1FE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{1FE}\u{2B}\u{3}\u{2}\u{2}\u{2}\u{1FF}\u{1FD}\u{3}\u{2}\u{2}'
  	'\u{2}\u{200}\u{203}\u{5}\u{118}\u{8D}\u{2}\u{201}\u{202}\u{7}\u{C3}\u{2}'
  	'\u{2}\u{202}\u{204}\u{5}\u{94}\u{4B}\u{2}\u{203}\u{201}\u{3}\u{2}\u{2}'
  	'\u{2}\u{203}\u{204}\u{3}\u{2}\u{2}\u{2}\u{204}\u{2D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{205}\u{211}\u{7}\u{BC}\u{2}\u{2}\u{206}\u{20B}\u{5}\u{94}\u{4B}\u{2}'
  	'\u{207}\u{208}\u{7}\u{C1}\u{2}\u{2}\u{208}\u{20A}\u{5}\u{94}\u{4B}\u{2}'
  	'\u{209}\u{207}\u{3}\u{2}\u{2}\u{2}\u{20A}\u{20D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{20B}\u{209}\u{3}\u{2}\u{2}\u{2}\u{20B}\u{20C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{20C}\u{20F}\u{3}\u{2}\u{2}\u{2}\u{20D}\u{20B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{20E}\u{210}\u{7}\u{C1}\u{2}\u{2}\u{20F}\u{20E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{20F}\u{210}\u{3}\u{2}\u{2}\u{2}\u{210}\u{212}\u{3}\u{2}\u{2}\u{2}'
  	'\u{211}\u{206}\u{3}\u{2}\u{2}\u{2}\u{211}\u{212}\u{3}\u{2}\u{2}\u{2}'
  	'\u{212}\u{213}\u{3}\u{2}\u{2}\u{2}\u{213}\u{214}\u{7}\u{BD}\u{2}\u{2}'
  	'\u{214}\u{2F}\u{3}\u{2}\u{2}\u{2}\u{215}\u{21A}\u{5}\u{34}\u{1B}\u{2}'
  	'\u{216}\u{217}\u{7}\u{C2}\u{2}\u{2}\u{217}\u{219}\u{5}\u{34}\u{1B}\u{2}'
  	'\u{218}\u{216}\u{3}\u{2}\u{2}\u{2}\u{219}\u{21C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{21A}\u{218}\u{3}\u{2}\u{2}\u{2}\u{21A}\u{21B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{21B}\u{21D}\u{3}\u{2}\u{2}\u{2}\u{21C}\u{21A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{21D}\u{21E}\u{5}\u{32}\u{1A}\u{2}\u{21E}\u{31}\u{3}\u{2}\u{2}\u{2}'
  	'\u{21F}\u{220}\u{7}\u{BE}\u{2}\u{2}\u{220}\u{222}\u{7}\u{BF}\u{2}\u{2}'
  	'\u{221}\u{21F}\u{3}\u{2}\u{2}\u{2}\u{222}\u{225}\u{3}\u{2}\u{2}\u{2}'
  	'\u{223}\u{221}\u{3}\u{2}\u{2}\u{2}\u{223}\u{224}\u{3}\u{2}\u{2}\u{2}'
  	'\u{224}\u{33}\u{3}\u{2}\u{2}\u{2}\u{225}\u{223}\u{3}\u{2}\u{2}\u{2}\u{226}'
  	'\u{228}\u{7}\u{39}\u{2}\u{2}\u{227}\u{229}\u{5}\u{36}\u{1C}\u{2}\u{228}'
  	'\u{227}\u{3}\u{2}\u{2}\u{2}\u{228}\u{229}\u{3}\u{2}\u{2}\u{2}\u{229}'
  	'\u{237}\u{3}\u{2}\u{2}\u{2}\u{22A}\u{22C}\u{7}\u{24}\u{2}\u{2}\u{22B}'
  	'\u{22D}\u{5}\u{36}\u{1C}\u{2}\u{22C}\u{22B}\u{3}\u{2}\u{2}\u{2}\u{22C}'
  	'\u{22D}\u{3}\u{2}\u{2}\u{2}\u{22D}\u{237}\u{3}\u{2}\u{2}\u{2}\u{22E}'
  	'\u{230}\u{7}\u{3A}\u{2}\u{2}\u{22F}\u{231}\u{5}\u{36}\u{1C}\u{2}\u{230}'
  	'\u{22F}\u{3}\u{2}\u{2}\u{2}\u{230}\u{231}\u{3}\u{2}\u{2}\u{2}\u{231}'
  	'\u{237}\u{3}\u{2}\u{2}\u{2}\u{232}\u{234}\u{5}\u{118}\u{8D}\u{2}\u{233}'
  	'\u{235}\u{5}\u{36}\u{1C}\u{2}\u{234}\u{233}\u{3}\u{2}\u{2}\u{2}\u{234}'
  	'\u{235}\u{3}\u{2}\u{2}\u{2}\u{235}\u{237}\u{3}\u{2}\u{2}\u{2}\u{236}'
  	'\u{226}\u{3}\u{2}\u{2}\u{2}\u{236}\u{22A}\u{3}\u{2}\u{2}\u{2}\u{236}'
  	'\u{22E}\u{3}\u{2}\u{2}\u{2}\u{236}\u{232}\u{3}\u{2}\u{2}\u{2}\u{237}'
  	'\u{35}\u{3}\u{2}\u{2}\u{2}\u{238}\u{239}\u{7}\u{C5}\u{2}\u{2}\u{239}'
  	'\u{23A}\u{5}\u{12}\u{A}\u{2}\u{23A}\u{23B}\u{7}\u{C4}\u{2}\u{2}\u{23B}'
  	'\u{37}\u{3}\u{2}\u{2}\u{2}\u{23C}\u{23E}\u{7}\u{BA}\u{2}\u{2}\u{23D}'
  	'\u{23F}\u{5}\u{3A}\u{1E}\u{2}\u{23E}\u{23D}\u{3}\u{2}\u{2}\u{2}\u{23E}'
  	'\u{23F}\u{3}\u{2}\u{2}\u{2}\u{23F}\u{240}\u{3}\u{2}\u{2}\u{2}\u{240}'
  	'\u{241}\u{7}\u{BB}\u{2}\u{2}\u{241}\u{39}\u{3}\u{2}\u{2}\u{2}\u{242}'
  	'\u{247}\u{5}\u{3C}\u{1F}\u{2}\u{243}\u{244}\u{7}\u{C1}\u{2}\u{2}\u{244}'
  	'\u{246}\u{5}\u{3C}\u{1F}\u{2}\u{245}\u{243}\u{3}\u{2}\u{2}\u{2}\u{246}'
  	'\u{249}\u{3}\u{2}\u{2}\u{2}\u{247}\u{245}\u{3}\u{2}\u{2}\u{2}\u{247}'
  	'\u{248}\u{3}\u{2}\u{2}\u{2}\u{248}\u{3B}\u{3}\u{2}\u{2}\u{2}\u{249}\u{247}'
  	'\u{3}\u{2}\u{2}\u{2}\u{24A}\u{24C}\u{5}\u{1C}\u{F}\u{2}\u{24B}\u{24A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{24C}\u{24F}\u{3}\u{2}\u{2}\u{2}\u{24D}\u{24B}'
  	'\u{3}\u{2}\u{2}\u{2}\u{24D}\u{24E}\u{3}\u{2}\u{2}\u{2}\u{24E}\u{250}'
  	'\u{3}\u{2}\u{2}\u{2}\u{24F}\u{24D}\u{3}\u{2}\u{2}\u{2}\u{250}\u{251}'
  	'\u{5}\u{30}\u{19}\u{2}\u{251}\u{252}\u{5}\u{118}\u{8D}\u{2}\u{252}\u{3D}'
  	'\u{3}\u{2}\u{2}\u{2}\u{253}\u{258}\u{5}\u{118}\u{8D}\u{2}\u{254}\u{255}'
  	'\u{7}\u{C2}\u{2}\u{2}\u{255}\u{257}\u{5}\u{118}\u{8D}\u{2}\u{256}\u{254}'
  	'\u{3}\u{2}\u{2}\u{2}\u{257}\u{25A}\u{3}\u{2}\u{2}\u{2}\u{258}\u{256}'
  	'\u{3}\u{2}\u{2}\u{2}\u{258}\u{259}\u{3}\u{2}\u{2}\u{2}\u{259}\u{3F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{25A}\u{258}\u{3}\u{2}\u{2}\u{2}\u{25B}\u{25C}\u{9}'
  	'\u{4}\u{2}\u{2}\u{25C}\u{41}\u{3}\u{2}\u{2}\u{2}\u{25D}\u{25E}\u{7}\u{E8}'
  	'\u{2}\u{2}\u{25E}\u{265}\u{5}\u{3E}\u{20}\u{2}\u{25F}\u{262}\u{7}\u{BA}'
  	'\u{2}\u{2}\u{260}\u{263}\u{5}\u{44}\u{23}\u{2}\u{261}\u{263}\u{5}\u{48}'
  	'\u{25}\u{2}\u{262}\u{260}\u{3}\u{2}\u{2}\u{2}\u{262}\u{261}\u{3}\u{2}'
  	'\u{2}\u{2}\u{262}\u{263}\u{3}\u{2}\u{2}\u{2}\u{263}\u{264}\u{3}\u{2}'
  	'\u{2}\u{2}\u{264}\u{266}\u{7}\u{BB}\u{2}\u{2}\u{265}\u{25F}\u{3}\u{2}'
  	'\u{2}\u{2}\u{265}\u{266}\u{3}\u{2}\u{2}\u{2}\u{266}\u{43}\u{3}\u{2}\u{2}'
  	'\u{2}\u{267}\u{26E}\u{5}\u{46}\u{24}\u{2}\u{268}\u{26A}\u{7}\u{C1}\u{2}'
  	'\u{2}\u{269}\u{268}\u{3}\u{2}\u{2}\u{2}\u{269}\u{26A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{26A}\u{26B}\u{3}\u{2}\u{2}\u{2}\u{26B}\u{26D}\u{5}\u{46}\u{24}'
  	'\u{2}\u{26C}\u{269}\u{3}\u{2}\u{2}\u{2}\u{26D}\u{270}\u{3}\u{2}\u{2}'
  	'\u{2}\u{26E}\u{26C}\u{3}\u{2}\u{2}\u{2}\u{26E}\u{26F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{26F}\u{45}\u{3}\u{2}\u{2}\u{2}\u{270}\u{26E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{271}\u{272}\u{5}\u{118}\u{8D}\u{2}\u{272}\u{273}\u{7}\u{C3}\u{2}\u{2}'
  	'\u{273}\u{274}\u{5}\u{48}\u{25}\u{2}\u{274}\u{47}\u{3}\u{2}\u{2}\u{2}'
  	'\u{275}\u{279}\u{5}\u{94}\u{4B}\u{2}\u{276}\u{279}\u{5}\u{42}\u{22}\u{2}'
  	'\u{277}\u{279}\u{5}\u{4A}\u{26}\u{2}\u{278}\u{275}\u{3}\u{2}\u{2}\u{2}'
  	'\u{278}\u{276}\u{3}\u{2}\u{2}\u{2}\u{278}\u{277}\u{3}\u{2}\u{2}\u{2}'
  	'\u{279}\u{49}\u{3}\u{2}\u{2}\u{2}\u{27A}\u{283}\u{7}\u{BC}\u{2}\u{2}'
  	'\u{27B}\u{280}\u{5}\u{48}\u{25}\u{2}\u{27C}\u{27D}\u{7}\u{C1}\u{2}\u{2}'
  	'\u{27D}\u{27F}\u{5}\u{48}\u{25}\u{2}\u{27E}\u{27C}\u{3}\u{2}\u{2}\u{2}'
  	'\u{27F}\u{282}\u{3}\u{2}\u{2}\u{2}\u{280}\u{27E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{280}\u{281}\u{3}\u{2}\u{2}\u{2}\u{281}\u{284}\u{3}\u{2}\u{2}\u{2}'
  	'\u{282}\u{280}\u{3}\u{2}\u{2}\u{2}\u{283}\u{27B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{283}\u{284}\u{3}\u{2}\u{2}\u{2}\u{284}\u{286}\u{3}\u{2}\u{2}\u{2}'
  	'\u{285}\u{287}\u{7}\u{C1}\u{2}\u{2}\u{286}\u{285}\u{3}\u{2}\u{2}\u{2}'
  	'\u{286}\u{287}\u{3}\u{2}\u{2}\u{2}\u{287}\u{288}\u{3}\u{2}\u{2}\u{2}'
  	'\u{288}\u{289}\u{7}\u{BD}\u{2}\u{2}\u{289}\u{4B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{28A}\u{28E}\u{7}\u{BC}\u{2}\u{2}\u{28B}\u{28D}\u{5}\u{52}\u{2A}\u{2}'
  	'\u{28C}\u{28B}\u{3}\u{2}\u{2}\u{2}\u{28D}\u{290}\u{3}\u{2}\u{2}\u{2}'
  	'\u{28E}\u{28C}\u{3}\u{2}\u{2}\u{2}\u{28E}\u{28F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{28F}\u{291}\u{3}\u{2}\u{2}\u{2}\u{290}\u{28E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{291}\u{292}\u{7}\u{BD}\u{2}\u{2}\u{292}\u{4D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{293}\u{294}\u{5}\u{50}\u{29}\u{2}\u{294}\u{295}\u{7}\u{C0}\u{2}\u{2}'
  	'\u{295}\u{4F}\u{3}\u{2}\u{2}\u{2}\u{296}\u{298}\u{5}\u{1C}\u{F}\u{2}'
  	'\u{297}\u{296}\u{3}\u{2}\u{2}\u{2}\u{298}\u{29B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{299}\u{297}\u{3}\u{2}\u{2}\u{2}\u{299}\u{29A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{29A}\u{29C}\u{3}\u{2}\u{2}\u{2}\u{29B}\u{299}\u{3}\u{2}\u{2}\u{2}'
  	'\u{29C}\u{29D}\u{5}\u{30}\u{19}\u{2}\u{29D}\u{29E}\u{5}\u{2A}\u{16}\u{2}'
  	'\u{29E}\u{51}\u{3}\u{2}\u{2}\u{2}\u{29F}\u{2B4}\u{5}\u{4C}\u{27}\u{2}'
  	'\u{2A0}\u{2B4}\u{5}\u{54}\u{2B}\u{2}\u{2A1}\u{2B4}\u{5}\u{56}\u{2C}\u{2}'
  	'\u{2A2}\u{2B4}\u{5}\u{5E}\u{30}\u{2}\u{2A3}\u{2B4}\u{5}\u{60}\u{31}\u{2}'
  	'\u{2A4}\u{2B4}\u{5}\u{62}\u{32}\u{2}\u{2A5}\u{2B4}\u{5}\u{64}\u{33}\u{2}'
  	'\u{2A6}\u{2B4}\u{5}\u{66}\u{34}\u{2}\u{2A7}\u{2B4}\u{5}\u{68}\u{35}\u{2}'
  	'\u{2A8}\u{2B4}\u{5}\u{6A}\u{36}\u{2}\u{2A9}\u{2B4}\u{5}\u{6C}\u{37}\u{2}'
  	'\u{2AA}\u{2B4}\u{5}\u{6E}\u{38}\u{2}\u{2AB}\u{2B4}\u{5}\u{70}\u{39}\u{2}'
  	'\u{2AC}\u{2B4}\u{5}\u{72}\u{3A}\u{2}\u{2AD}\u{2B4}\u{5}\u{74}\u{3B}\u{2}'
  	'\u{2AE}\u{2B4}\u{5}\u{76}\u{3C}\u{2}\u{2AF}\u{2B4}\u{5}\u{78}\u{3D}\u{2}'
  	'\u{2B0}\u{2B4}\u{5}\u{7A}\u{3E}\u{2}\u{2B1}\u{2B4}\u{5}\u{4E}\u{28}\u{2}'
  	'\u{2B2}\u{2B4}\u{5}\u{7C}\u{3F}\u{2}\u{2B3}\u{29F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2A0}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2A1}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2A2}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2A3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2A4}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2A5}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2A6}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2A7}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2A8}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2A9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2AA}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2AB}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2AC}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2AD}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2AE}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2AF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2B0}\u{3}\u{2}\u{2}\u{2}\u{2B3}\u{2B1}\u{3}\u{2}\u{2}\u{2}'
  	'\u{2B3}\u{2B2}\u{3}\u{2}\u{2}\u{2}\u{2B4}\u{53}\u{3}\u{2}\u{2}\u{2}\u{2B5}'
  	'\u{2B6}\u{7}\u{14}\u{2}\u{2}\u{2B6}\u{2B7}\u{5}\u{90}\u{49}\u{2}\u{2B7}'
  	'\u{2BA}\u{5}\u{52}\u{2A}\u{2}\u{2B8}\u{2B9}\u{7}\u{C}\u{2}\u{2}\u{2B9}'
  	'\u{2BB}\u{5}\u{52}\u{2A}\u{2}\u{2BA}\u{2B8}\u{3}\u{2}\u{2}\u{2}\u{2BA}'
  	'\u{2BB}\u{3}\u{2}\u{2}\u{2}\u{2BB}\u{55}\u{3}\u{2}\u{2}\u{2}\u{2BC}\u{2BD}'
  	'\u{7}\u{28}\u{2}\u{2}\u{2BD}\u{2BE}\u{7}\u{1D}\u{2}\u{2}\u{2BE}\u{2BF}'
  	'\u{5}\u{94}\u{4B}\u{2}\u{2BF}\u{2C1}\u{7}\u{BC}\u{2}\u{2}\u{2C0}\u{2C2}'
  	'\u{5}\u{58}\u{2D}\u{2}\u{2C1}\u{2C0}\u{3}\u{2}\u{2}\u{2}\u{2C2}\u{2C3}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2C3}\u{2C1}\u{3}\u{2}\u{2}\u{2}\u{2C3}\u{2C4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2C4}\u{2C5}\u{3}\u{2}\u{2}\u{2}\u{2C5}\u{2C6}'
  	'\u{7}\u{BD}\u{2}\u{2}\u{2C6}\u{57}\u{3}\u{2}\u{2}\u{2}\u{2C7}\u{2C8}'
  	'\u{7}\u{35}\u{2}\u{2}\u{2C8}\u{2C9}\u{5}\u{5A}\u{2E}\u{2}\u{2C9}\u{2CA}'
  	'\u{5}\u{4C}\u{27}\u{2}\u{2CA}\u{59}\u{3}\u{2}\u{2}\u{2}\u{2CB}\u{2D8}'
  	'\u{7}\u{C}\u{2}\u{2}\u{2CC}\u{2D1}\u{5}\u{5C}\u{2F}\u{2}\u{2CD}\u{2CE}'
  	'\u{7}\u{C1}\u{2}\u{2}\u{2CE}\u{2D0}\u{5}\u{5C}\u{2F}\u{2}\u{2CF}\u{2CD}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2D0}\u{2D3}\u{3}\u{2}\u{2}\u{2}\u{2D1}\u{2CF}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2D1}\u{2D2}\u{3}\u{2}\u{2}\u{2}\u{2D2}\u{2D8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2D3}\u{2D1}\u{3}\u{2}\u{2}\u{2}\u{2D4}\u{2D5}'
  	'\u{5}\u{118}\u{8D}\u{2}\u{2D5}\u{2D6}\u{5}\u{118}\u{8D}\u{2}\u{2D6}\u{2D8}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2D7}\u{2CB}\u{3}\u{2}\u{2}\u{2}\u{2D7}\u{2CC}'
  	'\u{3}\u{2}\u{2}\u{2}\u{2D7}\u{2D4}\u{3}\u{2}\u{2}\u{2}\u{2D8}\u{5B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2D9}\u{2DB}\u{7}\u{D5}\u{2}\u{2}\u{2DA}\u{2D9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2DA}\u{2DB}\u{3}\u{2}\u{2}\u{2}\u{2DB}\u{2DC}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2DC}\u{2E2}\u{7}\u{B4}\u{2}\u{2}\u{2DD}\u{2E2}\u{7}'
  	'\u{B5}\u{2}\u{2}\u{2DE}\u{2E2}\u{7}\u{B8}\u{2}\u{2}\u{2DF}\u{2E2}\u{7}'
  	'\u{1C}\u{2}\u{2}\u{2E0}\u{2E2}\u{5}\u{118}\u{8D}\u{2}\u{2E1}\u{2DA}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2E1}\u{2DD}\u{3}\u{2}\u{2}\u{2}\u{2E1}\u{2DE}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2E1}\u{2DF}\u{3}\u{2}\u{2}\u{2}\u{2E1}\u{2E0}\u{3}'
  	'\u{2}\u{2}\u{2}\u{2E2}\u{5D}\u{3}\u{2}\u{2}\u{2}\u{2E3}\u{2E4}\u{7}\u{11}'
  	'\u{2}\u{2}\u{2E4}\u{2E5}\u{7}\u{BA}\u{2}\u{2}\u{2E5}\u{2E6}\u{5}\u{88}'
  	'\u{45}\u{2}\u{2E6}\u{2E7}\u{7}\u{BB}\u{2}\u{2}\u{2E7}\u{2E8}\u{5}\u{52}'
  	'\u{2A}\u{2}\u{2E8}\u{5F}\u{3}\u{2}\u{2}\u{2}\u{2E9}\u{2EA}\u{7}\u{36}'
  	'\u{2}\u{2}\u{2EA}\u{2EB}\u{5}\u{90}\u{49}\u{2}\u{2EB}\u{2EC}\u{5}\u{52}'
  	'\u{2A}\u{2}\u{2EC}\u{61}\u{3}\u{2}\u{2}\u{2}\u{2ED}\u{2EE}\u{7}\u{B}'
  	'\u{2}\u{2}\u{2EE}\u{2EF}\u{5}\u{52}\u{2A}\u{2}\u{2EF}\u{2F0}\u{7}\u{36}'
  	'\u{2}\u{2}\u{2F0}\u{2F1}\u{5}\u{90}\u{49}\u{2}\u{2F1}\u{2F2}\u{7}\u{C0}'
  	'\u{2}\u{2}\u{2F2}\u{63}\u{3}\u{2}\u{2}\u{2}\u{2F3}\u{2F4}\u{7}\u{2E}'
  	'\u{2}\u{2}\u{2F4}\u{2FE}\u{5}\u{4C}\u{27}\u{2}\u{2F5}\u{2F7}\u{5}\u{84}'
  	'\u{43}\u{2}\u{2F6}\u{2F5}\u{3}\u{2}\u{2}\u{2}\u{2F7}\u{2F8}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2F8}\u{2F6}\u{3}\u{2}\u{2}\u{2}\u{2F8}\u{2F9}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2F9}\u{2FB}\u{3}\u{2}\u{2}\u{2}\u{2FA}\u{2FC}\u{5}\u{86}'
  	'\u{44}\u{2}\u{2FB}\u{2FA}\u{3}\u{2}\u{2}\u{2}\u{2FB}\u{2FC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2FC}\u{2FF}\u{3}\u{2}\u{2}\u{2}\u{2FD}\u{2FF}\u{5}\u{86}'
  	'\u{44}\u{2}\u{2FE}\u{2F6}\u{3}\u{2}\u{2}\u{2}\u{2FE}\u{2FD}\u{3}\u{2}'
  	'\u{2}\u{2}\u{2FF}\u{65}\u{3}\u{2}\u{2}\u{2}\u{300}\u{302}\u{7}\u{22}'
  	'\u{2}\u{2}\u{301}\u{303}\u{5}\u{94}\u{4B}\u{2}\u{302}\u{301}\u{3}\u{2}'
  	'\u{2}\u{2}\u{302}\u{303}\u{3}\u{2}\u{2}\u{2}\u{303}\u{304}\u{3}\u{2}'
  	'\u{2}\u{2}\u{304}\u{305}\u{7}\u{C0}\u{2}\u{2}\u{305}\u{67}\u{3}\u{2}'
  	'\u{2}\u{2}\u{306}\u{307}\u{7}\u{2B}\u{2}\u{2}\u{307}\u{308}\u{5}\u{94}'
  	'\u{4B}\u{2}\u{308}\u{309}\u{7}\u{C0}\u{2}\u{2}\u{309}\u{69}\u{3}\u{2}'
  	'\u{2}\u{2}\u{30A}\u{30B}\u{7}\u{6}\u{2}\u{2}\u{30B}\u{30C}\u{7}\u{C0}'
  	'\u{2}\u{2}\u{30C}\u{6B}\u{3}\u{2}\u{2}\u{2}\u{30D}\u{30E}\u{7}\u{9}\u{2}'
  	'\u{2}\u{30E}\u{30F}\u{7}\u{C0}\u{2}\u{2}\u{30F}\u{6D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{310}\u{311}\u{7}\u{17}\u{2}\u{2}\u{311}\u{312}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{312}\u{313}\u{7}\u{C0}\u{2}\u{2}\u{313}\u{6F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{314}\u{315}\u{7}\u{30}\u{2}\u{2}\u{315}\u{316}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{316}\u{317}\u{7}\u{C0}\u{2}\u{2}\u{317}\u{71}\u{3}\u{2}\u{2}'
  	'\u{2}\u{318}\u{319}\u{7}\u{A}\u{2}\u{2}\u{319}\u{31A}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{31A}\u{31B}\u{7}\u{C0}\u{2}\u{2}\u{31B}\u{73}\u{3}\u{2}\u{2}'
  	'\u{2}\u{31C}\u{31D}\u{7}\u{2F}\u{2}\u{2}\u{31D}\u{31E}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{31E}\u{31F}\u{7}\u{C0}\u{2}\u{2}\u{31F}\u{75}\u{3}\u{2}\u{2}'
  	'\u{2}\u{320}\u{321}\u{7}\u{31}\u{2}\u{2}\u{321}\u{323}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{322}\u{324}\u{5}\u{3E}\u{20}\u{2}\u{323}\u{322}\u{3}\u{2}\u{2}'
  	'\u{2}\u{323}\u{324}\u{3}\u{2}\u{2}\u{2}\u{324}\u{325}\u{3}\u{2}\u{2}'
  	'\u{2}\u{325}\u{326}\u{7}\u{C0}\u{2}\u{2}\u{326}\u{77}\u{3}\u{2}\u{2}'
  	'\u{2}\u{327}\u{328}\u{7}\u{1A}\u{2}\u{2}\u{328}\u{329}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{329}\u{32A}\u{5}\u{94}\u{4B}\u{2}\u{32A}\u{32B}\u{7}\u{C0}\u{2}'
  	'\u{2}\u{32B}\u{79}\u{3}\u{2}\u{2}\u{2}\u{32C}\u{32D}\u{7}\u{23}\u{2}'
  	'\u{2}\u{32D}\u{32F}\u{7}\u{BA}\u{2}\u{2}\u{32E}\u{330}\u{5}\u{92}\u{4A}'
  	'\u{2}\u{32F}\u{32E}\u{3}\u{2}\u{2}\u{2}\u{32F}\u{330}\u{3}\u{2}\u{2}'
  	'\u{2}\u{330}\u{331}\u{3}\u{2}\u{2}\u{2}\u{331}\u{332}\u{7}\u{BB}\u{2}'
  	'\u{2}\u{332}\u{333}\u{5}\u{4C}\u{27}\u{2}\u{333}\u{7B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{334}\u{335}\u{5}\u{94}\u{4B}\u{2}\u{335}\u{336}\u{7}\u{C0}\u{2}'
  	'\u{2}\u{336}\u{7D}\u{3}\u{2}\u{2}\u{2}\u{337}\u{339}\u{5}\u{1C}\u{F}'
  	'\u{2}\u{338}\u{337}\u{3}\u{2}\u{2}\u{2}\u{339}\u{33C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{33A}\u{338}\u{3}\u{2}\u{2}\u{2}\u{33A}\u{33B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{33B}\u{33F}\u{3}\u{2}\u{2}\u{2}\u{33C}\u{33A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{33D}\u{340}\u{5}\u{80}\u{41}\u{2}\u{33E}\u{340}\u{5}\u{82}\u{42}'
  	'\u{2}\u{33F}\u{33D}\u{3}\u{2}\u{2}\u{2}\u{33F}\u{33E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{340}\u{7F}\u{3}\u{2}\u{2}\u{2}\u{341}\u{344}\u{7}\u{12}\u{2}'
  	'\u{2}\u{342}\u{345}\u{7}\u{C0}\u{2}\u{2}\u{343}\u{345}\u{5}\u{4C}\u{27}'
  	'\u{2}\u{344}\u{342}\u{3}\u{2}\u{2}\u{2}\u{344}\u{343}\u{3}\u{2}\u{2}'
  	'\u{2}\u{345}\u{81}\u{3}\u{2}\u{2}\u{2}\u{346}\u{349}\u{7}\u{24}\u{2}'
  	'\u{2}\u{347}\u{34A}\u{7}\u{C0}\u{2}\u{2}\u{348}\u{34A}\u{5}\u{4C}\u{27}'
  	'\u{2}\u{349}\u{347}\u{3}\u{2}\u{2}\u{2}\u{349}\u{348}\u{3}\u{2}\u{2}'
  	'\u{2}\u{34A}\u{83}\u{3}\u{2}\u{2}\u{2}\u{34B}\u{34C}\u{7}\u{7}\u{2}\u{2}'
  	'\u{34C}\u{350}\u{7}\u{BA}\u{2}\u{2}\u{34D}\u{34F}\u{5}\u{1C}\u{F}\u{2}'
  	'\u{34E}\u{34D}\u{3}\u{2}\u{2}\u{2}\u{34F}\u{352}\u{3}\u{2}\u{2}\u{2}'
  	'\u{350}\u{34E}\u{3}\u{2}\u{2}\u{2}\u{350}\u{351}\u{3}\u{2}\u{2}\u{2}'
  	'\u{351}\u{353}\u{3}\u{2}\u{2}\u{2}\u{352}\u{350}\u{3}\u{2}\u{2}\u{2}'
  	'\u{353}\u{354}\u{5}\u{3E}\u{20}\u{2}\u{354}\u{355}\u{5}\u{118}\u{8D}'
  	'\u{2}\u{355}\u{356}\u{7}\u{BB}\u{2}\u{2}\u{356}\u{357}\u{5}\u{4C}\u{27}'
  	'\u{2}\u{357}\u{85}\u{3}\u{2}\u{2}\u{2}\u{358}\u{359}\u{7}\u{10}\u{2}'
  	'\u{2}\u{359}\u{35A}\u{5}\u{4C}\u{27}\u{2}\u{35A}\u{87}\u{3}\u{2}\u{2}'
  	'\u{2}\u{35B}\u{368}\u{5}\u{8C}\u{47}\u{2}\u{35C}\u{35E}\u{5}\u{8A}\u{46}'
  	'\u{2}\u{35D}\u{35C}\u{3}\u{2}\u{2}\u{2}\u{35D}\u{35E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{35E}\u{35F}\u{3}\u{2}\u{2}\u{2}\u{35F}\u{361}\u{7}\u{C0}\u{2}'
  	'\u{2}\u{360}\u{362}\u{5}\u{94}\u{4B}\u{2}\u{361}\u{360}\u{3}\u{2}\u{2}'
  	'\u{2}\u{361}\u{362}\u{3}\u{2}\u{2}\u{2}\u{362}\u{363}\u{3}\u{2}\u{2}'
  	'\u{2}\u{363}\u{365}\u{7}\u{C0}\u{2}\u{2}\u{364}\u{366}\u{5}\u{8E}\u{48}'
  	'\u{2}\u{365}\u{364}\u{3}\u{2}\u{2}\u{2}\u{365}\u{366}\u{3}\u{2}\u{2}'
  	'\u{2}\u{366}\u{368}\u{3}\u{2}\u{2}\u{2}\u{367}\u{35B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{367}\u{35D}\u{3}\u{2}\u{2}\u{2}\u{368}\u{89}\u{3}\u{2}\u{2}\u{2}'
  	'\u{369}\u{36C}\u{5}\u{50}\u{29}\u{2}\u{36A}\u{36C}\u{5}\u{92}\u{4A}\u{2}'
  	'\u{36B}\u{369}\u{3}\u{2}\u{2}\u{2}\u{36B}\u{36A}\u{3}\u{2}\u{2}\u{2}'
  	'\u{36C}\u{8B}\u{3}\u{2}\u{2}\u{2}\u{36D}\u{36E}\u{5}\u{30}\u{19}\u{2}'
  	'\u{36E}\u{36F}\u{5}\u{118}\u{8D}\u{2}\u{36F}\u{370}\u{7}\u{CA}\u{2}\u{2}'
  	'\u{370}\u{371}\u{5}\u{94}\u{4B}\u{2}\u{371}\u{8D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{372}\u{373}\u{5}\u{92}\u{4A}\u{2}\u{373}\u{8F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{374}\u{375}\u{7}\u{BA}\u{2}\u{2}\u{375}\u{376}\u{5}\u{94}\u{4B}\u{2}'
  	'\u{376}\u{377}\u{7}\u{BB}\u{2}\u{2}\u{377}\u{91}\u{3}\u{2}\u{2}\u{2}'
  	'\u{378}\u{37D}\u{5}\u{94}\u{4B}\u{2}\u{379}\u{37A}\u{7}\u{C1}\u{2}\u{2}'
  	'\u{37A}\u{37C}\u{5}\u{94}\u{4B}\u{2}\u{37B}\u{379}\u{3}\u{2}\u{2}\u{2}'
  	'\u{37C}\u{37F}\u{3}\u{2}\u{2}\u{2}\u{37D}\u{37B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{37D}\u{37E}\u{3}\u{2}\u{2}\u{2}\u{37E}\u{93}\u{3}\u{2}\u{2}\u{2}\u{37F}'
  	'\u{37D}\u{3}\u{2}\u{2}\u{2}\u{380}\u{381}\u{8}\u{4B}\u{1}\u{2}\u{381}'
  	'\u{393}\u{5}\u{96}\u{4C}\u{2}\u{382}\u{393}\u{5}\u{98}\u{4D}\u{2}\u{383}'
  	'\u{384}\u{7}\u{1B}\u{2}\u{2}\u{384}\u{393}\u{5}\u{9C}\u{4F}\u{2}\u{385}'
  	'\u{386}\u{7}\u{BA}\u{2}\u{2}\u{386}\u{387}\u{5}\u{30}\u{19}\u{2}\u{387}'
  	'\u{388}\u{7}\u{BB}\u{2}\u{2}\u{388}\u{389}\u{5}\u{94}\u{4B}\u{14}\u{389}'
  	'\u{393}\u{3}\u{2}\u{2}\u{2}\u{38A}\u{38B}\u{7}\u{BA}\u{2}\u{2}\u{38B}'
  	'\u{38C}\u{5}\u{94}\u{4B}\u{2}\u{38C}\u{38D}\u{7}\u{BB}\u{2}\u{2}\u{38D}'
  	'\u{393}\u{3}\u{2}\u{2}\u{2}\u{38E}\u{38F}\u{9}\u{5}\u{2}\u{2}\u{38F}'
  	'\u{393}\u{5}\u{94}\u{4B}\u{11}\u{390}\u{391}\u{9}\u{6}\u{2}\u{2}\u{391}'
  	'\u{393}\u{5}\u{94}\u{4B}\u{10}\u{392}\u{380}\u{3}\u{2}\u{2}\u{2}\u{392}'
  	'\u{382}\u{3}\u{2}\u{2}\u{2}\u{392}\u{383}\u{3}\u{2}\u{2}\u{2}\u{392}'
  	'\u{385}\u{3}\u{2}\u{2}\u{2}\u{392}\u{38A}\u{3}\u{2}\u{2}\u{2}\u{392}'
  	'\u{38E}\u{3}\u{2}\u{2}\u{2}\u{392}\u{390}\u{3}\u{2}\u{2}\u{2}\u{393}'
  	'\u{3D8}\u{3}\u{2}\u{2}\u{2}\u{394}\u{395}\u{C}\u{F}\u{2}\u{2}\u{395}'
  	'\u{396}\u{9}\u{7}\u{2}\u{2}\u{396}\u{3D7}\u{5}\u{94}\u{4B}\u{10}\u{397}'
  	'\u{398}\u{C}\u{E}\u{2}\u{2}\u{398}\u{399}\u{9}\u{8}\u{2}\u{2}\u{399}'
  	'\u{3D7}\u{5}\u{94}\u{4B}\u{F}\u{39A}\u{3A2}\u{C}\u{D}\u{2}\u{2}\u{39B}'
  	'\u{39C}\u{7}\u{C5}\u{2}\u{2}\u{39C}\u{3A3}\u{7}\u{C5}\u{2}\u{2}\u{39D}'
  	'\u{39E}\u{7}\u{C4}\u{2}\u{2}\u{39E}\u{39F}\u{7}\u{C4}\u{2}\u{2}\u{39F}'
  	'\u{3A3}\u{7}\u{C4}\u{2}\u{2}\u{3A0}\u{3A1}\u{7}\u{C4}\u{2}\u{2}\u{3A1}'
  	'\u{3A3}\u{7}\u{C4}\u{2}\u{2}\u{3A2}\u{39B}\u{3}\u{2}\u{2}\u{2}\u{3A2}'
  	'\u{39D}\u{3}\u{2}\u{2}\u{2}\u{3A2}\u{3A0}\u{3}\u{2}\u{2}\u{2}\u{3A3}'
  	'\u{3A4}\u{3}\u{2}\u{2}\u{2}\u{3A4}\u{3D7}\u{5}\u{94}\u{4B}\u{E}\u{3A5}'
  	'\u{3A6}\u{C}\u{C}\u{2}\u{2}\u{3A6}\u{3A8}\u{9}\u{9}\u{2}\u{2}\u{3A7}'
  	'\u{3A9}\u{7}\u{C3}\u{2}\u{2}\u{3A8}\u{3A7}\u{3}\u{2}\u{2}\u{2}\u{3A8}'
  	'\u{3A9}\u{3}\u{2}\u{2}\u{2}\u{3A9}\u{3AA}\u{3}\u{2}\u{2}\u{2}\u{3AA}'
  	'\u{3D7}\u{5}\u{94}\u{4B}\u{D}\u{3AB}\u{3AC}\u{C}\u{A}\u{2}\u{2}\u{3AC}'
  	'\u{3AD}\u{9}\u{A}\u{2}\u{2}\u{3AD}\u{3D7}\u{5}\u{94}\u{4B}\u{B}\u{3AE}'
  	'\u{3AF}\u{C}\u{9}\u{2}\u{2}\u{3AF}\u{3B0}\u{7}\u{D8}\u{2}\u{2}\u{3B0}'
  	'\u{3D7}\u{5}\u{94}\u{4B}\u{A}\u{3B1}\u{3B2}\u{C}\u{8}\u{2}\u{2}\u{3B2}'
  	'\u{3B3}\u{7}\u{DA}\u{2}\u{2}\u{3B3}\u{3D7}\u{5}\u{94}\u{4B}\u{9}\u{3B4}'
  	'\u{3B5}\u{C}\u{7}\u{2}\u{2}\u{3B5}\u{3B6}\u{7}\u{D9}\u{2}\u{2}\u{3B6}'
  	'\u{3D7}\u{5}\u{94}\u{4B}\u{8}\u{3B7}\u{3B8}\u{C}\u{6}\u{2}\u{2}\u{3B8}'
  	'\u{3B9}\u{7}\u{D0}\u{2}\u{2}\u{3B9}\u{3D7}\u{5}\u{94}\u{4B}\u{7}\u{3BA}'
  	'\u{3BB}\u{C}\u{5}\u{2}\u{2}\u{3BB}\u{3BC}\u{7}\u{D1}\u{2}\u{2}\u{3BC}'
  	'\u{3D7}\u{5}\u{94}\u{4B}\u{6}\u{3BD}\u{3BE}\u{C}\u{4}\u{2}\u{2}\u{3BE}'
  	'\u{3BF}\u{7}\u{C9}\u{2}\u{2}\u{3BF}\u{3C0}\u{5}\u{94}\u{4B}\u{2}\u{3C0}'
  	'\u{3C1}\u{7}\u{CA}\u{2}\u{2}\u{3C1}\u{3C2}\u{5}\u{94}\u{4B}\u{4}\u{3C2}'
  	'\u{3D7}\u{3}\u{2}\u{2}\u{2}\u{3C3}\u{3C4}\u{C}\u{3}\u{2}\u{2}\u{3C4}'
  	'\u{3C5}\u{9}\u{B}\u{2}\u{2}\u{3C5}\u{3D7}\u{5}\u{94}\u{4B}\u{3}\u{3C6}'
  	'\u{3C7}\u{C}\u{18}\u{2}\u{2}\u{3C7}\u{3CA}\u{9}\u{C}\u{2}\u{2}\u{3C8}'
  	'\u{3CB}\u{5}\u{9A}\u{4E}\u{2}\u{3C9}\u{3CB}\u{5}\u{11A}\u{8E}\u{2}\u{3CA}'
  	'\u{3C8}\u{3}\u{2}\u{2}\u{2}\u{3CA}\u{3C9}\u{3}\u{2}\u{2}\u{2}\u{3CB}'
  	'\u{3D7}\u{3}\u{2}\u{2}\u{2}\u{3CC}\u{3CD}\u{C}\u{17}\u{2}\u{2}\u{3CD}'
  	'\u{3CE}\u{7}\u{BE}\u{2}\u{2}\u{3CE}\u{3CF}\u{5}\u{94}\u{4B}\u{2}\u{3CF}'
  	'\u{3D0}\u{7}\u{BF}\u{2}\u{2}\u{3D0}\u{3D7}\u{3}\u{2}\u{2}\u{2}\u{3D1}'
  	'\u{3D2}\u{C}\u{12}\u{2}\u{2}\u{3D2}\u{3D7}\u{9}\u{D}\u{2}\u{2}\u{3D3}'
  	'\u{3D4}\u{C}\u{B}\u{2}\u{2}\u{3D4}\u{3D5}\u{7}\u{18}\u{2}\u{2}\u{3D5}'
  	'\u{3D7}\u{5}\u{30}\u{19}\u{2}\u{3D6}\u{394}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{397}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{39A}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3A5}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3AB}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3AE}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3B1}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3B4}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3B7}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3BA}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3BD}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3C3}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3C6}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3CC}\u{3}\u{2}\u{2}\u{2}\u{3D6}\u{3D1}\u{3}\u{2}\u{2}\u{2}\u{3D6}'
  	'\u{3D3}\u{3}\u{2}\u{2}\u{2}\u{3D7}\u{3DA}\u{3}\u{2}\u{2}\u{2}\u{3D8}'
  	'\u{3D6}\u{3}\u{2}\u{2}\u{2}\u{3D8}\u{3D9}\u{3}\u{2}\u{2}\u{2}\u{3D9}'
  	'\u{95}\u{3}\u{2}\u{2}\u{2}\u{3DA}\u{3D8}\u{3}\u{2}\u{2}\u{2}\u{3DB}\u{3E6}'
  	'\u{7}\u{2A}\u{2}\u{2}\u{3DC}\u{3E6}\u{7}\u{27}\u{2}\u{2}\u{3DD}\u{3E6}'
  	'\u{5}\u{40}\u{21}\u{2}\u{3DE}\u{3DF}\u{5}\u{30}\u{19}\u{2}\u{3DF}\u{3E0}'
  	'\u{7}\u{C2}\u{2}\u{2}\u{3E0}\u{3E1}\u{7}\u{8}\u{2}\u{2}\u{3E1}\u{3E6}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3E2}\u{3E6}\u{5}\u{118}\u{8D}\u{2}\u{3E3}\u{3E6}'
  	'\u{5}\u{B0}\u{59}\u{2}\u{3E4}\u{3E6}\u{5}\u{104}\u{83}\u{2}\u{3E5}\u{3DB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3E5}\u{3DC}\u{3}\u{2}\u{2}\u{2}\u{3E5}\u{3DD}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3E5}\u{3DE}\u{3}\u{2}\u{2}\u{2}\u{3E5}\u{3E2}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3E5}\u{3E3}\u{3}\u{2}\u{2}\u{2}\u{3E5}\u{3E4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{3E6}\u{97}\u{3}\u{2}\u{2}\u{2}\u{3E7}\u{3E8}\u{5}'
  	'\u{118}\u{8D}\u{2}\u{3E8}\u{3EA}\u{7}\u{BA}\u{2}\u{2}\u{3E9}\u{3EB}\u{5}'
  	'\u{92}\u{4A}\u{2}\u{3EA}\u{3E9}\u{3}\u{2}\u{2}\u{2}\u{3EA}\u{3EB}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3EB}\u{3EC}\u{3}\u{2}\u{2}\u{2}\u{3EC}\u{3ED}\u{7}'
  	'\u{BB}\u{2}\u{2}\u{3ED}\u{3FB}\u{3}\u{2}\u{2}\u{2}\u{3EE}\u{3EF}\u{7}'
  	'\u{2A}\u{2}\u{2}\u{3EF}\u{3F1}\u{7}\u{BA}\u{2}\u{2}\u{3F0}\u{3F2}\u{5}'
  	'\u{92}\u{4A}\u{2}\u{3F1}\u{3F0}\u{3}\u{2}\u{2}\u{2}\u{3F1}\u{3F2}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3F2}\u{3F3}\u{3}\u{2}\u{2}\u{2}\u{3F3}\u{3FB}\u{7}'
  	'\u{BB}\u{2}\u{2}\u{3F4}\u{3F5}\u{7}\u{27}\u{2}\u{2}\u{3F5}\u{3F7}\u{7}'
  	'\u{BA}\u{2}\u{2}\u{3F6}\u{3F8}\u{5}\u{92}\u{4A}\u{2}\u{3F7}\u{3F6}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3F7}\u{3F8}\u{3}\u{2}\u{2}\u{2}\u{3F8}\u{3F9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3F9}\u{3FB}\u{7}\u{BB}\u{2}\u{2}\u{3FA}\u{3E7}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3FA}\u{3EE}\u{3}\u{2}\u{2}\u{2}\u{3FA}\u{3F4}\u{3}'
  	'\u{2}\u{2}\u{2}\u{3FB}\u{99}\u{3}\u{2}\u{2}\u{2}\u{3FC}\u{3FD}\u{5}\u{11A}'
  	'\u{8E}\u{2}\u{3FD}\u{3FF}\u{7}\u{BA}\u{2}\u{2}\u{3FE}\u{400}\u{5}\u{92}'
  	'\u{4A}\u{2}\u{3FF}\u{3FE}\u{3}\u{2}\u{2}\u{2}\u{3FF}\u{400}\u{3}\u{2}'
  	'\u{2}\u{2}\u{400}\u{401}\u{3}\u{2}\u{2}\u{2}\u{401}\u{402}\u{7}\u{BB}'
  	'\u{2}\u{2}\u{402}\u{9B}\u{3}\u{2}\u{2}\u{2}\u{403}\u{409}\u{5}\u{9E}'
  	'\u{50}\u{2}\u{404}\u{40A}\u{5}\u{A2}\u{52}\u{2}\u{405}\u{40A}\u{5}\u{A4}'
  	'\u{53}\u{2}\u{406}\u{40A}\u{5}\u{A6}\u{54}\u{2}\u{407}\u{40A}\u{5}\u{A8}'
  	'\u{55}\u{2}\u{408}\u{40A}\u{5}\u{AC}\u{57}\u{2}\u{409}\u{404}\u{3}\u{2}'
  	'\u{2}\u{2}\u{409}\u{405}\u{3}\u{2}\u{2}\u{2}\u{409}\u{406}\u{3}\u{2}'
  	'\u{2}\u{2}\u{409}\u{407}\u{3}\u{2}\u{2}\u{2}\u{409}\u{408}\u{3}\u{2}'
  	'\u{2}\u{2}\u{40A}\u{9D}\u{3}\u{2}\u{2}\u{2}\u{40B}\u{410}\u{5}\u{A0}'
  	'\u{51}\u{2}\u{40C}\u{40D}\u{7}\u{C2}\u{2}\u{2}\u{40D}\u{40F}\u{5}\u{A0}'
  	'\u{51}\u{2}\u{40E}\u{40C}\u{3}\u{2}\u{2}\u{2}\u{40F}\u{412}\u{3}\u{2}'
  	'\u{2}\u{2}\u{410}\u{40E}\u{3}\u{2}\u{2}\u{2}\u{410}\u{411}\u{3}\u{2}'
  	'\u{2}\u{2}\u{411}\u{9F}\u{3}\u{2}\u{2}\u{2}\u{412}\u{410}\u{3}\u{2}\u{2}'
  	'\u{2}\u{413}\u{418}\u{5}\u{11A}\u{8E}\u{2}\u{414}\u{415}\u{7}\u{C5}\u{2}'
  	'\u{2}\u{415}\u{416}\u{5}\u{12}\u{A}\u{2}\u{416}\u{417}\u{7}\u{C4}\u{2}'
  	'\u{2}\u{417}\u{419}\u{3}\u{2}\u{2}\u{2}\u{418}\u{414}\u{3}\u{2}\u{2}'
  	'\u{2}\u{418}\u{419}\u{3}\u{2}\u{2}\u{2}\u{419}\u{A1}\u{3}\u{2}\u{2}\u{2}'
  	'\u{41A}\u{41B}\u{7}\u{BC}\u{2}\u{2}\u{41B}\u{41C}\u{7}\u{BD}\u{2}\u{2}'
  	'\u{41C}\u{A3}\u{3}\u{2}\u{2}\u{2}\u{41D}\u{41E}\u{5}\u{AE}\u{58}\u{2}'
  	'\u{41E}\u{A5}\u{3}\u{2}\u{2}\u{2}\u{41F}\u{420}\u{7}\u{BE}\u{2}\u{2}'
  	'\u{420}\u{421}\u{5}\u{94}\u{4B}\u{2}\u{421}\u{422}\u{7}\u{BF}\u{2}\u{2}'
  	'\u{422}\u{429}\u{3}\u{2}\u{2}\u{2}\u{423}\u{424}\u{7}\u{BE}\u{2}\u{2}'
  	'\u{424}\u{426}\u{7}\u{BF}\u{2}\u{2}\u{425}\u{427}\u{5}\u{2E}\u{18}\u{2}'
  	'\u{426}\u{425}\u{3}\u{2}\u{2}\u{2}\u{426}\u{427}\u{3}\u{2}\u{2}\u{2}'
  	'\u{427}\u{429}\u{3}\u{2}\u{2}\u{2}\u{428}\u{41F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{428}\u{423}\u{3}\u{2}\u{2}\u{2}\u{429}\u{A7}\u{3}\u{2}\u{2}\u{2}\u{42A}'
  	'\u{42B}\u{7}\u{BC}\u{2}\u{2}\u{42B}\u{430}\u{5}\u{AA}\u{56}\u{2}\u{42C}'
  	'\u{42D}\u{7}\u{C1}\u{2}\u{2}\u{42D}\u{42F}\u{5}\u{AA}\u{56}\u{2}\u{42E}'
  	'\u{42C}\u{3}\u{2}\u{2}\u{2}\u{42F}\u{432}\u{3}\u{2}\u{2}\u{2}\u{430}'
  	'\u{42E}\u{3}\u{2}\u{2}\u{2}\u{430}\u{431}\u{3}\u{2}\u{2}\u{2}\u{431}'
  	'\u{433}\u{3}\u{2}\u{2}\u{2}\u{432}\u{430}\u{3}\u{2}\u{2}\u{2}\u{433}'
  	'\u{434}\u{7}\u{BD}\u{2}\u{2}\u{434}\u{A9}\u{3}\u{2}\u{2}\u{2}\u{435}'
  	'\u{436}\u{5}\u{94}\u{4B}\u{2}\u{436}\u{437}\u{7}\u{DC}\u{2}\u{2}\u{437}'
  	'\u{438}\u{5}\u{94}\u{4B}\u{2}\u{438}\u{AB}\u{3}\u{2}\u{2}\u{2}\u{439}'
  	'\u{43A}\u{7}\u{BC}\u{2}\u{2}\u{43A}\u{43F}\u{5}\u{94}\u{4B}\u{2}\u{43B}'
  	'\u{43C}\u{7}\u{C1}\u{2}\u{2}\u{43C}\u{43E}\u{5}\u{94}\u{4B}\u{2}\u{43D}'
  	'\u{43B}\u{3}\u{2}\u{2}\u{2}\u{43E}\u{441}\u{3}\u{2}\u{2}\u{2}\u{43F}'
  	'\u{43D}\u{3}\u{2}\u{2}\u{2}\u{43F}\u{440}\u{3}\u{2}\u{2}\u{2}\u{440}'
  	'\u{442}\u{3}\u{2}\u{2}\u{2}\u{441}\u{43F}\u{3}\u{2}\u{2}\u{2}\u{442}'
  	'\u{443}\u{7}\u{BD}\u{2}\u{2}\u{443}\u{AD}\u{3}\u{2}\u{2}\u{2}\u{444}'
  	'\u{446}\u{7}\u{BA}\u{2}\u{2}\u{445}\u{447}\u{5}\u{92}\u{4A}\u{2}\u{446}'
  	'\u{445}\u{3}\u{2}\u{2}\u{2}\u{446}\u{447}\u{3}\u{2}\u{2}\u{2}\u{447}'
  	'\u{448}\u{3}\u{2}\u{2}\u{2}\u{448}\u{449}\u{7}\u{BB}\u{2}\u{2}\u{449}'
  	'\u{AF}\u{3}\u{2}\u{2}\u{2}\u{44A}\u{44B}\u{7}\u{BE}\u{2}\u{2}\u{44B}'
  	'\u{44C}\u{5}\u{B2}\u{5A}\u{2}\u{44C}\u{44D}\u{7}\u{BF}\u{2}\u{2}\u{44D}'
  	'\u{B1}\u{3}\u{2}\u{2}\u{2}\u{44E}\u{44F}\u{7}\u{3B}\u{2}\u{2}\u{44F}'
  	'\u{450}\u{5}\u{B6}\u{5C}\u{2}\u{450}\u{451}\u{7}\u{3D}\u{2}\u{2}\u{451}'
  	'\u{453}\u{5}\u{BC}\u{5F}\u{2}\u{452}\u{454}\u{5}\u{D0}\u{69}\u{2}\u{453}'
  	'\u{452}\u{3}\u{2}\u{2}\u{2}\u{453}\u{454}\u{3}\u{2}\u{2}\u{2}\u{454}'
  	'\u{456}\u{3}\u{2}\u{2}\u{2}\u{455}\u{457}\u{5}\u{D2}\u{6A}\u{2}\u{456}'
  	'\u{455}\u{3}\u{2}\u{2}\u{2}\u{456}\u{457}\u{3}\u{2}\u{2}\u{2}\u{457}'
  	'\u{459}\u{3}\u{2}\u{2}\u{2}\u{458}\u{45A}\u{5}\u{E2}\u{72}\u{2}\u{459}'
  	'\u{458}\u{3}\u{2}\u{2}\u{2}\u{459}\u{45A}\u{3}\u{2}\u{2}\u{2}\u{45A}'
  	'\u{45C}\u{3}\u{2}\u{2}\u{2}\u{45B}\u{45D}\u{5}\u{EC}\u{77}\u{2}\u{45C}'
  	'\u{45B}\u{3}\u{2}\u{2}\u{2}\u{45C}\u{45D}\u{3}\u{2}\u{2}\u{2}\u{45D}'
  	'\u{45F}\u{3}\u{2}\u{2}\u{2}\u{45E}\u{460}\u{5}\u{EE}\u{78}\u{2}\u{45F}'
  	'\u{45E}\u{3}\u{2}\u{2}\u{2}\u{45F}\u{460}\u{3}\u{2}\u{2}\u{2}\u{460}'
  	'\u{462}\u{3}\u{2}\u{2}\u{2}\u{461}\u{463}\u{5}\u{F4}\u{7B}\u{2}\u{462}'
  	'\u{461}\u{3}\u{2}\u{2}\u{2}\u{462}\u{463}\u{3}\u{2}\u{2}\u{2}\u{463}'
  	'\u{465}\u{3}\u{2}\u{2}\u{2}\u{464}\u{466}\u{5}\u{F6}\u{7C}\u{2}\u{465}'
  	'\u{464}\u{3}\u{2}\u{2}\u{2}\u{465}\u{466}\u{3}\u{2}\u{2}\u{2}\u{466}'
  	'\u{468}\u{3}\u{2}\u{2}\u{2}\u{467}\u{469}\u{5}\u{F8}\u{7D}\u{2}\u{468}'
  	'\u{467}\u{3}\u{2}\u{2}\u{2}\u{468}\u{469}\u{3}\u{2}\u{2}\u{2}\u{469}'
  	'\u{46A}\u{3}\u{2}\u{2}\u{2}\u{46A}\u{46D}\u{5}\u{FA}\u{7E}\u{2}\u{46B}'
  	'\u{46C}\u{7}\u{30}\u{2}\u{2}\u{46C}\u{46E}\u{5}\u{110}\u{89}\u{2}\u{46D}'
  	'\u{46B}\u{3}\u{2}\u{2}\u{2}\u{46D}\u{46E}\u{3}\u{2}\u{2}\u{2}\u{46E}'
  	'\u{B3}\u{3}\u{2}\u{2}\u{2}\u{46F}\u{470}\u{7}\u{3B}\u{2}\u{2}\u{470}'
  	'\u{471}\u{5}\u{BE}\u{60}\u{2}\u{471}\u{472}\u{7}\u{3D}\u{2}\u{2}\u{472}'
  	'\u{474}\u{5}\u{BC}\u{5F}\u{2}\u{473}\u{475}\u{5}\u{D2}\u{6A}\u{2}\u{474}'
  	'\u{473}\u{3}\u{2}\u{2}\u{2}\u{474}\u{475}\u{3}\u{2}\u{2}\u{2}\u{475}'
  	'\u{477}\u{3}\u{2}\u{2}\u{2}\u{476}\u{478}\u{5}\u{EE}\u{78}\u{2}\u{477}'
  	'\u{476}\u{3}\u{2}\u{2}\u{2}\u{477}\u{478}\u{3}\u{2}\u{2}\u{2}\u{478}'
  	'\u{47A}\u{3}\u{2}\u{2}\u{2}\u{479}\u{47B}\u{5}\u{F4}\u{7B}\u{2}\u{47A}'
  	'\u{479}\u{3}\u{2}\u{2}\u{2}\u{47A}\u{47B}\u{3}\u{2}\u{2}\u{2}\u{47B}'
  	'\u{47C}\u{3}\u{2}\u{2}\u{2}\u{47C}\u{47F}\u{5}\u{FA}\u{7E}\u{2}\u{47D}'
  	'\u{47E}\u{7}\u{30}\u{2}\u{2}\u{47E}\u{480}\u{5}\u{110}\u{89}\u{2}\u{47F}'
  	'\u{47D}\u{3}\u{2}\u{2}\u{2}\u{47F}\u{480}\u{3}\u{2}\u{2}\u{2}\u{480}'
  	'\u{B5}\u{3}\u{2}\u{2}\u{2}\u{481}\u{486}\u{5}\u{B8}\u{5D}\u{2}\u{482}'
  	'\u{483}\u{7}\u{C1}\u{2}\u{2}\u{483}\u{485}\u{5}\u{B8}\u{5D}\u{2}\u{484}'
  	'\u{482}\u{3}\u{2}\u{2}\u{2}\u{485}\u{488}\u{3}\u{2}\u{2}\u{2}\u{486}'
  	'\u{484}\u{3}\u{2}\u{2}\u{2}\u{486}\u{487}\u{3}\u{2}\u{2}\u{2}\u{487}'
  	'\u{B7}\u{3}\u{2}\u{2}\u{2}\u{488}\u{486}\u{3}\u{2}\u{2}\u{2}\u{489}\u{48B}'
  	'\u{5}\u{BA}\u{5E}\u{2}\u{48A}\u{48C}\u{5}\u{102}\u{82}\u{2}\u{48B}\u{48A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48B}\u{48C}\u{3}\u{2}\u{2}\u{2}\u{48C}\u{499}'
  	'\u{3}\u{2}\u{2}\u{2}\u{48D}\u{48F}\u{5}\u{C4}\u{63}\u{2}\u{48E}\u{490}'
  	'\u{5}\u{102}\u{82}\u{2}\u{48F}\u{48E}\u{3}\u{2}\u{2}\u{2}\u{48F}\u{490}'
  	'\u{3}\u{2}\u{2}\u{2}\u{490}\u{499}\u{3}\u{2}\u{2}\u{2}\u{491}\u{492}'
  	'\u{7}\u{BA}\u{2}\u{2}\u{492}\u{493}\u{5}\u{B4}\u{5B}\u{2}\u{493}\u{495}'
  	'\u{7}\u{BB}\u{2}\u{2}\u{494}\u{496}\u{5}\u{102}\u{82}\u{2}\u{495}\u{494}'
  	'\u{3}\u{2}\u{2}\u{2}\u{495}\u{496}\u{3}\u{2}\u{2}\u{2}\u{496}\u{499}'
  	'\u{3}\u{2}\u{2}\u{2}\u{497}\u{499}\u{5}\u{C8}\u{65}\u{2}\u{498}\u{489}'
  	'\u{3}\u{2}\u{2}\u{2}\u{498}\u{48D}\u{3}\u{2}\u{2}\u{2}\u{498}\u{491}'
  	'\u{3}\u{2}\u{2}\u{2}\u{498}\u{497}\u{3}\u{2}\u{2}\u{2}\u{499}\u{B9}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49A}\u{49F}\u{5}\u{102}\u{82}\u{2}\u{49B}\u{49C}\u{7}'
  	'\u{C2}\u{2}\u{2}\u{49C}\u{49E}\u{5}\u{102}\u{82}\u{2}\u{49D}\u{49B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49E}\u{4A1}\u{3}\u{2}\u{2}\u{2}\u{49F}\u{49D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{49F}\u{4A0}\u{3}\u{2}\u{2}\u{2}\u{4A0}\u{BB}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4A1}\u{49F}\u{3}\u{2}\u{2}\u{2}\u{4A2}\u{4A4}\u{5}\u{BA}'
  	'\u{5E}\u{2}\u{4A3}\u{4A5}\u{5}\u{102}\u{82}\u{2}\u{4A4}\u{4A3}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4A4}\u{4A5}\u{3}\u{2}\u{2}\u{2}\u{4A5}\u{4AD}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4A6}\u{4A7}\u{7}\u{C1}\u{2}\u{2}\u{4A7}\u{4A9}\u{5}\u{BA}'
  	'\u{5E}\u{2}\u{4A8}\u{4AA}\u{5}\u{102}\u{82}\u{2}\u{4A9}\u{4A8}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4A9}\u{4AA}\u{3}\u{2}\u{2}\u{2}\u{4AA}\u{4AC}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4AB}\u{4A6}\u{3}\u{2}\u{2}\u{2}\u{4AC}\u{4AF}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4AD}\u{4AB}\u{3}\u{2}\u{2}\u{2}\u{4AD}\u{4AE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{4AE}\u{BD}\u{3}\u{2}\u{2}\u{2}\u{4AF}\u{4AD}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4B0}\u{4B5}\u{5}\u{C0}\u{61}\u{2}\u{4B1}\u{4B2}\u{7}\u{C1}\u{2}'
  	'\u{2}\u{4B2}\u{4B4}\u{5}\u{C0}\u{61}\u{2}\u{4B3}\u{4B1}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4B4}\u{4B7}\u{3}\u{2}\u{2}\u{2}\u{4B5}\u{4B3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4B5}\u{4B6}\u{3}\u{2}\u{2}\u{2}\u{4B6}\u{BF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4B7}\u{4B5}\u{3}\u{2}\u{2}\u{2}\u{4B8}\u{4BA}\u{5}\u{BA}\u{5E}\u{2}'
  	'\u{4B9}\u{4BB}\u{5}\u{102}\u{82}\u{2}\u{4BA}\u{4B9}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4BA}\u{4BB}\u{3}\u{2}\u{2}\u{2}\u{4BB}\u{4C1}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4BC}\u{4BE}\u{5}\u{C4}\u{63}\u{2}\u{4BD}\u{4BF}\u{5}\u{102}\u{82}'
  	'\u{2}\u{4BE}\u{4BD}\u{3}\u{2}\u{2}\u{2}\u{4BE}\u{4BF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4BF}\u{4C1}\u{3}\u{2}\u{2}\u{2}\u{4C0}\u{4B8}\u{3}\u{2}\u{2}'
  	'\u{2}\u{4C0}\u{4BC}\u{3}\u{2}\u{2}\u{2}\u{4C1}\u{C1}\u{3}\u{2}\u{2}\u{2}'
  	'\u{4C2}\u{4C3}\u{9}\u{E}\u{2}\u{2}\u{4C3}\u{C3}\u{3}\u{2}\u{2}\u{2}\u{4C4}'
  	'\u{4C5}\u{7}\u{48}\u{2}\u{2}\u{4C5}\u{4C6}\u{7}\u{BA}\u{2}\u{2}\u{4C6}'
  	'\u{4C7}\u{5}\u{BA}\u{5E}\u{2}\u{4C7}\u{4C8}\u{7}\u{BB}\u{2}\u{2}\u{4C8}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{4C9}\u{4CA}\u{7}\u{3C}\u{2}\u{2}\u{4CA}'
  	'\u{4CB}\u{7}\u{BA}\u{2}\u{2}\u{4CB}\u{536}\u{7}\u{BB}\u{2}\u{2}\u{4CC}'
  	'\u{4CD}\u{7}\u{3C}\u{2}\u{2}\u{4CD}\u{4CE}\u{7}\u{BA}\u{2}\u{2}\u{4CE}'
  	'\u{4CF}\u{5}\u{BA}\u{5E}\u{2}\u{4CF}\u{4D0}\u{7}\u{BB}\u{2}\u{2}\u{4D0}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{4D1}\u{4D2}\u{7}\u{49}\u{2}\u{2}\u{4D2}'
  	'\u{4D3}\u{7}\u{BA}\u{2}\u{2}\u{4D3}\u{4D4}\u{5}\u{BA}\u{5E}\u{2}\u{4D4}'
  	'\u{4D5}\u{7}\u{BB}\u{2}\u{2}\u{4D5}\u{536}\u{3}\u{2}\u{2}\u{2}\u{4D6}'
  	'\u{4D7}\u{7}\u{4A}\u{2}\u{2}\u{4D7}\u{4D8}\u{7}\u{BA}\u{2}\u{2}\u{4D8}'
  	'\u{4D9}\u{5}\u{BA}\u{5E}\u{2}\u{4D9}\u{4DA}\u{7}\u{BB}\u{2}\u{2}\u{4DA}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{4DB}\u{4DC}\u{7}\u{4B}\u{2}\u{2}\u{4DC}'
  	'\u{4DD}\u{7}\u{BA}\u{2}\u{2}\u{4DD}\u{4DE}\u{5}\u{BA}\u{5E}\u{2}\u{4DE}'
  	'\u{4DF}\u{7}\u{BB}\u{2}\u{2}\u{4DF}\u{536}\u{3}\u{2}\u{2}\u{2}\u{4E0}'
  	'\u{4E1}\u{7}\u{4C}\u{2}\u{2}\u{4E1}\u{4E2}\u{7}\u{BA}\u{2}\u{2}\u{4E2}'
  	'\u{4E3}\u{5}\u{BA}\u{5E}\u{2}\u{4E3}\u{4E4}\u{7}\u{BB}\u{2}\u{2}\u{4E4}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{4E5}\u{4E6}\u{7}\u{5F}\u{2}\u{2}\u{4E6}'
  	'\u{4E7}\u{7}\u{BA}\u{2}\u{2}\u{4E7}\u{4E8}\u{5}\u{BA}\u{5E}\u{2}\u{4E8}'
  	'\u{4E9}\u{7}\u{BB}\u{2}\u{2}\u{4E9}\u{536}\u{3}\u{2}\u{2}\u{2}\u{4EA}'
  	'\u{4EB}\u{7}\u{6A}\u{2}\u{2}\u{4EB}\u{4EC}\u{7}\u{BA}\u{2}\u{2}\u{4EC}'
  	'\u{4ED}\u{5}\u{BA}\u{5E}\u{2}\u{4ED}\u{4EE}\u{7}\u{BB}\u{2}\u{2}\u{4EE}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{4EF}\u{4F0}\u{7}\u{6F}\u{2}\u{2}\u{4F0}'
  	'\u{4F1}\u{7}\u{BA}\u{2}\u{2}\u{4F1}\u{4F2}\u{5}\u{C6}\u{64}\u{2}\u{4F2}'
  	'\u{4F3}\u{7}\u{BB}\u{2}\u{2}\u{4F3}\u{536}\u{3}\u{2}\u{2}\u{2}\u{4F4}'
  	'\u{4F5}\u{7}\u{70}\u{2}\u{2}\u{4F5}\u{4F6}\u{7}\u{BA}\u{2}\u{2}\u{4F6}'
  	'\u{4F7}\u{5}\u{C6}\u{64}\u{2}\u{4F7}\u{4F8}\u{7}\u{BB}\u{2}\u{2}\u{4F8}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{4F9}\u{4FA}\u{7}\u{71}\u{2}\u{2}\u{4FA}'
  	'\u{4FB}\u{7}\u{BA}\u{2}\u{2}\u{4FB}\u{4FC}\u{5}\u{C6}\u{64}\u{2}\u{4FC}'
  	'\u{4FD}\u{7}\u{BB}\u{2}\u{2}\u{4FD}\u{536}\u{3}\u{2}\u{2}\u{2}\u{4FE}'
  	'\u{4FF}\u{7}\u{72}\u{2}\u{2}\u{4FF}\u{500}\u{7}\u{BA}\u{2}\u{2}\u{500}'
  	'\u{501}\u{5}\u{C6}\u{64}\u{2}\u{501}\u{502}\u{7}\u{BB}\u{2}\u{2}\u{502}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{503}\u{504}\u{7}\u{73}\u{2}\u{2}\u{504}'
  	'\u{505}\u{7}\u{BA}\u{2}\u{2}\u{505}\u{506}\u{5}\u{C6}\u{64}\u{2}\u{506}'
  	'\u{507}\u{7}\u{BB}\u{2}\u{2}\u{507}\u{536}\u{3}\u{2}\u{2}\u{2}\u{508}'
  	'\u{509}\u{7}\u{74}\u{2}\u{2}\u{509}\u{50A}\u{7}\u{BA}\u{2}\u{2}\u{50A}'
  	'\u{50B}\u{5}\u{C6}\u{64}\u{2}\u{50B}\u{50C}\u{7}\u{BB}\u{2}\u{2}\u{50C}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{50D}\u{50E}\u{7}\u{75}\u{2}\u{2}\u{50E}'
  	'\u{50F}\u{7}\u{BA}\u{2}\u{2}\u{50F}\u{510}\u{5}\u{C6}\u{64}\u{2}\u{510}'
  	'\u{511}\u{7}\u{BB}\u{2}\u{2}\u{511}\u{536}\u{3}\u{2}\u{2}\u{2}\u{512}'
  	'\u{513}\u{7}\u{76}\u{2}\u{2}\u{513}\u{514}\u{7}\u{BA}\u{2}\u{2}\u{514}'
  	'\u{515}\u{5}\u{C6}\u{64}\u{2}\u{515}\u{516}\u{7}\u{BB}\u{2}\u{2}\u{516}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{517}\u{518}\u{7}\u{77}\u{2}\u{2}\u{518}'
  	'\u{519}\u{7}\u{BA}\u{2}\u{2}\u{519}\u{51A}\u{5}\u{C6}\u{64}\u{2}\u{51A}'
  	'\u{51B}\u{7}\u{BB}\u{2}\u{2}\u{51B}\u{536}\u{3}\u{2}\u{2}\u{2}\u{51C}'
  	'\u{51D}\u{7}\u{78}\u{2}\u{2}\u{51D}\u{51E}\u{7}\u{BA}\u{2}\u{2}\u{51E}'
  	'\u{51F}\u{5}\u{C6}\u{64}\u{2}\u{51F}\u{520}\u{7}\u{BB}\u{2}\u{2}\u{520}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{521}\u{522}\u{7}\u{79}\u{2}\u{2}\u{522}'
  	'\u{523}\u{7}\u{BA}\u{2}\u{2}\u{523}\u{524}\u{5}\u{C6}\u{64}\u{2}\u{524}'
  	'\u{525}\u{7}\u{BB}\u{2}\u{2}\u{525}\u{536}\u{3}\u{2}\u{2}\u{2}\u{526}'
  	'\u{527}\u{7}\u{7A}\u{2}\u{2}\u{527}\u{528}\u{7}\u{BA}\u{2}\u{2}\u{528}'
  	'\u{529}\u{5}\u{C6}\u{64}\u{2}\u{529}\u{52A}\u{7}\u{BB}\u{2}\u{2}\u{52A}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{52B}\u{52C}\u{7}\u{7B}\u{2}\u{2}\u{52C}'
  	'\u{52D}\u{7}\u{BA}\u{2}\u{2}\u{52D}\u{52E}\u{5}\u{C6}\u{64}\u{2}\u{52E}'
  	'\u{52F}\u{7}\u{BB}\u{2}\u{2}\u{52F}\u{536}\u{3}\u{2}\u{2}\u{2}\u{530}'
  	'\u{531}\u{7}\u{AA}\u{2}\u{2}\u{531}\u{532}\u{7}\u{BA}\u{2}\u{2}\u{532}'
  	'\u{533}\u{5}\u{C2}\u{62}\u{2}\u{533}\u{534}\u{7}\u{BB}\u{2}\u{2}\u{534}'
  	'\u{536}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4C4}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{4C9}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4CC}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{4D1}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4D6}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{4DB}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4E0}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{4E5}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4EA}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{4EF}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4F4}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{4F9}\u{3}\u{2}\u{2}\u{2}\u{535}\u{4FE}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{503}\u{3}\u{2}\u{2}\u{2}\u{535}\u{508}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{50D}\u{3}\u{2}\u{2}\u{2}\u{535}\u{512}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{517}\u{3}\u{2}\u{2}\u{2}\u{535}\u{51C}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{521}\u{3}\u{2}\u{2}\u{2}\u{535}\u{526}\u{3}\u{2}\u{2}\u{2}\u{535}'
  	'\u{52B}\u{3}\u{2}\u{2}\u{2}\u{535}\u{530}\u{3}\u{2}\u{2}\u{2}\u{536}'
  	'\u{C5}\u{3}\u{2}\u{2}\u{2}\u{537}\u{538}\u{7}\u{7C}\u{2}\u{2}\u{538}'
  	'\u{539}\u{7}\u{BA}\u{2}\u{2}\u{539}\u{53A}\u{5}\u{BA}\u{5E}\u{2}\u{53A}'
  	'\u{53B}\u{7}\u{BB}\u{2}\u{2}\u{53B}\u{53E}\u{3}\u{2}\u{2}\u{2}\u{53C}'
  	'\u{53E}\u{5}\u{BA}\u{5E}\u{2}\u{53D}\u{537}\u{3}\u{2}\u{2}\u{2}\u{53D}'
  	'\u{53C}\u{3}\u{2}\u{2}\u{2}\u{53E}\u{C7}\u{3}\u{2}\u{2}\u{2}\u{53F}\u{540}'
  	'\u{7}\u{4D}\u{2}\u{2}\u{540}\u{542}\u{5}\u{BA}\u{5E}\u{2}\u{541}\u{543}'
  	'\u{5}\u{CA}\u{66}\u{2}\u{542}\u{541}\u{3}\u{2}\u{2}\u{2}\u{543}\u{544}'
  	'\u{3}\u{2}\u{2}\u{2}\u{544}\u{542}\u{3}\u{2}\u{2}\u{2}\u{544}\u{545}'
  	'\u{3}\u{2}\u{2}\u{2}\u{545}\u{547}\u{3}\u{2}\u{2}\u{2}\u{546}\u{548}'
  	'\u{5}\u{CC}\u{67}\u{2}\u{547}\u{546}\u{3}\u{2}\u{2}\u{2}\u{547}\u{548}'
  	'\u{3}\u{2}\u{2}\u{2}\u{548}\u{549}\u{3}\u{2}\u{2}\u{2}\u{549}\u{54A}'
  	'\u{7}\u{4E}\u{2}\u{2}\u{54A}\u{C9}\u{3}\u{2}\u{2}\u{2}\u{54B}\u{54C}'
  	'\u{7}\u{35}\u{2}\u{2}\u{54C}\u{54D}\u{5}\u{BA}\u{5E}\u{2}\u{54D}\u{54E}'
  	'\u{7}\u{4F}\u{2}\u{2}\u{54E}\u{54F}\u{5}\u{CE}\u{68}\u{2}\u{54F}\u{CB}'
  	'\u{3}\u{2}\u{2}\u{2}\u{550}\u{551}\u{7}\u{C}\u{2}\u{2}\u{551}\u{552}'
  	'\u{5}\u{CE}\u{68}\u{2}\u{552}\u{CD}\u{3}\u{2}\u{2}\u{2}\u{553}\u{558}'
  	'\u{5}\u{BA}\u{5E}\u{2}\u{554}\u{555}\u{7}\u{C1}\u{2}\u{2}\u{555}\u{557}'
  	'\u{5}\u{BA}\u{5E}\u{2}\u{556}\u{554}\u{3}\u{2}\u{2}\u{2}\u{557}\u{55A}'
  	'\u{3}\u{2}\u{2}\u{2}\u{558}\u{556}\u{3}\u{2}\u{2}\u{2}\u{558}\u{559}'
  	'\u{3}\u{2}\u{2}\u{2}\u{559}\u{CF}\u{3}\u{2}\u{2}\u{2}\u{55A}\u{558}\u{3}'
  	'\u{2}\u{2}\u{2}\u{55B}\u{55C}\u{7}\u{3F}\u{2}\u{2}\u{55C}\u{55D}\u{7}'
  	'\u{40}\u{2}\u{2}\u{55D}\u{55E}\u{5}\u{102}\u{82}\u{2}\u{55E}\u{D1}\u{3}'
  	'\u{2}\u{2}\u{2}\u{55F}\u{560}\u{7}\u{41}\u{2}\u{2}\u{560}\u{561}\u{5}'
  	'\u{D4}\u{6B}\u{2}\u{561}\u{D3}\u{3}\u{2}\u{2}\u{2}\u{562}\u{567}\u{5}'
  	'\u{D6}\u{6C}\u{2}\u{563}\u{564}\u{7}\u{45}\u{2}\u{2}\u{564}\u{566}\u{5}'
  	'\u{D6}\u{6C}\u{2}\u{565}\u{563}\u{3}\u{2}\u{2}\u{2}\u{566}\u{569}\u{3}'
  	'\u{2}\u{2}\u{2}\u{567}\u{565}\u{3}\u{2}\u{2}\u{2}\u{567}\u{568}\u{3}'
  	'\u{2}\u{2}\u{2}\u{568}\u{575}\u{3}\u{2}\u{2}\u{2}\u{569}\u{567}\u{3}'
  	'\u{2}\u{2}\u{2}\u{56A}\u{56F}\u{5}\u{D6}\u{6C}\u{2}\u{56B}\u{56C}\u{7}'
  	'\u{46}\u{2}\u{2}\u{56C}\u{56E}\u{5}\u{D6}\u{6C}\u{2}\u{56D}\u{56B}\u{3}'
  	'\u{2}\u{2}\u{2}\u{56E}\u{571}\u{3}\u{2}\u{2}\u{2}\u{56F}\u{56D}\u{3}'
  	'\u{2}\u{2}\u{2}\u{56F}\u{570}\u{3}\u{2}\u{2}\u{2}\u{570}\u{575}\u{3}'
  	'\u{2}\u{2}\u{2}\u{571}\u{56F}\u{3}\u{2}\u{2}\u{2}\u{572}\u{573}\u{7}'
  	'\u{47}\u{2}\u{2}\u{573}\u{575}\u{5}\u{D6}\u{6C}\u{2}\u{574}\u{562}\u{3}'
  	'\u{2}\u{2}\u{2}\u{574}\u{56A}\u{3}\u{2}\u{2}\u{2}\u{574}\u{572}\u{3}'
  	'\u{2}\u{2}\u{2}\u{575}\u{D5}\u{3}\u{2}\u{2}\u{2}\u{576}\u{577}\u{7}\u{BA}'
  	'\u{2}\u{2}\u{577}\u{578}\u{5}\u{D4}\u{6B}\u{2}\u{578}\u{579}\u{7}\u{BB}'
  	'\u{2}\u{2}\u{579}\u{57C}\u{3}\u{2}\u{2}\u{2}\u{57A}\u{57C}\u{5}\u{D8}'
  	'\u{6D}\u{2}\u{57B}\u{576}\u{3}\u{2}\u{2}\u{2}\u{57B}\u{57A}\u{3}\u{2}'
  	'\u{2}\u{2}\u{57C}\u{D7}\u{3}\u{2}\u{2}\u{2}\u{57D}\u{57E}\u{5}\u{BA}'
  	'\u{5E}\u{2}\u{57E}\u{57F}\u{5}\u{DA}\u{6E}\u{2}\u{57F}\u{580}\u{5}\u{DC}'
  	'\u{6F}\u{2}\u{580}\u{586}\u{3}\u{2}\u{2}\u{2}\u{581}\u{582}\u{5}\u{C4}'
  	'\u{63}\u{2}\u{582}\u{583}\u{5}\u{DA}\u{6E}\u{2}\u{583}\u{584}\u{5}\u{DC}'
  	'\u{6F}\u{2}\u{584}\u{586}\u{3}\u{2}\u{2}\u{2}\u{585}\u{57D}\u{3}\u{2}'
  	'\u{2}\u{2}\u{585}\u{581}\u{3}\u{2}\u{2}\u{2}\u{586}\u{D9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{587}\u{597}\u{7}\u{C3}\u{2}\u{2}\u{588}\u{597}\u{7}\u{CD}\u{2}'
  	'\u{2}\u{589}\u{597}\u{7}\u{C5}\u{2}\u{2}\u{58A}\u{597}\u{7}\u{C4}\u{2}'
  	'\u{2}\u{58B}\u{58C}\u{7}\u{C5}\u{2}\u{2}\u{58C}\u{597}\u{7}\u{C3}\u{2}'
  	'\u{2}\u{58D}\u{58E}\u{7}\u{C4}\u{2}\u{2}\u{58E}\u{597}\u{7}\u{C3}\u{2}'
  	'\u{2}\u{58F}\u{597}\u{7}\u{CE}\u{2}\u{2}\u{590}\u{597}\u{7}\u{50}\u{2}'
  	'\u{2}\u{591}\u{597}\u{7}\u{51}\u{2}\u{2}\u{592}\u{593}\u{7}\u{47}\u{2}'
  	'\u{2}\u{593}\u{597}\u{7}\u{51}\u{2}\u{2}\u{594}\u{597}\u{7}\u{52}\u{2}'
  	'\u{2}\u{595}\u{597}\u{7}\u{53}\u{2}\u{2}\u{596}\u{587}\u{3}\u{2}\u{2}'
  	'\u{2}\u{596}\u{588}\u{3}\u{2}\u{2}\u{2}\u{596}\u{589}\u{3}\u{2}\u{2}'
  	'\u{2}\u{596}\u{58A}\u{3}\u{2}\u{2}\u{2}\u{596}\u{58B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{596}\u{58D}\u{3}\u{2}\u{2}\u{2}\u{596}\u{58F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{596}\u{590}\u{3}\u{2}\u{2}\u{2}\u{596}\u{591}\u{3}\u{2}\u{2}'
  	'\u{2}\u{596}\u{592}\u{3}\u{2}\u{2}\u{2}\u{596}\u{594}\u{3}\u{2}\u{2}'
  	'\u{2}\u{596}\u{595}\u{3}\u{2}\u{2}\u{2}\u{597}\u{DB}\u{3}\u{2}\u{2}\u{2}'
  	'\u{598}\u{5AD}\u{7}\u{1C}\u{2}\u{2}\u{599}\u{5AD}\u{7}\u{B7}\u{2}\u{2}'
  	'\u{59A}\u{5AD}\u{5}\u{E0}\u{71}\u{2}\u{59B}\u{5AD}\u{7}\u{B8}\u{2}\u{2}'
  	'\u{59C}\u{5AD}\u{7}\u{A2}\u{2}\u{2}\u{59D}\u{5AD}\u{7}\u{A3}\u{2}\u{2}'
  	'\u{59E}\u{5AD}\u{5}\u{FE}\u{80}\u{2}\u{59F}\u{5A4}\u{7}\u{A4}\u{2}\u{2}'
  	'\u{5A0}\u{5A2}\u{7}\u{C2}\u{2}\u{2}\u{5A1}\u{5A3}\u{7}\u{B4}\u{2}\u{2}'
  	'\u{5A2}\u{5A1}\u{3}\u{2}\u{2}\u{2}\u{5A2}\u{5A3}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A3}\u{5A5}\u{3}\u{2}\u{2}\u{2}\u{5A4}\u{5A0}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A4}\u{5A5}\u{3}\u{2}\u{2}\u{2}\u{5A5}\u{5AD}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5A6}\u{5A7}\u{7}\u{BA}\u{2}\u{2}\u{5A7}\u{5A8}\u{5}\u{B4}\u{5B}\u{2}'
  	'\u{5A8}\u{5A9}\u{7}\u{BB}\u{2}\u{2}\u{5A9}\u{5AD}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AA}\u{5AD}\u{5}\u{DE}\u{70}\u{2}\u{5AB}\u{5AD}\u{5}\u{FC}\u{7F}\u{2}'
  	'\u{5AC}\u{598}\u{3}\u{2}\u{2}\u{2}\u{5AC}\u{599}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AC}\u{59A}\u{3}\u{2}\u{2}\u{2}\u{5AC}\u{59B}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AC}\u{59C}\u{3}\u{2}\u{2}\u{2}\u{5AC}\u{59D}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AC}\u{59E}\u{3}\u{2}\u{2}\u{2}\u{5AC}\u{59F}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AC}\u{5A6}\u{3}\u{2}\u{2}\u{2}\u{5AC}\u{5AA}\u{3}\u{2}\u{2}\u{2}'
  	'\u{5AC}\u{5AB}\u{3}\u{2}\u{2}\u{2}\u{5AD}\u{DD}\u{3}\u{2}\u{2}\u{2}\u{5AE}'
  	'\u{5AF}\u{7}\u{BA}\u{2}\u{2}\u{5AF}\u{5B4}\u{5}\u{DC}\u{6F}\u{2}\u{5B0}'
  	'\u{5B1}\u{7}\u{C1}\u{2}\u{2}\u{5B1}\u{5B3}\u{5}\u{DC}\u{6F}\u{2}\u{5B2}'
  	'\u{5B0}\u{3}\u{2}\u{2}\u{2}\u{5B3}\u{5B6}\u{3}\u{2}\u{2}\u{2}\u{5B4}'
  	'\u{5B2}\u{3}\u{2}\u{2}\u{2}\u{5B4}\u{5B5}\u{3}\u{2}\u{2}\u{2}\u{5B5}'
  	'\u{5B7}\u{3}\u{2}\u{2}\u{2}\u{5B6}\u{5B4}\u{3}\u{2}\u{2}\u{2}\u{5B7}'
  	'\u{5B8}\u{7}\u{BB}\u{2}\u{2}\u{5B8}\u{DF}\u{3}\u{2}\u{2}\u{2}\u{5B9}'
  	'\u{5BB}\u{9}\u{8}\u{2}\u{2}\u{5BA}\u{5B9}\u{3}\u{2}\u{2}\u{2}\u{5BA}'
  	'\u{5BB}\u{3}\u{2}\u{2}\u{2}\u{5BB}\u{5BC}\u{3}\u{2}\u{2}\u{2}\u{5BC}'
  	'\u{5BD}\u{9}\u{F}\u{2}\u{2}\u{5BD}\u{E1}\u{3}\u{2}\u{2}\u{2}\u{5BE}\u{5BF}'
  	'\u{7}\u{37}\u{2}\u{2}\u{5BF}\u{5C0}\u{7}\u{61}\u{2}\u{2}\u{5C0}\u{5C1}'
  	'\u{7}\u{62}\u{2}\u{2}\u{5C1}\u{5C7}\u{5}\u{E4}\u{73}\u{2}\u{5C2}\u{5C3}'
  	'\u{7}\u{37}\u{2}\u{2}\u{5C3}\u{5C7}\u{7}\u{67}\u{2}\u{2}\u{5C4}\u{5C5}'
  	'\u{7}\u{37}\u{2}\u{2}\u{5C5}\u{5C7}\u{5}\u{D4}\u{6B}\u{2}\u{5C6}\u{5BE}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5C6}\u{5C2}\u{3}\u{2}\u{2}\u{2}\u{5C6}\u{5C4}'
  	'\u{3}\u{2}\u{2}\u{2}\u{5C7}\u{E3}\u{3}\u{2}\u{2}\u{2}\u{5C8}\u{5CD}\u{5}'
  	'\u{E6}\u{74}\u{2}\u{5C9}\u{5CA}\u{7}\u{D0}\u{2}\u{2}\u{5CA}\u{5CC}\u{5}'
  	'\u{E6}\u{74}\u{2}\u{5CB}\u{5C9}\u{3}\u{2}\u{2}\u{2}\u{5CC}\u{5CF}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5CD}\u{5CB}\u{3}\u{2}\u{2}\u{2}\u{5CD}\u{5CE}\u{3}'
  	'\u{2}\u{2}\u{2}\u{5CE}\u{E5}\u{3}\u{2}\u{2}\u{2}\u{5CF}\u{5CD}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5D0}\u{5D1}\u{5}\u{102}\u{82}\u{2}\u{5D1}\u{5D2}\u{5}\u{EA}'
  	'\u{76}\u{2}\u{5D2}\u{5D3}\u{5}\u{E8}\u{75}\u{2}\u{5D3}\u{E7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5D4}\u{5E1}\u{5}\u{102}\u{82}\u{2}\u{5D5}\u{5D6}\u{7}\u{BA}'
  	'\u{2}\u{2}\u{5D6}\u{5DB}\u{5}\u{102}\u{82}\u{2}\u{5D7}\u{5D8}\u{7}\u{C1}'
  	'\u{2}\u{2}\u{5D8}\u{5DA}\u{5}\u{102}\u{82}\u{2}\u{5D9}\u{5D7}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5DA}\u{5DD}\u{3}\u{2}\u{2}\u{2}\u{5DB}\u{5D9}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5DB}\u{5DC}\u{3}\u{2}\u{2}\u{2}\u{5DC}\u{5DE}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5DD}\u{5DB}\u{3}\u{2}\u{2}\u{2}\u{5DE}\u{5DF}\u{7}\u{BA}'
  	'\u{2}\u{2}\u{5DF}\u{5E1}\u{3}\u{2}\u{2}\u{2}\u{5E0}\u{5D4}\u{3}\u{2}'
  	'\u{2}\u{2}\u{5E0}\u{5D5}\u{3}\u{2}\u{2}\u{2}\u{5E1}\u{E9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5E2}\u{5E3}\u{9}\u{10}\u{2}\u{2}\u{5E3}\u{EB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5E4}\u{5E5}\u{7}\u{59}\u{2}\u{2}\u{5E5}\u{5E6}\u{7}\u{43}\u{2}'
  	'\u{2}\u{5E6}\u{5E9}\u{5}\u{B6}\u{5C}\u{2}\u{5E7}\u{5E8}\u{7}\u{5D}\u{2}'
  	'\u{2}\u{5E8}\u{5EA}\u{5}\u{D4}\u{6B}\u{2}\u{5E9}\u{5E7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5E9}\u{5EA}\u{3}\u{2}\u{2}\u{2}\u{5EA}\u{608}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5EB}\u{5EC}\u{7}\u{59}\u{2}\u{2}\u{5EC}\u{5ED}\u{7}\u{43}\u{2}'
  	'\u{2}\u{5ED}\u{5EE}\u{7}\u{5E}\u{2}\u{2}\u{5EE}\u{5EF}\u{7}\u{BA}\u{2}'
  	'\u{2}\u{5EF}\u{5F4}\u{5}\u{BA}\u{5E}\u{2}\u{5F0}\u{5F1}\u{7}\u{C1}\u{2}'
  	'\u{2}\u{5F1}\u{5F3}\u{5}\u{BA}\u{5E}\u{2}\u{5F2}\u{5F0}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5F3}\u{5F6}\u{3}\u{2}\u{2}\u{2}\u{5F4}\u{5F2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5F4}\u{5F5}\u{3}\u{2}\u{2}\u{2}\u{5F5}\u{5F7}\u{3}\u{2}\u{2}'
  	'\u{2}\u{5F6}\u{5F4}\u{3}\u{2}\u{2}\u{2}\u{5F7}\u{5F8}\u{7}\u{BB}\u{2}'
  	'\u{2}\u{5F8}\u{608}\u{3}\u{2}\u{2}\u{2}\u{5F9}\u{5FA}\u{7}\u{59}\u{2}'
  	'\u{2}\u{5FA}\u{5FB}\u{7}\u{43}\u{2}\u{2}\u{5FB}\u{5FC}\u{7}\u{69}\u{2}'
  	'\u{2}\u{5FC}\u{5FD}\u{7}\u{BA}\u{2}\u{2}\u{5FD}\u{602}\u{5}\u{BA}\u{5E}'
  	'\u{2}\u{5FE}\u{5FF}\u{7}\u{C1}\u{2}\u{2}\u{5FF}\u{601}\u{5}\u{BA}\u{5E}'
  	'\u{2}\u{600}\u{5FE}\u{3}\u{2}\u{2}\u{2}\u{601}\u{604}\u{3}\u{2}\u{2}'
  	'\u{2}\u{602}\u{600}\u{3}\u{2}\u{2}\u{2}\u{602}\u{603}\u{3}\u{2}\u{2}'
  	'\u{2}\u{603}\u{605}\u{3}\u{2}\u{2}\u{2}\u{604}\u{602}\u{3}\u{2}\u{2}'
  	'\u{2}\u{605}\u{606}\u{7}\u{BB}\u{2}\u{2}\u{606}\u{608}\u{3}\u{2}\u{2}'
  	'\u{2}\u{607}\u{5E4}\u{3}\u{2}\u{2}\u{2}\u{607}\u{5EB}\u{3}\u{2}\u{2}'
  	'\u{2}\u{607}\u{5F9}\u{3}\u{2}\u{2}\u{2}\u{608}\u{ED}\u{3}\u{2}\u{2}\u{2}'
  	'\u{609}\u{60A}\u{7}\u{42}\u{2}\u{2}\u{60A}\u{60B}\u{7}\u{43}\u{2}\u{2}'
  	'\u{60B}\u{60C}\u{5}\u{F0}\u{79}\u{2}\u{60C}\u{EF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{60D}\u{612}\u{5}\u{F2}\u{7A}\u{2}\u{60E}\u{60F}\u{7}\u{C1}\u{2}\u{2}'
  	'\u{60F}\u{611}\u{5}\u{F2}\u{7A}\u{2}\u{610}\u{60E}\u{3}\u{2}\u{2}\u{2}'
  	'\u{611}\u{614}\u{3}\u{2}\u{2}\u{2}\u{612}\u{610}\u{3}\u{2}\u{2}\u{2}'
  	'\u{612}\u{613}\u{3}\u{2}\u{2}\u{2}\u{613}\u{F1}\u{3}\u{2}\u{2}\u{2}\u{614}'
  	'\u{612}\u{3}\u{2}\u{2}\u{2}\u{615}\u{617}\u{5}\u{BA}\u{5E}\u{2}\u{616}'
  	'\u{618}\u{9}\u{11}\u{2}\u{2}\u{617}\u{616}\u{3}\u{2}\u{2}\u{2}\u{617}'
  	'\u{618}\u{3}\u{2}\u{2}\u{2}\u{618}\u{61B}\u{3}\u{2}\u{2}\u{2}\u{619}'
  	'\u{61A}\u{7}\u{56}\u{2}\u{2}\u{61A}\u{61C}\u{9}\u{12}\u{2}\u{2}\u{61B}'
  	'\u{619}\u{3}\u{2}\u{2}\u{2}\u{61B}\u{61C}\u{3}\u{2}\u{2}\u{2}\u{61C}'
  	'\u{626}\u{3}\u{2}\u{2}\u{2}\u{61D}\u{61F}\u{5}\u{C4}\u{63}\u{2}\u{61E}'
  	'\u{620}\u{9}\u{11}\u{2}\u{2}\u{61F}\u{61E}\u{3}\u{2}\u{2}\u{2}\u{61F}'
  	'\u{620}\u{3}\u{2}\u{2}\u{2}\u{620}\u{623}\u{3}\u{2}\u{2}\u{2}\u{621}'
  	'\u{622}\u{7}\u{56}\u{2}\u{2}\u{622}\u{624}\u{9}\u{12}\u{2}\u{2}\u{623}'
  	'\u{621}\u{3}\u{2}\u{2}\u{2}\u{623}\u{624}\u{3}\u{2}\u{2}\u{2}\u{624}'
  	'\u{626}\u{3}\u{2}\u{2}\u{2}\u{625}\u{615}\u{3}\u{2}\u{2}\u{2}\u{625}'
  	'\u{61D}\u{3}\u{2}\u{2}\u{2}\u{626}\u{F3}\u{3}\u{2}\u{2}\u{2}\u{627}\u{628}'
  	'\u{7}\u{44}\u{2}\u{2}\u{628}\u{62C}\u{7}\u{B4}\u{2}\u{2}\u{629}\u{62A}'
  	'\u{7}\u{44}\u{2}\u{2}\u{62A}\u{62C}\u{5}\u{FC}\u{7F}\u{2}\u{62B}\u{627}'
  	'\u{3}\u{2}\u{2}\u{2}\u{62B}\u{629}\u{3}\u{2}\u{2}\u{2}\u{62C}\u{F5}\u{3}'
  	'\u{2}\u{2}\u{2}\u{62D}\u{62E}\u{7}\u{60}\u{2}\u{2}\u{62E}\u{632}\u{7}'
  	'\u{B4}\u{2}\u{2}\u{62F}\u{630}\u{7}\u{60}\u{2}\u{2}\u{630}\u{632}\u{5}'
  	'\u{FC}\u{7F}\u{2}\u{631}\u{62D}\u{3}\u{2}\u{2}\u{2}\u{631}\u{62F}\u{3}'
  	'\u{2}\u{2}\u{2}\u{632}\u{F7}\u{3}\u{2}\u{2}\u{2}\u{633}\u{634}\u{7}\u{5A}'
  	'\u{2}\u{2}\u{634}\u{635}\u{7}\u{5B}\u{2}\u{2}\u{635}\u{F9}\u{3}\u{2}'
  	'\u{2}\u{2}\u{636}\u{637}\u{7}\u{11}\u{2}\u{2}\u{637}\u{639}\u{9}\u{13}'
  	'\u{2}\u{2}\u{638}\u{636}\u{3}\u{2}\u{2}\u{2}\u{639}\u{63C}\u{3}\u{2}'
  	'\u{2}\u{2}\u{63A}\u{638}\u{3}\u{2}\u{2}\u{2}\u{63A}\u{63B}\u{3}\u{2}'
  	'\u{2}\u{2}\u{63B}\u{FB}\u{3}\u{2}\u{2}\u{2}\u{63C}\u{63A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{63D}\u{63E}\u{7}\u{CA}\u{2}\u{2}\u{63E}\u{63F}\u{5}\u{94}\u{4B}'
  	'\u{2}\u{63F}\u{FD}\u{3}\u{2}\u{2}\u{2}\u{640}\u{682}\u{7}\u{7D}\u{2}'
  	'\u{2}\u{641}\u{682}\u{7}\u{7E}\u{2}\u{2}\u{642}\u{682}\u{7}\u{7F}\u{2}'
  	'\u{2}\u{643}\u{682}\u{7}\u{80}\u{2}\u{2}\u{644}\u{682}\u{7}\u{81}\u{2}'
  	'\u{2}\u{645}\u{682}\u{7}\u{82}\u{2}\u{2}\u{646}\u{682}\u{7}\u{83}\u{2}'
  	'\u{2}\u{647}\u{682}\u{7}\u{84}\u{2}\u{2}\u{648}\u{682}\u{7}\u{85}\u{2}'
  	'\u{2}\u{649}\u{682}\u{7}\u{86}\u{2}\u{2}\u{64A}\u{682}\u{7}\u{87}\u{2}'
  	'\u{2}\u{64B}\u{64C}\u{7}\u{88}\u{2}\u{2}\u{64C}\u{64D}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{64D}\u{682}\u{5}\u{100}\u{81}\u{2}\u{64E}\u{64F}\u{7}\u{89}\u{2}'
  	'\u{2}\u{64F}\u{650}\u{7}\u{CA}\u{2}\u{2}\u{650}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{651}\u{652}\u{7}\u{8A}\u{2}\u{2}\u{652}\u{653}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{653}\u{682}\u{5}\u{100}\u{81}\u{2}\u{654}\u{655}\u{7}\u{8B}\u{2}'
  	'\u{2}\u{655}\u{656}\u{7}\u{CA}\u{2}\u{2}\u{656}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{657}\u{658}\u{7}\u{8C}\u{2}\u{2}\u{658}\u{659}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{659}\u{682}\u{5}\u{100}\u{81}\u{2}\u{65A}\u{65B}\u{7}\u{8D}\u{2}'
  	'\u{2}\u{65B}\u{65C}\u{7}\u{CA}\u{2}\u{2}\u{65C}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{65D}\u{682}\u{7}\u{8E}\u{2}\u{2}\u{65E}\u{682}\u{7}\u{8F}\u{2}'
  	'\u{2}\u{65F}\u{682}\u{7}\u{90}\u{2}\u{2}\u{660}\u{661}\u{7}\u{91}\u{2}'
  	'\u{2}\u{661}\u{662}\u{7}\u{CA}\u{2}\u{2}\u{662}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{663}\u{664}\u{7}\u{92}\u{2}\u{2}\u{664}\u{665}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{665}\u{682}\u{5}\u{100}\u{81}\u{2}\u{666}\u{682}\u{7}\u{93}\u{2}'
  	'\u{2}\u{667}\u{682}\u{7}\u{94}\u{2}\u{2}\u{668}\u{682}\u{7}\u{95}\u{2}'
  	'\u{2}\u{669}\u{66A}\u{7}\u{96}\u{2}\u{2}\u{66A}\u{66B}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{66B}\u{682}\u{5}\u{100}\u{81}\u{2}\u{66C}\u{66D}\u{7}\u{97}\u{2}'
  	'\u{2}\u{66D}\u{66E}\u{7}\u{CA}\u{2}\u{2}\u{66E}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{66F}\u{682}\u{7}\u{98}\u{2}\u{2}\u{670}\u{682}\u{7}\u{99}\u{2}'
  	'\u{2}\u{671}\u{682}\u{7}\u{9A}\u{2}\u{2}\u{672}\u{673}\u{7}\u{9B}\u{2}'
  	'\u{2}\u{673}\u{674}\u{7}\u{CA}\u{2}\u{2}\u{674}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{675}\u{676}\u{7}\u{9C}\u{2}\u{2}\u{676}\u{677}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{677}\u{682}\u{5}\u{100}\u{81}\u{2}\u{678}\u{682}\u{7}\u{9D}\u{2}'
  	'\u{2}\u{679}\u{682}\u{7}\u{9E}\u{2}\u{2}\u{67A}\u{682}\u{7}\u{9F}\u{2}'
  	'\u{2}\u{67B}\u{67C}\u{7}\u{A0}\u{2}\u{2}\u{67C}\u{67D}\u{7}\u{CA}\u{2}'
  	'\u{2}\u{67D}\u{682}\u{5}\u{100}\u{81}\u{2}\u{67E}\u{67F}\u{7}\u{A1}\u{2}'
  	'\u{2}\u{67F}\u{680}\u{7}\u{CA}\u{2}\u{2}\u{680}\u{682}\u{5}\u{100}\u{81}'
  	'\u{2}\u{681}\u{640}\u{3}\u{2}\u{2}\u{2}\u{681}\u{641}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{642}\u{3}\u{2}\u{2}\u{2}\u{681}\u{643}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{644}\u{3}\u{2}\u{2}\u{2}\u{681}\u{645}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{646}\u{3}\u{2}\u{2}\u{2}\u{681}\u{647}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{648}\u{3}\u{2}\u{2}\u{2}\u{681}\u{649}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{64A}\u{3}\u{2}\u{2}\u{2}\u{681}\u{64B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{64E}\u{3}\u{2}\u{2}\u{2}\u{681}\u{651}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{654}\u{3}\u{2}\u{2}\u{2}\u{681}\u{657}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{65A}\u{3}\u{2}\u{2}\u{2}\u{681}\u{65D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{65E}\u{3}\u{2}\u{2}\u{2}\u{681}\u{65F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{660}\u{3}\u{2}\u{2}\u{2}\u{681}\u{663}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{666}\u{3}\u{2}\u{2}\u{2}\u{681}\u{667}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{668}\u{3}\u{2}\u{2}\u{2}\u{681}\u{669}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{66C}\u{3}\u{2}\u{2}\u{2}\u{681}\u{66F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{670}\u{3}\u{2}\u{2}\u{2}\u{681}\u{671}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{672}\u{3}\u{2}\u{2}\u{2}\u{681}\u{675}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{678}\u{3}\u{2}\u{2}\u{2}\u{681}\u{679}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{67A}\u{3}\u{2}\u{2}\u{2}\u{681}\u{67B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{681}\u{67E}\u{3}\u{2}\u{2}\u{2}\u{682}\u{FF}\u{3}\u{2}\u{2}\u{2}'
  	'\u{683}\u{685}\u{9}\u{8}\u{2}\u{2}\u{684}\u{683}\u{3}\u{2}\u{2}\u{2}'
  	'\u{684}\u{685}\u{3}\u{2}\u{2}\u{2}\u{685}\u{686}\u{3}\u{2}\u{2}\u{2}'
  	'\u{686}\u{687}\u{7}\u{B4}\u{2}\u{2}\u{687}\u{101}\u{3}\u{2}\u{2}\u{2}'
  	'\u{688}\u{689}\u{5}\u{118}\u{8D}\u{2}\u{689}\u{103}\u{3}\u{2}\u{2}\u{2}'
  	'\u{68A}\u{68B}\u{7}\u{B3}\u{2}\u{2}\u{68B}\u{68C}\u{5}\u{106}\u{84}\u{2}'
  	'\u{68C}\u{68D}\u{7}\u{BF}\u{2}\u{2}\u{68D}\u{695}\u{3}\u{2}\u{2}\u{2}'
  	'\u{68E}\u{68F}\u{7}\u{BE}\u{2}\u{2}\u{68F}\u{690}\u{7}\u{A5}\u{2}\u{2}'
  	'\u{690}\u{691}\u{5}\u{FC}\u{7F}\u{2}\u{691}\u{692}\u{5}\u{106}\u{84}'
  	'\u{2}\u{692}\u{693}\u{7}\u{BF}\u{2}\u{2}\u{693}\u{695}\u{3}\u{2}\u{2}'
  	'\u{2}\u{694}\u{68A}\u{3}\u{2}\u{2}\u{2}\u{694}\u{68E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{695}\u{105}\u{3}\u{2}\u{2}\u{2}\u{696}\u{697}\u{7}\u{51}\u{2}'
  	'\u{2}\u{697}\u{699}\u{5}\u{108}\u{85}\u{2}\u{698}\u{696}\u{3}\u{2}\u{2}'
  	'\u{2}\u{698}\u{699}\u{3}\u{2}\u{2}\u{2}\u{699}\u{69C}\u{3}\u{2}\u{2}'
  	'\u{2}\u{69A}\u{69B}\u{7}\u{B1}\u{2}\u{2}\u{69B}\u{69D}\u{5}\u{10A}\u{86}'
  	'\u{2}\u{69C}\u{69A}\u{3}\u{2}\u{2}\u{2}\u{69C}\u{69D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{69D}\u{6A2}\u{3}\u{2}\u{2}\u{2}\u{69E}\u{69F}\u{7}\u{37}\u{2}'
  	'\u{2}\u{69F}\u{6A0}\u{7}\u{B0}\u{2}\u{2}\u{6A0}\u{6A1}\u{7}\u{C3}\u{2}'
  	'\u{2}\u{6A1}\u{6A3}\u{7}\u{B8}\u{2}\u{2}\u{6A2}\u{69E}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6A2}\u{6A3}\u{3}\u{2}\u{2}\u{2}\u{6A3}\u{6A8}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6A4}\u{6A5}\u{7}\u{37}\u{2}\u{2}\u{6A5}\u{6A6}\u{7}\u{61}\u{2}'
  	'\u{2}\u{6A6}\u{6A7}\u{7}\u{62}\u{2}\u{2}\u{6A7}\u{6A9}\u{5}\u{E4}\u{73}'
  	'\u{2}\u{6A8}\u{6A4}\u{3}\u{2}\u{2}\u{2}\u{6A8}\u{6A9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6A9}\u{6B3}\u{3}\u{2}\u{2}\u{2}\u{6AA}\u{6AB}\u{7}\u{37}\u{2}'
  	'\u{2}\u{6AB}\u{6B1}\u{7}\u{AE}\u{2}\u{2}\u{6AC}\u{6AD}\u{7}\u{BA}\u{2}'
  	'\u{2}\u{6AD}\u{6AE}\u{7}\u{AF}\u{2}\u{2}\u{6AE}\u{6AF}\u{7}\u{C3}\u{2}'
  	'\u{2}\u{6AF}\u{6B0}\u{7}\u{B4}\u{2}\u{2}\u{6B0}\u{6B2}\u{7}\u{BB}\u{2}'
  	'\u{2}\u{6B1}\u{6AC}\u{3}\u{2}\u{2}\u{2}\u{6B1}\u{6B2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6B2}\u{6B4}\u{3}\u{2}\u{2}\u{2}\u{6B3}\u{6AA}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6B3}\u{6B4}\u{3}\u{2}\u{2}\u{2}\u{6B4}\u{6BC}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6B5}\u{6B6}\u{7}\u{37}\u{2}\u{2}\u{6B6}\u{6B7}\u{7}\u{AD}\u{2}'
  	'\u{2}\u{6B7}\u{6B8}\u{7}\u{51}\u{2}\u{2}\u{6B8}\u{6B9}\u{7}\u{BA}\u{2}'
  	'\u{2}\u{6B9}\u{6BA}\u{5}\u{114}\u{8B}\u{2}\u{6BA}\u{6BB}\u{7}\u{BB}\u{2}'
  	'\u{2}\u{6BB}\u{6BD}\u{3}\u{2}\u{2}\u{2}\u{6BC}\u{6B5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6BC}\u{6BD}\u{3}\u{2}\u{2}\u{2}\u{6BD}\u{6C2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6BE}\u{6BF}\u{7}\u{37}\u{2}\u{2}\u{6BF}\u{6C0}\u{7}\u{AD}\u{2}'
  	'\u{2}\u{6C0}\u{6C1}\u{7}\u{C3}\u{2}\u{2}\u{6C1}\u{6C3}\u{7}\u{B8}\u{2}'
  	'\u{2}\u{6C2}\u{6BE}\u{3}\u{2}\u{2}\u{2}\u{6C2}\u{6C3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6C3}\u{6C8}\u{3}\u{2}\u{2}\u{2}\u{6C4}\u{6C5}\u{7}\u{37}\u{2}'
  	'\u{2}\u{6C5}\u{6C6}\u{7}\u{AC}\u{2}\u{2}\u{6C6}\u{6C7}\u{7}\u{C3}\u{2}'
  	'\u{2}\u{6C7}\u{6C9}\u{7}\u{B8}\u{2}\u{2}\u{6C8}\u{6C4}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6C8}\u{6C9}\u{3}\u{2}\u{2}\u{2}\u{6C9}\u{6CE}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6CA}\u{6CB}\u{7}\u{37}\u{2}\u{2}\u{6CB}\u{6CC}\u{7}\u{AB}\u{2}'
  	'\u{2}\u{6CC}\u{6CD}\u{7}\u{C3}\u{2}\u{2}\u{6CD}\u{6CF}\u{7}\u{B8}\u{2}'
  	'\u{2}\u{6CE}\u{6CA}\u{3}\u{2}\u{2}\u{2}\u{6CE}\u{6CF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6CF}\u{6D1}\u{3}\u{2}\u{2}\u{2}\u{6D0}\u{6D2}\u{5}\u{F4}\u{7B}'
  	'\u{2}\u{6D1}\u{6D0}\u{3}\u{2}\u{2}\u{2}\u{6D1}\u{6D2}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6D2}\u{6D5}\u{3}\u{2}\u{2}\u{2}\u{6D3}\u{6D4}\u{7}\u{30}\u{2}'
  	'\u{2}\u{6D4}\u{6D6}\u{5}\u{110}\u{89}\u{2}\u{6D5}\u{6D3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6D5}\u{6D6}\u{3}\u{2}\u{2}\u{2}\u{6D6}\u{107}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6D7}\u{6D8}\u{9}\u{14}\u{2}\u{2}\u{6D8}\u{6D9}\u{7}\u{AA}\u{2}'
  	'\u{2}\u{6D9}\u{109}\u{3}\u{2}\u{2}\u{2}\u{6DA}\u{6DF}\u{5}\u{10C}\u{87}'
  	'\u{2}\u{6DB}\u{6DC}\u{7}\u{C1}\u{2}\u{2}\u{6DC}\u{6DE}\u{5}\u{10A}\u{86}'
  	'\u{2}\u{6DD}\u{6DB}\u{3}\u{2}\u{2}\u{2}\u{6DE}\u{6E1}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6DF}\u{6DD}\u{3}\u{2}\u{2}\u{2}\u{6DF}\u{6E0}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6E0}\u{10B}\u{3}\u{2}\u{2}\u{2}\u{6E1}\u{6DF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6E2}\u{6FC}\u{5}\u{116}\u{8C}\u{2}\u{6E3}\u{6E4}\u{7}\u{BA}\u{2}'
  	'\u{2}\u{6E4}\u{6E7}\u{5}\u{10E}\u{88}\u{2}\u{6E5}\u{6E6}\u{7}\u{41}\u{2}'
  	'\u{2}\u{6E6}\u{6E8}\u{5}\u{D4}\u{6B}\u{2}\u{6E7}\u{6E5}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6E7}\u{6E8}\u{3}\u{2}\u{2}\u{2}\u{6E8}\u{6ED}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6E9}\u{6EA}\u{7}\u{3F}\u{2}\u{2}\u{6EA}\u{6EB}\u{7}\u{B2}\u{2}'
  	'\u{2}\u{6EB}\u{6EC}\u{7}\u{C3}\u{2}\u{2}\u{6EC}\u{6EE}\u{5}\u{116}\u{8C}'
  	'\u{2}\u{6ED}\u{6E9}\u{3}\u{2}\u{2}\u{2}\u{6ED}\u{6EE}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6EE}\u{6F2}\u{3}\u{2}\u{2}\u{2}\u{6EF}\u{6F0}\u{7}\u{42}\u{2}'
  	'\u{2}\u{6F0}\u{6F1}\u{7}\u{43}\u{2}\u{2}\u{6F1}\u{6F3}\u{5}\u{F0}\u{79}'
  	'\u{2}\u{6F2}\u{6EF}\u{3}\u{2}\u{2}\u{2}\u{6F2}\u{6F3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6F3}\u{6F5}\u{3}\u{2}\u{2}\u{2}\u{6F4}\u{6F6}\u{5}\u{F4}\u{7B}'
  	'\u{2}\u{6F5}\u{6F4}\u{3}\u{2}\u{2}\u{2}\u{6F5}\u{6F6}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6F6}\u{6F8}\u{3}\u{2}\u{2}\u{2}\u{6F7}\u{6F9}\u{5}\u{F6}\u{7C}'
  	'\u{2}\u{6F8}\u{6F7}\u{3}\u{2}\u{2}\u{2}\u{6F8}\u{6F9}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6F9}\u{6FA}\u{3}\u{2}\u{2}\u{2}\u{6FA}\u{6FB}\u{7}\u{BB}\u{2}'
  	'\u{2}\u{6FB}\u{6FD}\u{3}\u{2}\u{2}\u{2}\u{6FC}\u{6E3}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6FC}\u{6FD}\u{3}\u{2}\u{2}\u{2}\u{6FD}\u{10D}\u{3}\u{2}\u{2}'
  	'\u{2}\u{6FE}\u{703}\u{5}\u{116}\u{8C}\u{2}\u{6FF}\u{700}\u{7}\u{C1}\u{2}'
  	'\u{2}\u{700}\u{702}\u{5}\u{10E}\u{88}\u{2}\u{701}\u{6FF}\u{3}\u{2}\u{2}'
  	'\u{2}\u{702}\u{705}\u{3}\u{2}\u{2}\u{2}\u{703}\u{701}\u{3}\u{2}\u{2}'
  	'\u{2}\u{703}\u{704}\u{3}\u{2}\u{2}\u{2}\u{704}\u{10F}\u{3}\u{2}\u{2}'
  	'\u{2}\u{705}\u{703}\u{3}\u{2}\u{2}\u{2}\u{706}\u{709}\u{5}\u{112}\u{8A}'
  	'\u{2}\u{707}\u{708}\u{7}\u{C1}\u{2}\u{2}\u{708}\u{70A}\u{5}\u{110}\u{89}'
  	'\u{2}\u{709}\u{707}\u{3}\u{2}\u{2}\u{2}\u{709}\u{70A}\u{3}\u{2}\u{2}'
  	'\u{2}\u{70A}\u{111}\u{3}\u{2}\u{2}\u{2}\u{70B}\u{70C}\u{9}\u{15}\u{2}'
  	'\u{2}\u{70C}\u{113}\u{3}\u{2}\u{2}\u{2}\u{70D}\u{710}\u{7}\u{B8}\u{2}'
  	'\u{2}\u{70E}\u{70F}\u{7}\u{C1}\u{2}\u{2}\u{70F}\u{711}\u{5}\u{114}\u{8B}'
  	'\u{2}\u{710}\u{70E}\u{3}\u{2}\u{2}\u{2}\u{710}\u{711}\u{3}\u{2}\u{2}'
  	'\u{2}\u{711}\u{115}\u{3}\u{2}\u{2}\u{2}\u{712}\u{717}\u{5}\u{118}\u{8D}'
  	'\u{2}\u{713}\u{714}\u{7}\u{C2}\u{2}\u{2}\u{714}\u{716}\u{5}\u{116}\u{8C}'
  	'\u{2}\u{715}\u{713}\u{3}\u{2}\u{2}\u{2}\u{716}\u{719}\u{3}\u{2}\u{2}'
  	'\u{2}\u{717}\u{715}\u{3}\u{2}\u{2}\u{2}\u{717}\u{718}\u{3}\u{2}\u{2}'
  	'\u{2}\u{718}\u{117}\u{3}\u{2}\u{2}\u{2}\u{719}\u{717}\u{3}\u{2}\u{2}'
  	'\u{2}\u{71A}\u{71B}\u{9}\u{16}\u{2}\u{2}\u{71B}\u{119}\u{3}\u{2}\u{2}'
  	'\u{2}\u{71C}\u{71D}\u{9}\u{17}\u{2}\u{2}\u{71D}\u{11B}\u{3}\u{2}\u{2}'
  	'\u{2}\u{BB}\u{126}\u{134}\u{139}\u{13E}\u{143}\u{148}\u{14D}\u{151}\u{157}'
  	'\u{15B}\u{163}\u{16C}\u{173}\u{17C}\u{182}\u{184}\u{18D}\u{196}\u{19D}'
  	'\u{1A1}\u{1A6}\u{1AA}\u{1BF}\u{1C8}\u{1CC}\u{1D2}\u{1E2}\u{1E8}\u{1ED}'
  	'\u{1F2}\u{1FD}\u{203}\u{20B}\u{20F}\u{211}\u{21A}\u{223}\u{228}\u{22C}'
  	'\u{230}\u{234}\u{236}\u{23E}\u{247}\u{24D}\u{258}\u{262}\u{265}\u{269}'
  	'\u{26E}\u{278}\u{280}\u{283}\u{286}\u{28E}\u{299}\u{2B3}\u{2BA}\u{2C3}'
  	'\u{2D1}\u{2D7}\u{2DA}\u{2E1}\u{2F8}\u{2FB}\u{2FE}\u{302}\u{323}\u{32F}'
  	'\u{33A}\u{33F}\u{344}\u{349}\u{350}\u{35D}\u{361}\u{365}\u{367}\u{36B}'
  	'\u{37D}\u{392}\u{3A2}\u{3A8}\u{3CA}\u{3D6}\u{3D8}\u{3E5}\u{3EA}\u{3F1}'
  	'\u{3F7}\u{3FA}\u{3FF}\u{409}\u{410}\u{418}\u{426}\u{428}\u{430}\u{43F}'
  	'\u{446}\u{453}\u{456}\u{459}\u{45C}\u{45F}\u{462}\u{465}\u{468}\u{46D}'
  	'\u{474}\u{477}\u{47A}\u{47F}\u{486}\u{48B}\u{48F}\u{495}\u{498}\u{49F}'
  	'\u{4A4}\u{4A9}\u{4AD}\u{4B5}\u{4BA}\u{4BE}\u{4C0}\u{535}\u{53D}\u{544}'
  	'\u{547}\u{558}\u{567}\u{56F}\u{574}\u{57B}\u{585}\u{596}\u{5A2}\u{5A4}'
  	'\u{5AC}\u{5B4}\u{5BA}\u{5C6}\u{5CD}\u{5DB}\u{5E0}\u{5E9}\u{5F4}\u{602}'
  	'\u{607}\u{612}\u{617}\u{61B}\u{61F}\u{623}\u{625}\u{62B}\u{631}\u{63A}'
  	'\u{681}\u{684}\u{694}\u{698}\u{69C}\u{6A2}\u{6A8}\u{6B1}\u{6B3}\u{6BC}'
  	'\u{6C2}\u{6C8}\u{6CE}\u{6D1}\u{6D5}\u{6DF}\u{6E7}\u{6ED}\u{6F2}\u{6F5}'
  	'\u{6F8}\u{6FC}\u{703}\u{709}\u{710}\u{717}';
  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN.codeUnits);
}
class TriggerUnitContext extends ParserRuleContext {
  TerminalNode? TRIGGER() => getToken(ApexParser.TOKEN_TRIGGER, 0);
  List<IdContext> ids() => getRuleContexts<IdContext>();
  IdContext? id(int i) => getRuleContext<IdContext>(i);
  TerminalNode? ON() => getToken(ApexParser.TOKEN_ON, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  List<TriggerCaseContext> triggerCases() => getRuleContexts<TriggerCaseContext>();
  TriggerCaseContext? triggerCase(int i) => getRuleContext<TriggerCaseContext>(i);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? EOF() => getToken(ApexParser.TOKEN_EOF, 0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  TriggerUnitContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? BEFORE() => getToken(ApexParser.TOKEN_BEFORE, 0);
  TerminalNode? AFTER() => getToken(ApexParser.TOKEN_AFTER, 0);
  TerminalNode? INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  TerminalNode? DELETE() => getToken(ApexParser.TOKEN_DELETE, 0);
  TerminalNode? UNDELETE() => getToken(ApexParser.TOKEN_UNDELETE, 0);
  TriggerCaseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TypeDeclarationContext? typeDeclaration() => getRuleContext<TypeDeclarationContext>(0);
  TerminalNode? EOF() => getToken(ApexParser.TOKEN_EOF, 0);
  CompilationUnitContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TypeDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeDeclaration;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ClassDeclarationContext extends ParserRuleContext {
  TerminalNode? CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);
  IdContext? id() => getRuleContext<IdContext>(0);
  ClassBodyContext? classBody() => getRuleContext<ClassBodyContext>(0);
  TerminalNode? EXTENDS() => getToken(ApexParser.TOKEN_EXTENDS, 0);
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  TerminalNode? IMPLEMENTS() => getToken(ApexParser.TOKEN_IMPLEMENTS, 0);
  TypeListContext? typeList() => getRuleContext<TypeListContext>(0);
  ClassDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? ENUM() => getToken(ApexParser.TOKEN_ENUM, 0);
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  EnumConstantsContext? enumConstants() => getRuleContext<EnumConstantsContext>(0);
  EnumDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  IdContext? id(int i) => getRuleContext<IdContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  EnumConstantsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? INTERFACE() => getToken(ApexParser.TOKEN_INTERFACE, 0);
  IdContext? id() => getRuleContext<IdContext>(0);
  InterfaceBodyContext? interfaceBody() => getRuleContext<InterfaceBodyContext>(0);
  TerminalNode? EXTENDS() => getToken(ApexParser.TOKEN_EXTENDS, 0);
  TypeListContext? typeList() => getRuleContext<TypeListContext>(0);
  InterfaceDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterInterfaceDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInterfaceDeclaration(this);
  }
}

class TypeListContext extends ParserRuleContext {
  List<TypeRefContext> typeRefs() => getRuleContexts<TypeRefContext>();
  TypeRefContext? typeRef(int i) => getRuleContext<TypeRefContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  TypeListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<GroupedDeclarationsContext> groupedDeclarationss() => getRuleContexts<GroupedDeclarationsContext>();
  GroupedDeclarationsContext? groupedDeclarations(int i) => getRuleContext<GroupedDeclarationsContext>(i);
  List<ClassBodyDeclarationContext> classBodyDeclarations() => getRuleContexts<ClassBodyDeclarationContext>();
  ClassBodyDeclarationContext? classBodyDeclaration(int i) => getRuleContext<ClassBodyDeclarationContext>(i);
  ClassBodyContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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

class GroupedDeclarationsContext extends ParserRuleContext {
  TerminalNode? START_GROUP_COMMENT() => getToken(ApexParser.TOKEN_START_GROUP_COMMENT, 0);
  TerminalNode? END_GROUP_COMMENT() => getToken(ApexParser.TOKEN_END_GROUP_COMMENT, 0);
  List<ClassBodyDeclarationContext> classBodyDeclarations() => getRuleContexts<ClassBodyDeclarationContext>();
  ClassBodyDeclarationContext? classBodyDeclaration(int i) => getRuleContext<ClassBodyDeclarationContext>(i);
  GroupedDeclarationsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_groupedDeclarations;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterGroupedDeclarations(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitGroupedDeclarations(this);
  }
}

class InterfaceBodyContext extends ParserRuleContext {
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<InterfaceMethodDeclarationContext> interfaceMethodDeclarations() => getRuleContexts<InterfaceMethodDeclarationContext>();
  InterfaceMethodDeclarationContext? interfaceMethodDeclaration(int i) => getRuleContext<InterfaceMethodDeclarationContext>(i);
  InterfaceBodyContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ClassBodyDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_classBodyDeclaration;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class ModifierContext extends ParserRuleContext {
  AnnotationContext? annotation() => getRuleContext<AnnotationContext>(0);
  TerminalNode? GLOBAL() => getToken(ApexParser.TOKEN_GLOBAL, 0);
  TerminalNode? PUBLIC() => getToken(ApexParser.TOKEN_PUBLIC, 0);
  TerminalNode? PROTECTED() => getToken(ApexParser.TOKEN_PROTECTED, 0);
  TerminalNode? PRIVATE() => getToken(ApexParser.TOKEN_PRIVATE, 0);
  TerminalNode? TRANSIENT() => getToken(ApexParser.TOKEN_TRANSIENT, 0);
  TerminalNode? STATIC() => getToken(ApexParser.TOKEN_STATIC, 0);
  TerminalNode? ABSTRACT() => getToken(ApexParser.TOKEN_ABSTRACT, 0);
  TerminalNode? FINAL() => getToken(ApexParser.TOKEN_FINAL, 0);
  TerminalNode? WEBSERVICE() => getToken(ApexParser.TOKEN_WEBSERVICE, 0);
  TerminalNode? OVERRIDE() => getToken(ApexParser.TOKEN_OVERRIDE, 0);
  TerminalNode? VIRTUAL() => getToken(ApexParser.TOKEN_VIRTUAL, 0);
  TerminalNode? TESTMETHOD() => getToken(ApexParser.TOKEN_TESTMETHOD, 0);
  TerminalNode? WITH() => getToken(ApexParser.TOKEN_WITH, 0);
  TerminalNode? SHARING() => getToken(ApexParser.TOKEN_SHARING, 0);
  TerminalNode? WITHOUT() => getToken(ApexParser.TOKEN_WITHOUT, 0);
  TerminalNode? INHERITED() => getToken(ApexParser.TOKEN_INHERITED, 0);
  ModifierContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  MemberDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_memberDeclaration;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class MethodDeclarationContext extends ParserRuleContext {
  IdContext? id() => getRuleContext<IdContext>(0);
  FormalParametersContext? formalParameters() => getRuleContext<FormalParametersContext>(0);
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  TerminalNode? VOID() => getToken(ApexParser.TOKEN_VOID, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  MethodDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  QualifiedNameContext? qualifiedName() => getRuleContext<QualifiedNameContext>(0);
  FormalParametersContext? formalParameters() => getRuleContext<FormalParametersContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ConstructorDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_constructorDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterConstructorDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitConstructorDeclaration(this);
  }
}

class FieldDeclarationContext extends ParserRuleContext {
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  VariableDeclaratorsContext? variableDeclarators() => getRuleContext<VariableDeclaratorsContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  FieldDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<PropertyBlockContext> propertyBlocks() => getRuleContexts<PropertyBlockContext>();
  PropertyBlockContext? propertyBlock(int i) => getRuleContext<PropertyBlockContext>(i);
  PropertyDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  IdContext? id() => getRuleContext<IdContext>(0);
  FormalParametersContext? formalParameters() => getRuleContext<FormalParametersContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  TerminalNode? VOID() => getToken(ApexParser.TOKEN_VOID, 0);
  TerminalNode? DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  InterfaceMethodDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_interfaceMethodDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterInterfaceMethodDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInterfaceMethodDeclaration(this);
  }
}

class VariableDeclaratorsContext extends ParserRuleContext {
  List<VariableDeclaratorContext> variableDeclarators() => getRuleContexts<VariableDeclaratorContext>();
  VariableDeclaratorContext? variableDeclarator(int i) => getRuleContext<VariableDeclaratorContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  VariableDeclaratorsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  VariableDeclaratorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  ArrayInitializerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TypeNameContext? typeName(int i) => getRuleContext<TypeNameContext>(i);
  ArraySubscriptsContext? arraySubscripts() => getRuleContext<ArraySubscriptsContext>(0);
  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);
  TypeRefContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACK(int i) => getToken(ApexParser.TOKEN_LBRACK, i);
  List<TerminalNode> RBRACKs() => getTokens(ApexParser.TOKEN_RBRACK);
  TerminalNode? RBRACK(int i) => getToken(ApexParser.TOKEN_RBRACK, i);
  ArraySubscriptsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LIST() => getToken(ApexParser.TOKEN_LIST, 0);
  TypeArgumentsContext? typeArguments() => getRuleContext<TypeArgumentsContext>(0);
  TerminalNode? SET() => getToken(ApexParser.TOKEN_SET, 0);
  TerminalNode? MAP() => getToken(ApexParser.TOKEN_MAP, 0);
  IdContext? id() => getRuleContext<IdContext>(0);
  TypeNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LT() => getToken(ApexParser.TOKEN_LT, 0);
  TypeListContext? typeList() => getRuleContext<TypeListContext>(0);
  TerminalNode? GT() => getToken(ApexParser.TOKEN_GT, 0);
  TypeArgumentsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  FormalParameterListContext? formalParameterList() => getRuleContext<FormalParameterListContext>(0);
  FormalParametersContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  List<FormalParameterContext> formalParameters() => getRuleContexts<FormalParameterContext>();
  FormalParameterContext? formalParameter(int i) => getRuleContext<FormalParameterContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  FormalParameterListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  IdContext? id() => getRuleContext<IdContext>(0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  FormalParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  IdContext? id(int i) => getRuleContext<IdContext>(i);
  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);
  QualifiedNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  TerminalNode? LongLiteral() => getToken(ApexParser.TOKEN_LongLiteral, 0);
  TerminalNode? NumberLiteral() => getToken(ApexParser.TOKEN_NumberLiteral, 0);
  TerminalNode? StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);
  TerminalNode? BooleanLiteral() => getToken(ApexParser.TOKEN_BooleanLiteral, 0);
  TerminalNode? NULL() => getToken(ApexParser.TOKEN_NULL, 0);
  LiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? ATSIGN() => getToken(ApexParser.TOKEN_ATSIGN, 0);
  QualifiedNameContext? qualifiedName() => getRuleContext<QualifiedNameContext>(0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ElementValuePairsContext? elementValuePairs() => getRuleContext<ElementValuePairsContext>(0);
  ElementValueContext? elementValue() => getRuleContext<ElementValueContext>(0);
  AnnotationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  List<ElementValuePairContext> elementValuePairs() => getRuleContexts<ElementValuePairContext>();
  ElementValuePairContext? elementValuePair(int i) => getRuleContext<ElementValuePairContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  ElementValuePairsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  ElementValueContext? elementValue() => getRuleContext<ElementValueContext>(0);
  ElementValuePairContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  AnnotationContext? annotation() => getRuleContext<AnnotationContext>(0);
  ElementValueArrayInitializerContext? elementValueArrayInitializer() => getRuleContext<ElementValueArrayInitializerContext>(0);
  ElementValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<ElementValueContext> elementValues() => getRuleContexts<ElementValueContext>();
  ElementValueContext? elementValue(int i) => getRuleContext<ElementValueContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  ElementValueArrayInitializerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elementValueArrayInitializer;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterElementValueArrayInitializer(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitElementValueArrayInitializer(this);
  }
}

class BlockContext extends ParserRuleContext {
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  BlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  LocalVariableDeclarationContext? localVariableDeclaration() => getRuleContext<LocalVariableDeclarationContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  LocalVariableDeclarationStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_localVariableDeclarationStatement;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLocalVariableDeclarationStatement(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLocalVariableDeclarationStatement(this);
  }
}

class LocalVariableDeclarationContext extends ParserRuleContext {
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  VariableDeclaratorsContext? variableDeclarators() => getRuleContext<VariableDeclaratorsContext>(0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  LocalVariableDeclarationContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_localVariableDeclaration;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLocalVariableDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLocalVariableDeclaration(this);
  }
}

class StatementContext extends ParserRuleContext {
  BlockContext? block() => getRuleContext<BlockContext>(0);
  IfStatementContext? ifStatement() => getRuleContext<IfStatementContext>(0);
  SwitchStatementContext? switchStatement() => getRuleContext<SwitchStatementContext>(0);
  ForStatementContext? forStatement() => getRuleContext<ForStatementContext>(0);
  WhileStatementContext? whileStatement() => getRuleContext<WhileStatementContext>(0);
  DoWhileStatementContext? doWhileStatement() => getRuleContext<DoWhileStatementContext>(0);
  TryStatementContext? tryStatement() => getRuleContext<TryStatementContext>(0);
  ReturnStatementContext? returnStatement() => getRuleContext<ReturnStatementContext>(0);
  ThrowStatementContext? throwStatement() => getRuleContext<ThrowStatementContext>(0);
  BreakStatementContext? breakStatement() => getRuleContext<BreakStatementContext>(0);
  ContinueStatementContext? continueStatement() => getRuleContext<ContinueStatementContext>(0);
  InsertStatementContext? insertStatement() => getRuleContext<InsertStatementContext>(0);
  UpdateStatementContext? updateStatement() => getRuleContext<UpdateStatementContext>(0);
  DeleteStatementContext? deleteStatement() => getRuleContext<DeleteStatementContext>(0);
  UndeleteStatementContext? undeleteStatement() => getRuleContext<UndeleteStatementContext>(0);
  UpsertStatementContext? upsertStatement() => getRuleContext<UpsertStatementContext>(0);
  MergeStatementContext? mergeStatement() => getRuleContext<MergeStatementContext>(0);
  RunAsStatementContext? runAsStatement() => getRuleContext<RunAsStatementContext>(0);
  LocalVariableDeclarationStatementContext? localVariableDeclarationStatement() => getRuleContext<LocalVariableDeclarationStatementContext>(0);
  ExpressionStatementContext? expressionStatement() => getRuleContext<ExpressionStatementContext>(0);
  StatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? IF() => getToken(ApexParser.TOKEN_IF, 0);
  ParExpressionContext? parExpression() => getRuleContext<ParExpressionContext>(0);
  List<StatementContext> statements() => getRuleContexts<StatementContext>();
  StatementContext? statement(int i) => getRuleContext<StatementContext>(i);
  TerminalNode? ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);
  IfStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? SWITCH() => getToken(ApexParser.TOKEN_SWITCH, 0);
  TerminalNode? ON() => getToken(ApexParser.TOKEN_ON, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<WhenControlContext> whenControls() => getRuleContexts<WhenControlContext>();
  WhenControlContext? whenControl(int i) => getRuleContext<WhenControlContext>(i);
  SwitchStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);
  WhenValueContext? whenValue() => getRuleContext<WhenValueContext>(0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  WhenControlContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);
  List<WhenLiteralContext> whenLiterals() => getRuleContexts<WhenLiteralContext>();
  WhenLiteralContext? whenLiteral(int i) => getRuleContext<WhenLiteralContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  List<IdContext> ids() => getRuleContexts<IdContext>();
  IdContext? id(int i) => getRuleContext<IdContext>(i);
  WhenValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  TerminalNode? SUB() => getToken(ApexParser.TOKEN_SUB, 0);
  TerminalNode? LongLiteral() => getToken(ApexParser.TOKEN_LongLiteral, 0);
  TerminalNode? StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);
  TerminalNode? NULL() => getToken(ApexParser.TOKEN_NULL, 0);
  IdContext? id() => getRuleContext<IdContext>(0);
  WhenLiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? FOR() => getToken(ApexParser.TOKEN_FOR, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  ForControlContext? forControl() => getRuleContext<ForControlContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  ForStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? WHILE() => getToken(ApexParser.TOKEN_WHILE, 0);
  ParExpressionContext? parExpression() => getRuleContext<ParExpressionContext>(0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  WhileStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? DO() => getToken(ApexParser.TOKEN_DO, 0);
  StatementContext? statement() => getRuleContext<StatementContext>(0);
  TerminalNode? WHILE() => getToken(ApexParser.TOKEN_WHILE, 0);
  ParExpressionContext? parExpression() => getRuleContext<ParExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  DoWhileStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? TRY() => getToken(ApexParser.TOKEN_TRY, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  FinallyBlockContext? finallyBlock() => getRuleContext<FinallyBlockContext>(0);
  List<CatchClauseContext> catchClauses() => getRuleContexts<CatchClauseContext>();
  CatchClauseContext? catchClause(int i) => getRuleContext<CatchClauseContext>(i);
  TryStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? RETURN() => getToken(ApexParser.TOKEN_RETURN, 0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ReturnStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? THROW() => getToken(ApexParser.TOKEN_THROW, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  ThrowStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? BREAK() => getToken(ApexParser.TOKEN_BREAK, 0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  BreakStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? CONTINUE() => getToken(ApexParser.TOKEN_CONTINUE, 0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  ContinueStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  InsertStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  UpdateStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? DELETE() => getToken(ApexParser.TOKEN_DELETE, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  DeleteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? UNDELETE() => getToken(ApexParser.TOKEN_UNDELETE, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  UndeleteStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? UPSERT() => getToken(ApexParser.TOKEN_UPSERT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  QualifiedNameContext? qualifiedName() => getRuleContext<QualifiedNameContext>(0);
  UpsertStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? MERGE() => getToken(ApexParser.TOKEN_MERGE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  MergeStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? SYSTEMRUNAS() => getToken(ApexParser.TOKEN_SYSTEMRUNAS, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  ExpressionListContext? expressionList() => getRuleContext<ExpressionListContext>(0);
  RunAsStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  ExpressionStatementContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  GetterContext? getter() => getRuleContext<GetterContext>(0);
  SetterContext? setter() => getRuleContext<SetterContext>(0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  PropertyBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? GET() => getToken(ApexParser.TOKEN_GET, 0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  GetterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? SET() => getToken(ApexParser.TOKEN_SET, 0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  SetterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? CATCH() => getToken(ApexParser.TOKEN_CATCH, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  QualifiedNameContext? qualifiedName() => getRuleContext<QualifiedNameContext>(0);
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  CatchClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? FINALLY() => getToken(ApexParser.TOKEN_FINALLY, 0);
  BlockContext? block() => getRuleContext<BlockContext>(0);
  FinallyBlockContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  EnhancedForControlContext? enhancedForControl() => getRuleContext<EnhancedForControlContext>(0);
  List<TerminalNode> SEMIs() => getTokens(ApexParser.TOKEN_SEMI);
  TerminalNode? SEMI(int i) => getToken(ApexParser.TOKEN_SEMI, i);
  ForInitContext? forInit() => getRuleContext<ForInitContext>(0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  ForUpdateContext? forUpdate() => getRuleContext<ForUpdateContext>(0);
  ForControlContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  LocalVariableDeclarationContext? localVariableDeclaration() => getRuleContext<LocalVariableDeclarationContext>(0);
  ExpressionListContext? expressionList() => getRuleContext<ExpressionListContext>(0);
  ForInitContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? COLON() => getToken(ApexParser.TOKEN_COLON, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  EnhancedForControlContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExpressionListContext? expressionList() => getRuleContext<ExpressionListContext>(0);
  ForUpdateContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ParExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  ExpressionListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_expression;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class PrimaryContext extends ParserRuleContext {
  PrimaryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_primary;
 
  @override
  void copyFrom(ParserRuleContext ctx) {
    super.copyFrom(ctx);
  }
}

class MethodCallContext extends ParserRuleContext {
  IdContext? id() => getRuleContext<IdContext>(0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ExpressionListContext? expressionList() => getRuleContext<ExpressionListContext>(0);
  TerminalNode? THIS() => getToken(ApexParser.TOKEN_THIS, 0);
  TerminalNode? SUPER() => getToken(ApexParser.TOKEN_SUPER, 0);
  MethodCallContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  AnyIdContext? anyId() => getRuleContext<AnyIdContext>(0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ExpressionListContext? expressionList() => getRuleContext<ExpressionListContext>(0);
  DotMethodCallContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  CreatedNameContext? createdName() => getRuleContext<CreatedNameContext>(0);
  NoRestContext? noRest() => getRuleContext<NoRestContext>(0);
  ClassCreatorRestContext? classCreatorRest() => getRuleContext<ClassCreatorRestContext>(0);
  ArrayCreatorRestContext? arrayCreatorRest() => getRuleContext<ArrayCreatorRestContext>(0);
  MapCreatorRestContext? mapCreatorRest() => getRuleContext<MapCreatorRestContext>(0);
  SetCreatorRestContext? setCreatorRest() => getRuleContext<SetCreatorRestContext>(0);
  CreatorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  List<IdCreatedNamePairContext> idCreatedNamePairs() => getRuleContexts<IdCreatedNamePairContext>();
  IdCreatedNamePairContext? idCreatedNamePair(int i) => getRuleContext<IdCreatedNamePairContext>(i);
  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);
  CreatedNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  AnyIdContext? anyId() => getRuleContext<AnyIdContext>(0);
  TerminalNode? LT() => getToken(ApexParser.TOKEN_LT, 0);
  TypeListContext? typeList() => getRuleContext<TypeListContext>(0);
  TerminalNode? GT() => getToken(ApexParser.TOKEN_GT, 0);
  IdCreatedNamePairContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  NoRestContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ArgumentsContext? arguments() => getRuleContext<ArgumentsContext>(0);
  ClassCreatorRestContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RBRACK() => getToken(ApexParser.TOKEN_RBRACK, 0);
  ArrayInitializerContext? arrayInitializer() => getRuleContext<ArrayInitializerContext>(0);
  ArrayCreatorRestContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  List<MapCreatorRestPairContext> mapCreatorRestPairs() => getRuleContexts<MapCreatorRestPairContext>();
  MapCreatorRestPairContext? mapCreatorRestPair(int i) => getRuleContext<MapCreatorRestPairContext>(i);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  MapCreatorRestContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? MAPTO() => getToken(ApexParser.TOKEN_MAPTO, 0);
  MapCreatorRestPairContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACE() => getToken(ApexParser.TOKEN_LBRACE, 0);
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? RBRACE() => getToken(ApexParser.TOKEN_RBRACE, 0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  SetCreatorRestContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ExpressionListContext? expressionList() => getRuleContext<ExpressionListContext>(0);
  ArgumentsContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);
  QueryContext? query() => getRuleContext<QueryContext>(0);
  TerminalNode? RBRACK() => getToken(ApexParser.TOKEN_RBRACK, 0);
  SoqlLiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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

class QueryContext extends ParserRuleContext {
  TerminalNode? SELECT() => getToken(ApexParser.TOKEN_SELECT, 0);
  SelectListContext? selectList() => getRuleContext<SelectListContext>(0);
  TerminalNode? FROM() => getToken(ApexParser.TOKEN_FROM, 0);
  FromNameListContext? fromNameList() => getRuleContext<FromNameListContext>(0);
  ForClausesContext? forClauses() => getRuleContext<ForClausesContext>(0);
  UsingScopeContext? usingScope() => getRuleContext<UsingScopeContext>(0);
  WhereClauseContext? whereClause() => getRuleContext<WhereClauseContext>(0);
  WithClauseContext? withClause() => getRuleContext<WithClauseContext>(0);
  GroupByClauseContext? groupByClause() => getRuleContext<GroupByClauseContext>(0);
  OrderByClauseContext? orderByClause() => getRuleContext<OrderByClauseContext>(0);
  LimitClauseContext? limitClause() => getRuleContext<LimitClauseContext>(0);
  OffsetClauseContext? offsetClause() => getRuleContext<OffsetClauseContext>(0);
  AllRowsClauseContext? allRowsClause() => getRuleContext<AllRowsClauseContext>(0);
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  UpdateListContext? updateList() => getRuleContext<UpdateListContext>(0);
  QueryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_query;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterQuery(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitQuery(this);
  }
}

class SubQueryContext extends ParserRuleContext {
  TerminalNode? SELECT() => getToken(ApexParser.TOKEN_SELECT, 0);
  SubFieldListContext? subFieldList() => getRuleContext<SubFieldListContext>(0);
  TerminalNode? FROM() => getToken(ApexParser.TOKEN_FROM, 0);
  FromNameListContext? fromNameList() => getRuleContext<FromNameListContext>(0);
  ForClausesContext? forClauses() => getRuleContext<ForClausesContext>(0);
  WhereClauseContext? whereClause() => getRuleContext<WhereClauseContext>(0);
  OrderByClauseContext? orderByClause() => getRuleContext<OrderByClauseContext>(0);
  LimitClauseContext? limitClause() => getRuleContext<LimitClauseContext>(0);
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  UpdateListContext? updateList() => getRuleContext<UpdateListContext>(0);
  SubQueryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_subQuery;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSubQuery(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSubQuery(this);
  }
}

class SelectListContext extends ParserRuleContext {
  List<SelectEntryContext> selectEntrys() => getRuleContexts<SelectEntryContext>();
  SelectEntryContext? selectEntry(int i) => getRuleContext<SelectEntryContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  SelectListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selectList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSelectList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSelectList(this);
  }
}

class SelectEntryContext extends ParserRuleContext {
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  SoqlIdContext? soqlId() => getRuleContext<SoqlIdContext>(0);
  SoqlFunctionContext? soqlFunction() => getRuleContext<SoqlFunctionContext>(0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  SubQueryContext? subQuery() => getRuleContext<SubQueryContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  TypeOfContext? typeOf() => getRuleContext<TypeOfContext>(0);
  SelectEntryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_selectEntry;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSelectEntry(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSelectEntry(this);
  }
}

class FieldNameContext extends ParserRuleContext {
  List<SoqlIdContext> soqlIds() => getRuleContexts<SoqlIdContext>();
  SoqlIdContext? soqlId(int i) => getRuleContext<SoqlIdContext>(i);
  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);
  FieldNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldName(this);
  }
}

class FromNameListContext extends ParserRuleContext {
  List<FieldNameContext> fieldNames() => getRuleContexts<FieldNameContext>();
  FieldNameContext? fieldName(int i) => getRuleContext<FieldNameContext>(i);
  List<SoqlIdContext> soqlIds() => getRuleContexts<SoqlIdContext>();
  SoqlIdContext? soqlId(int i) => getRuleContext<SoqlIdContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  FromNameListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fromNameList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFromNameList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFromNameList(this);
  }
}

class SubFieldListContext extends ParserRuleContext {
  List<SubFieldEntryContext> subFieldEntrys() => getRuleContexts<SubFieldEntryContext>();
  SubFieldEntryContext? subFieldEntry(int i) => getRuleContext<SubFieldEntryContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  SubFieldListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_subFieldList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSubFieldList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSubFieldList(this);
  }
}

class SubFieldEntryContext extends ParserRuleContext {
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  SoqlIdContext? soqlId() => getRuleContext<SoqlIdContext>(0);
  SoqlFunctionContext? soqlFunction() => getRuleContext<SoqlFunctionContext>(0);
  SubFieldEntryContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_subFieldEntry;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSubFieldEntry(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSubFieldEntry(this);
  }
}

class SoqlFieldsParameterContext extends ParserRuleContext {
  TerminalNode? ALL() => getToken(ApexParser.TOKEN_ALL, 0);
  TerminalNode? CUSTOM() => getToken(ApexParser.TOKEN_CUSTOM, 0);
  TerminalNode? STANDARD() => getToken(ApexParser.TOKEN_STANDARD, 0);
  SoqlFieldsParameterContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soqlFieldsParameter;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoqlFieldsParameter(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoqlFieldsParameter(this);
  }
}

class SoqlFunctionContext extends ParserRuleContext {
  TerminalNode? AVG() => getToken(ApexParser.TOKEN_AVG, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  TerminalNode? COUNT() => getToken(ApexParser.TOKEN_COUNT, 0);
  TerminalNode? COUNT_DISTINCT() => getToken(ApexParser.TOKEN_COUNT_DISTINCT, 0);
  TerminalNode? MIN() => getToken(ApexParser.TOKEN_MIN, 0);
  TerminalNode? MAX() => getToken(ApexParser.TOKEN_MAX, 0);
  TerminalNode? SUM() => getToken(ApexParser.TOKEN_SUM, 0);
  TerminalNode? TOLABEL() => getToken(ApexParser.TOKEN_TOLABEL, 0);
  TerminalNode? FORMAT() => getToken(ApexParser.TOKEN_FORMAT, 0);
  TerminalNode? CALENDAR_MONTH() => getToken(ApexParser.TOKEN_CALENDAR_MONTH, 0);
  DateFieldNameContext? dateFieldName() => getRuleContext<DateFieldNameContext>(0);
  TerminalNode? CALENDAR_QUARTER() => getToken(ApexParser.TOKEN_CALENDAR_QUARTER, 0);
  TerminalNode? CALENDAR_YEAR() => getToken(ApexParser.TOKEN_CALENDAR_YEAR, 0);
  TerminalNode? DAY_IN_MONTH() => getToken(ApexParser.TOKEN_DAY_IN_MONTH, 0);
  TerminalNode? DAY_IN_WEEK() => getToken(ApexParser.TOKEN_DAY_IN_WEEK, 0);
  TerminalNode? DAY_IN_YEAR() => getToken(ApexParser.TOKEN_DAY_IN_YEAR, 0);
  TerminalNode? DAY_ONLY() => getToken(ApexParser.TOKEN_DAY_ONLY, 0);
  TerminalNode? FISCAL_MONTH() => getToken(ApexParser.TOKEN_FISCAL_MONTH, 0);
  TerminalNode? FISCAL_QUARTER() => getToken(ApexParser.TOKEN_FISCAL_QUARTER, 0);
  TerminalNode? FISCAL_YEAR() => getToken(ApexParser.TOKEN_FISCAL_YEAR, 0);
  TerminalNode? HOUR_IN_DAY() => getToken(ApexParser.TOKEN_HOUR_IN_DAY, 0);
  TerminalNode? WEEK_IN_MONTH() => getToken(ApexParser.TOKEN_WEEK_IN_MONTH, 0);
  TerminalNode? WEEK_IN_YEAR() => getToken(ApexParser.TOKEN_WEEK_IN_YEAR, 0);
  TerminalNode? FIELDS() => getToken(ApexParser.TOKEN_FIELDS, 0);
  SoqlFieldsParameterContext? soqlFieldsParameter() => getRuleContext<SoqlFieldsParameterContext>(0);
  SoqlFunctionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soqlFunction;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoqlFunction(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoqlFunction(this);
  }
}

class DateFieldNameContext extends ParserRuleContext {
  TerminalNode? CONVERT_TIMEZONE() => getToken(ApexParser.TOKEN_CONVERT_TIMEZONE, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  DateFieldNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dateFieldName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDateFieldName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDateFieldName(this);
  }
}

class TypeOfContext extends ParserRuleContext {
  TerminalNode? TYPEOF() => getToken(ApexParser.TOKEN_TYPEOF, 0);
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  TerminalNode? END() => getToken(ApexParser.TOKEN_END, 0);
  List<WhenClauseContext> whenClauses() => getRuleContexts<WhenClauseContext>();
  WhenClauseContext? whenClause(int i) => getRuleContext<WhenClauseContext>(i);
  ElseClauseContext? elseClause() => getRuleContext<ElseClauseContext>(0);
  TypeOfContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_typeOf;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeOf(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeOf(this);
  }
}

class WhenClauseContext extends ParserRuleContext {
  TerminalNode? WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  TerminalNode? THEN() => getToken(ApexParser.TOKEN_THEN, 0);
  FieldNameListContext? fieldNameList() => getRuleContext<FieldNameListContext>(0);
  WhenClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whenClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWhenClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWhenClause(this);
  }
}

class ElseClauseContext extends ParserRuleContext {
  TerminalNode? ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);
  FieldNameListContext? fieldNameList() => getRuleContext<FieldNameListContext>(0);
  ElseClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_elseClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterElseClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitElseClause(this);
  }
}

class FieldNameListContext extends ParserRuleContext {
  List<FieldNameContext> fieldNames() => getRuleContexts<FieldNameContext>();
  FieldNameContext? fieldName(int i) => getRuleContext<FieldNameContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  FieldNameListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldNameList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldNameList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldNameList(this);
  }
}

class UsingScopeContext extends ParserRuleContext {
  TerminalNode? USING() => getToken(ApexParser.TOKEN_USING, 0);
  TerminalNode? SCOPE() => getToken(ApexParser.TOKEN_SCOPE, 0);
  SoqlIdContext? soqlId() => getRuleContext<SoqlIdContext>(0);
  UsingScopeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_usingScope;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterUsingScope(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitUsingScope(this);
  }
}

class WhereClauseContext extends ParserRuleContext {
  TerminalNode? WHERE() => getToken(ApexParser.TOKEN_WHERE, 0);
  LogicalExpressionContext? logicalExpression() => getRuleContext<LogicalExpressionContext>(0);
  WhereClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_whereClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWhereClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWhereClause(this);
  }
}

class LogicalExpressionContext extends ParserRuleContext {
  List<ConditionalExpressionContext> conditionalExpressions() => getRuleContexts<ConditionalExpressionContext>();
  ConditionalExpressionContext? conditionalExpression(int i) => getRuleContext<ConditionalExpressionContext>(i);
  List<TerminalNode> SOQLANDs() => getTokens(ApexParser.TOKEN_SOQLAND);
  TerminalNode? SOQLAND(int i) => getToken(ApexParser.TOKEN_SOQLAND, i);
  List<TerminalNode> SOQLORs() => getTokens(ApexParser.TOKEN_SOQLOR);
  TerminalNode? SOQLOR(int i) => getToken(ApexParser.TOKEN_SOQLOR, i);
  TerminalNode? NOT() => getToken(ApexParser.TOKEN_NOT, 0);
  LogicalExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_logicalExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLogicalExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLogicalExpression(this);
  }
}

class ConditionalExpressionContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  LogicalExpressionContext? logicalExpression() => getRuleContext<LogicalExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  FieldExpressionContext? fieldExpression() => getRuleContext<FieldExpressionContext>(0);
  ConditionalExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_conditionalExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterConditionalExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitConditionalExpression(this);
  }
}

class FieldExpressionContext extends ParserRuleContext {
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  ComparisonOperatorContext? comparisonOperator() => getRuleContext<ComparisonOperatorContext>(0);
  ValueContext? value() => getRuleContext<ValueContext>(0);
  SoqlFunctionContext? soqlFunction() => getRuleContext<SoqlFunctionContext>(0);
  FieldExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldExpression(this);
  }
}

class ComparisonOperatorContext extends ParserRuleContext {
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  TerminalNode? NOTEQUAL() => getToken(ApexParser.TOKEN_NOTEQUAL, 0);
  TerminalNode? LT() => getToken(ApexParser.TOKEN_LT, 0);
  TerminalNode? GT() => getToken(ApexParser.TOKEN_GT, 0);
  TerminalNode? LESSANDGREATER() => getToken(ApexParser.TOKEN_LESSANDGREATER, 0);
  TerminalNode? LIKE() => getToken(ApexParser.TOKEN_LIKE, 0);
  TerminalNode? IN() => getToken(ApexParser.TOKEN_IN, 0);
  TerminalNode? NOT() => getToken(ApexParser.TOKEN_NOT, 0);
  TerminalNode? INCLUDES() => getToken(ApexParser.TOKEN_INCLUDES, 0);
  TerminalNode? EXCLUDES() => getToken(ApexParser.TOKEN_EXCLUDES, 0);
  ComparisonOperatorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_comparisonOperator;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterComparisonOperator(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitComparisonOperator(this);
  }
}

class ValueContext extends ParserRuleContext {
  TerminalNode? NULL() => getToken(ApexParser.TOKEN_NULL, 0);
  TerminalNode? BooleanLiteral() => getToken(ApexParser.TOKEN_BooleanLiteral, 0);
  SignedNumberContext? signedNumber() => getRuleContext<SignedNumberContext>(0);
  TerminalNode? StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);
  TerminalNode? DateLiteral() => getToken(ApexParser.TOKEN_DateLiteral, 0);
  TerminalNode? DateTimeLiteral() => getToken(ApexParser.TOKEN_DateTimeLiteral, 0);
  DateFormulaContext? dateFormula() => getRuleContext<DateFormulaContext>(0);
  TerminalNode? IntegralCurrencyLiteral() => getToken(ApexParser.TOKEN_IntegralCurrencyLiteral, 0);
  TerminalNode? DOT() => getToken(ApexParser.TOKEN_DOT, 0);
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  SubQueryContext? subQuery() => getRuleContext<SubQueryContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ValueListContext? valueList() => getRuleContext<ValueListContext>(0);
  BoundExpressionContext? boundExpression() => getRuleContext<BoundExpressionContext>(0);
  ValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_value;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterValue(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitValue(this);
  }
}

class ValueListContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  List<ValueContext> values() => getRuleContexts<ValueContext>();
  ValueContext? value(int i) => getRuleContext<ValueContext>(i);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  ValueListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_valueList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterValueList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitValueList(this);
  }
}

class SignedNumberContext extends ParserRuleContext {
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  TerminalNode? NumberLiteral() => getToken(ApexParser.TOKEN_NumberLiteral, 0);
  TerminalNode? ADD() => getToken(ApexParser.TOKEN_ADD, 0);
  TerminalNode? SUB() => getToken(ApexParser.TOKEN_SUB, 0);
  SignedNumberContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_signedNumber;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSignedNumber(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSignedNumber(this);
  }
}

class WithClauseContext extends ParserRuleContext {
  TerminalNode? WITH() => getToken(ApexParser.TOKEN_WITH, 0);
  TerminalNode? DATA() => getToken(ApexParser.TOKEN_DATA, 0);
  TerminalNode? CATEGORY() => getToken(ApexParser.TOKEN_CATEGORY, 0);
  FilteringExpressionContext? filteringExpression() => getRuleContext<FilteringExpressionContext>(0);
  TerminalNode? SECURITY_ENFORCED() => getToken(ApexParser.TOKEN_SECURITY_ENFORCED, 0);
  LogicalExpressionContext? logicalExpression() => getRuleContext<LogicalExpressionContext>(0);
  WithClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_withClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterWithClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitWithClause(this);
  }
}

class FilteringExpressionContext extends ParserRuleContext {
  List<DataCategorySelectionContext> dataCategorySelections() => getRuleContexts<DataCategorySelectionContext>();
  DataCategorySelectionContext? dataCategorySelection(int i) => getRuleContext<DataCategorySelectionContext>(i);
  List<TerminalNode> ANDs() => getTokens(ApexParser.TOKEN_AND);
  TerminalNode? AND(int i) => getToken(ApexParser.TOKEN_AND, i);
  FilteringExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_filteringExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFilteringExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFilteringExpression(this);
  }
}

class DataCategorySelectionContext extends ParserRuleContext {
  SoqlIdContext? soqlId() => getRuleContext<SoqlIdContext>(0);
  FilteringSelectorContext? filteringSelector() => getRuleContext<FilteringSelectorContext>(0);
  DataCategoryNameContext? dataCategoryName() => getRuleContext<DataCategoryNameContext>(0);
  DataCategorySelectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dataCategorySelection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDataCategorySelection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDataCategorySelection(this);
  }
}

class DataCategoryNameContext extends ParserRuleContext {
  List<SoqlIdContext> soqlIds() => getRuleContexts<SoqlIdContext>();
  SoqlIdContext? soqlId(int i) => getRuleContext<SoqlIdContext>(i);
  List<TerminalNode> LPARENs() => getTokens(ApexParser.TOKEN_LPAREN);
  TerminalNode? LPAREN(int i) => getToken(ApexParser.TOKEN_LPAREN, i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  DataCategoryNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dataCategoryName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDataCategoryName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDataCategoryName(this);
  }
}

class FilteringSelectorContext extends ParserRuleContext {
  TerminalNode? AT() => getToken(ApexParser.TOKEN_AT, 0);
  TerminalNode? ABOVE() => getToken(ApexParser.TOKEN_ABOVE, 0);
  TerminalNode? BELOW() => getToken(ApexParser.TOKEN_BELOW, 0);
  TerminalNode? ABOVE_OR_BELOW() => getToken(ApexParser.TOKEN_ABOVE_OR_BELOW, 0);
  FilteringSelectorContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_filteringSelector;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFilteringSelector(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFilteringSelector(this);
  }
}

class GroupByClauseContext extends ParserRuleContext {
  TerminalNode? GROUP() => getToken(ApexParser.TOKEN_GROUP, 0);
  TerminalNode? BY() => getToken(ApexParser.TOKEN_BY, 0);
  SelectListContext? selectList() => getRuleContext<SelectListContext>(0);
  TerminalNode? HAVING() => getToken(ApexParser.TOKEN_HAVING, 0);
  LogicalExpressionContext? logicalExpression() => getRuleContext<LogicalExpressionContext>(0);
  TerminalNode? ROLLUP() => getToken(ApexParser.TOKEN_ROLLUP, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  List<FieldNameContext> fieldNames() => getRuleContexts<FieldNameContext>();
  FieldNameContext? fieldName(int i) => getRuleContext<FieldNameContext>(i);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  TerminalNode? CUBE() => getToken(ApexParser.TOKEN_CUBE, 0);
  GroupByClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_groupByClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterGroupByClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitGroupByClause(this);
  }
}

class OrderByClauseContext extends ParserRuleContext {
  TerminalNode? ORDER() => getToken(ApexParser.TOKEN_ORDER, 0);
  TerminalNode? BY() => getToken(ApexParser.TOKEN_BY, 0);
  FieldOrderListContext? fieldOrderList() => getRuleContext<FieldOrderListContext>(0);
  OrderByClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_orderByClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterOrderByClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitOrderByClause(this);
  }
}

class FieldOrderListContext extends ParserRuleContext {
  List<FieldOrderContext> fieldOrders() => getRuleContexts<FieldOrderContext>();
  FieldOrderContext? fieldOrder(int i) => getRuleContext<FieldOrderContext>(i);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  FieldOrderListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldOrderList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldOrderList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldOrderList(this);
  }
}

class FieldOrderContext extends ParserRuleContext {
  FieldNameContext? fieldName() => getRuleContext<FieldNameContext>(0);
  TerminalNode? NULLS() => getToken(ApexParser.TOKEN_NULLS, 0);
  TerminalNode? ASC() => getToken(ApexParser.TOKEN_ASC, 0);
  TerminalNode? DESC() => getToken(ApexParser.TOKEN_DESC, 0);
  TerminalNode? FIRST() => getToken(ApexParser.TOKEN_FIRST, 0);
  TerminalNode? LAST() => getToken(ApexParser.TOKEN_LAST, 0);
  SoqlFunctionContext? soqlFunction() => getRuleContext<SoqlFunctionContext>(0);
  FieldOrderContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldOrder;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldOrder(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldOrder(this);
  }
}

class LimitClauseContext extends ParserRuleContext {
  TerminalNode? LIMIT() => getToken(ApexParser.TOKEN_LIMIT, 0);
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  BoundExpressionContext? boundExpression() => getRuleContext<BoundExpressionContext>(0);
  LimitClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_limitClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLimitClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLimitClause(this);
  }
}

class OffsetClauseContext extends ParserRuleContext {
  TerminalNode? OFFSET() => getToken(ApexParser.TOKEN_OFFSET, 0);
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  BoundExpressionContext? boundExpression() => getRuleContext<BoundExpressionContext>(0);
  OffsetClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_offsetClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterOffsetClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitOffsetClause(this);
  }
}

class AllRowsClauseContext extends ParserRuleContext {
  TerminalNode? ALL() => getToken(ApexParser.TOKEN_ALL, 0);
  TerminalNode? ROWS() => getToken(ApexParser.TOKEN_ROWS, 0);
  AllRowsClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_allRowsClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterAllRowsClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitAllRowsClause(this);
  }
}

class ForClausesContext extends ParserRuleContext {
  List<TerminalNode> FORs() => getTokens(ApexParser.TOKEN_FOR);
  TerminalNode? FOR(int i) => getToken(ApexParser.TOKEN_FOR, i);
  List<TerminalNode> VIEWs() => getTokens(ApexParser.TOKEN_VIEW);
  TerminalNode? VIEW(int i) => getToken(ApexParser.TOKEN_VIEW, i);
  List<TerminalNode> UPDATEs() => getTokens(ApexParser.TOKEN_UPDATE);
  TerminalNode? UPDATE(int i) => getToken(ApexParser.TOKEN_UPDATE, i);
  List<TerminalNode> REFERENCEs() => getTokens(ApexParser.TOKEN_REFERENCE);
  TerminalNode? REFERENCE(int i) => getToken(ApexParser.TOKEN_REFERENCE, i);
  ForClausesContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_forClauses;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterForClauses(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitForClauses(this);
  }
}

class BoundExpressionContext extends ParserRuleContext {
  TerminalNode? COLON() => getToken(ApexParser.TOKEN_COLON, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  BoundExpressionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_boundExpression;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterBoundExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitBoundExpression(this);
  }
}

class DateFormulaContext extends ParserRuleContext {
  TerminalNode? YESTERDAY() => getToken(ApexParser.TOKEN_YESTERDAY, 0);
  TerminalNode? TODAY() => getToken(ApexParser.TOKEN_TODAY, 0);
  TerminalNode? TOMORROW() => getToken(ApexParser.TOKEN_TOMORROW, 0);
  TerminalNode? LAST_WEEK() => getToken(ApexParser.TOKEN_LAST_WEEK, 0);
  TerminalNode? THIS_WEEK() => getToken(ApexParser.TOKEN_THIS_WEEK, 0);
  TerminalNode? NEXT_WEEK() => getToken(ApexParser.TOKEN_NEXT_WEEK, 0);
  TerminalNode? LAST_MONTH() => getToken(ApexParser.TOKEN_LAST_MONTH, 0);
  TerminalNode? THIS_MONTH() => getToken(ApexParser.TOKEN_THIS_MONTH, 0);
  TerminalNode? NEXT_MONTH() => getToken(ApexParser.TOKEN_NEXT_MONTH, 0);
  TerminalNode? LAST_90_DAYS() => getToken(ApexParser.TOKEN_LAST_90_DAYS, 0);
  TerminalNode? NEXT_90_DAYS() => getToken(ApexParser.TOKEN_NEXT_90_DAYS, 0);
  TerminalNode? LAST_N_DAYS_N() => getToken(ApexParser.TOKEN_LAST_N_DAYS_N, 0);
  TerminalNode? COLON() => getToken(ApexParser.TOKEN_COLON, 0);
  SignedIntegerContext? signedInteger() => getRuleContext<SignedIntegerContext>(0);
  TerminalNode? NEXT_N_DAYS_N() => getToken(ApexParser.TOKEN_NEXT_N_DAYS_N, 0);
  TerminalNode? NEXT_N_WEEKS_N() => getToken(ApexParser.TOKEN_NEXT_N_WEEKS_N, 0);
  TerminalNode? LAST_N_WEEKS_N() => getToken(ApexParser.TOKEN_LAST_N_WEEKS_N, 0);
  TerminalNode? NEXT_N_MONTHS_N() => getToken(ApexParser.TOKEN_NEXT_N_MONTHS_N, 0);
  TerminalNode? LAST_N_MONTHS_N() => getToken(ApexParser.TOKEN_LAST_N_MONTHS_N, 0);
  TerminalNode? THIS_QUARTER() => getToken(ApexParser.TOKEN_THIS_QUARTER, 0);
  TerminalNode? LAST_QUARTER() => getToken(ApexParser.TOKEN_LAST_QUARTER, 0);
  TerminalNode? NEXT_QUARTER() => getToken(ApexParser.TOKEN_NEXT_QUARTER, 0);
  TerminalNode? NEXT_N_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_QUARTERS_N, 0);
  TerminalNode? LAST_N_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_QUARTERS_N, 0);
  TerminalNode? THIS_YEAR() => getToken(ApexParser.TOKEN_THIS_YEAR, 0);
  TerminalNode? LAST_YEAR() => getToken(ApexParser.TOKEN_LAST_YEAR, 0);
  TerminalNode? NEXT_YEAR() => getToken(ApexParser.TOKEN_NEXT_YEAR, 0);
  TerminalNode? NEXT_N_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_YEARS_N, 0);
  TerminalNode? LAST_N_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_YEARS_N, 0);
  TerminalNode? THIS_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_THIS_FISCAL_QUARTER, 0);
  TerminalNode? LAST_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_LAST_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_NEXT_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? LAST_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? THIS_FISCAL_YEAR() => getToken(ApexParser.TOKEN_THIS_FISCAL_YEAR, 0);
  TerminalNode? LAST_FISCAL_YEAR() => getToken(ApexParser.TOKEN_LAST_FISCAL_YEAR, 0);
  TerminalNode? NEXT_FISCAL_YEAR() => getToken(ApexParser.TOKEN_NEXT_FISCAL_YEAR, 0);
  TerminalNode? NEXT_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_YEARS_N, 0);
  TerminalNode? LAST_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_YEARS_N, 0);
  DateFormulaContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_dateFormula;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterDateFormula(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitDateFormula(this);
  }
}

class SignedIntegerContext extends ParserRuleContext {
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  TerminalNode? ADD() => getToken(ApexParser.TOKEN_ADD, 0);
  TerminalNode? SUB() => getToken(ApexParser.TOKEN_SUB, 0);
  SignedIntegerContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_signedInteger;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSignedInteger(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSignedInteger(this);
  }
}

class SoqlIdContext extends ParserRuleContext {
  IdContext? id() => getRuleContext<IdContext>(0);
  SoqlIdContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soqlId;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoqlId(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoqlId(this);
  }
}

class SoslLiteralContext extends ParserRuleContext {
  TerminalNode? FindLiteral() => getToken(ApexParser.TOKEN_FindLiteral, 0);
  SoslClausesContext? soslClauses() => getRuleContext<SoslClausesContext>(0);
  TerminalNode? RBRACK() => getToken(ApexParser.TOKEN_RBRACK, 0);
  TerminalNode? LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);
  TerminalNode? FIND() => getToken(ApexParser.TOKEN_FIND, 0);
  BoundExpressionContext? boundExpression() => getRuleContext<BoundExpressionContext>(0);
  SoslLiteralContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soslLiteral;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoslLiteral(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoslLiteral(this);
  }
}

class SoslClausesContext extends ParserRuleContext {
  List<TerminalNode> INs() => getTokens(ApexParser.TOKEN_IN);
  TerminalNode? IN(int i) => getToken(ApexParser.TOKEN_IN, i);
  SearchGroupContext? searchGroup() => getRuleContext<SearchGroupContext>(0);
  TerminalNode? RETURNING() => getToken(ApexParser.TOKEN_RETURNING, 0);
  FieldSpecListContext? fieldSpecList() => getRuleContext<FieldSpecListContext>(0);
  List<TerminalNode> WITHs() => getTokens(ApexParser.TOKEN_WITH);
  TerminalNode? WITH(int i) => getToken(ApexParser.TOKEN_WITH, i);
  TerminalNode? DIVISION() => getToken(ApexParser.TOKEN_DIVISION, 0);
  List<TerminalNode> ASSIGNs() => getTokens(ApexParser.TOKEN_ASSIGN);
  TerminalNode? ASSIGN(int i) => getToken(ApexParser.TOKEN_ASSIGN, i);
  List<TerminalNode> StringLiterals() => getTokens(ApexParser.TOKEN_StringLiteral);
  TerminalNode? StringLiteral(int i) => getToken(ApexParser.TOKEN_StringLiteral, i);
  TerminalNode? DATA() => getToken(ApexParser.TOKEN_DATA, 0);
  TerminalNode? CATEGORY() => getToken(ApexParser.TOKEN_CATEGORY, 0);
  FilteringExpressionContext? filteringExpression() => getRuleContext<FilteringExpressionContext>(0);
  TerminalNode? SNIPPET() => getToken(ApexParser.TOKEN_SNIPPET, 0);
  List<TerminalNode> NETWORKs() => getTokens(ApexParser.TOKEN_NETWORK);
  TerminalNode? NETWORK(int i) => getToken(ApexParser.TOKEN_NETWORK, i);
  List<TerminalNode> LPARENs() => getTokens(ApexParser.TOKEN_LPAREN);
  TerminalNode? LPAREN(int i) => getToken(ApexParser.TOKEN_LPAREN, i);
  NetworkListContext? networkList() => getRuleContext<NetworkListContext>(0);
  List<TerminalNode> RPARENs() => getTokens(ApexParser.TOKEN_RPAREN);
  TerminalNode? RPAREN(int i) => getToken(ApexParser.TOKEN_RPAREN, i);
  TerminalNode? PRICEBOOKID() => getToken(ApexParser.TOKEN_PRICEBOOKID, 0);
  TerminalNode? METADATA() => getToken(ApexParser.TOKEN_METADATA, 0);
  LimitClauseContext? limitClause() => getRuleContext<LimitClauseContext>(0);
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  UpdateListContext? updateList() => getRuleContext<UpdateListContext>(0);
  TerminalNode? TARGET_LENGTH() => getToken(ApexParser.TOKEN_TARGET_LENGTH, 0);
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  SoslClausesContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soslClauses;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoslClauses(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoslClauses(this);
  }
}

class SearchGroupContext extends ParserRuleContext {
  TerminalNode? FIELDS() => getToken(ApexParser.TOKEN_FIELDS, 0);
  TerminalNode? ALL() => getToken(ApexParser.TOKEN_ALL, 0);
  TerminalNode? EMAIL() => getToken(ApexParser.TOKEN_EMAIL, 0);
  TerminalNode? NAME() => getToken(ApexParser.TOKEN_NAME, 0);
  TerminalNode? PHONE() => getToken(ApexParser.TOKEN_PHONE, 0);
  TerminalNode? SIDEBAR() => getToken(ApexParser.TOKEN_SIDEBAR, 0);
  SearchGroupContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_searchGroup;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSearchGroup(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSearchGroup(this);
  }
}

class FieldSpecListContext extends ParserRuleContext {
  FieldSpecContext? fieldSpec() => getRuleContext<FieldSpecContext>(0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  List<FieldSpecListContext> fieldSpecLists() => getRuleContexts<FieldSpecListContext>();
  FieldSpecListContext? fieldSpecList(int i) => getRuleContext<FieldSpecListContext>(i);
  FieldSpecListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldSpecList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldSpecList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldSpecList(this);
  }
}

class FieldSpecContext extends ParserRuleContext {
  List<SoslIdContext> soslIds() => getRuleContexts<SoslIdContext>();
  SoslIdContext? soslId(int i) => getRuleContext<SoslIdContext>(i);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  FieldListContext? fieldList() => getRuleContext<FieldListContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  TerminalNode? WHERE() => getToken(ApexParser.TOKEN_WHERE, 0);
  LogicalExpressionContext? logicalExpression() => getRuleContext<LogicalExpressionContext>(0);
  TerminalNode? USING() => getToken(ApexParser.TOKEN_USING, 0);
  TerminalNode? LISTVIEW() => getToken(ApexParser.TOKEN_LISTVIEW, 0);
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  TerminalNode? ORDER() => getToken(ApexParser.TOKEN_ORDER, 0);
  TerminalNode? BY() => getToken(ApexParser.TOKEN_BY, 0);
  FieldOrderListContext? fieldOrderList() => getRuleContext<FieldOrderListContext>(0);
  LimitClauseContext? limitClause() => getRuleContext<LimitClauseContext>(0);
  OffsetClauseContext? offsetClause() => getRuleContext<OffsetClauseContext>(0);
  FieldSpecContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldSpec;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldSpec(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldSpec(this);
  }
}

class FieldListContext extends ParserRuleContext {
  SoslIdContext? soslId() => getRuleContext<SoslIdContext>(0);
  List<TerminalNode> COMMAs() => getTokens(ApexParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(ApexParser.TOKEN_COMMA, i);
  List<FieldListContext> fieldLists() => getRuleContexts<FieldListContext>();
  FieldListContext? fieldList(int i) => getRuleContext<FieldListContext>(i);
  FieldListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_fieldList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldList(this);
  }
}

class UpdateListContext extends ParserRuleContext {
  UpdateTypeContext? updateType() => getRuleContext<UpdateTypeContext>(0);
  TerminalNode? COMMA() => getToken(ApexParser.TOKEN_COMMA, 0);
  UpdateListContext? updateList() => getRuleContext<UpdateListContext>(0);
  UpdateListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_updateList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterUpdateList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitUpdateList(this);
  }
}

class UpdateTypeContext extends ParserRuleContext {
  TerminalNode? TRACKING() => getToken(ApexParser.TOKEN_TRACKING, 0);
  TerminalNode? VIEWSTAT() => getToken(ApexParser.TOKEN_VIEWSTAT, 0);
  UpdateTypeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_updateType;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterUpdateType(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitUpdateType(this);
  }
}

class NetworkListContext extends ParserRuleContext {
  TerminalNode? StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);
  TerminalNode? COMMA() => getToken(ApexParser.TOKEN_COMMA, 0);
  NetworkListContext? networkList() => getRuleContext<NetworkListContext>(0);
  NetworkListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_networkList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterNetworkList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitNetworkList(this);
  }
}

class SoslIdContext extends ParserRuleContext {
  IdContext? id() => getRuleContext<IdContext>(0);
  List<TerminalNode> DOTs() => getTokens(ApexParser.TOKEN_DOT);
  TerminalNode? DOT(int i) => getToken(ApexParser.TOKEN_DOT, i);
  List<SoslIdContext> soslIds() => getRuleContexts<SoslIdContext>();
  SoslIdContext? soslId(int i) => getRuleContext<SoslIdContext>(i);
  SoslIdContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soslId;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoslId(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoslId(this);
  }
}

class IdContext extends ParserRuleContext {
  TerminalNode? Identifier() => getToken(ApexParser.TOKEN_Identifier, 0);
  TerminalNode? AFTER() => getToken(ApexParser.TOKEN_AFTER, 0);
  TerminalNode? BEFORE() => getToken(ApexParser.TOKEN_BEFORE, 0);
  TerminalNode? GET() => getToken(ApexParser.TOKEN_GET, 0);
  TerminalNode? INHERITED() => getToken(ApexParser.TOKEN_INHERITED, 0);
  TerminalNode? INSTANCEOF() => getToken(ApexParser.TOKEN_INSTANCEOF, 0);
  TerminalNode? SET() => getToken(ApexParser.TOKEN_SET, 0);
  TerminalNode? SHARING() => getToken(ApexParser.TOKEN_SHARING, 0);
  TerminalNode? SWITCH() => getToken(ApexParser.TOKEN_SWITCH, 0);
  TerminalNode? TRANSIENT() => getToken(ApexParser.TOKEN_TRANSIENT, 0);
  TerminalNode? TRIGGER() => getToken(ApexParser.TOKEN_TRIGGER, 0);
  TerminalNode? WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);
  TerminalNode? WITH() => getToken(ApexParser.TOKEN_WITH, 0);
  TerminalNode? WITHOUT() => getToken(ApexParser.TOKEN_WITHOUT, 0);
  TerminalNode? IntegralCurrencyLiteral() => getToken(ApexParser.TOKEN_IntegralCurrencyLiteral, 0);
  TerminalNode? SELECT() => getToken(ApexParser.TOKEN_SELECT, 0);
  TerminalNode? COUNT() => getToken(ApexParser.TOKEN_COUNT, 0);
  TerminalNode? FROM() => getToken(ApexParser.TOKEN_FROM, 0);
  TerminalNode? AS() => getToken(ApexParser.TOKEN_AS, 0);
  TerminalNode? USING() => getToken(ApexParser.TOKEN_USING, 0);
  TerminalNode? SCOPE() => getToken(ApexParser.TOKEN_SCOPE, 0);
  TerminalNode? WHERE() => getToken(ApexParser.TOKEN_WHERE, 0);
  TerminalNode? ORDER() => getToken(ApexParser.TOKEN_ORDER, 0);
  TerminalNode? BY() => getToken(ApexParser.TOKEN_BY, 0);
  TerminalNode? LIMIT() => getToken(ApexParser.TOKEN_LIMIT, 0);
  TerminalNode? SOQLAND() => getToken(ApexParser.TOKEN_SOQLAND, 0);
  TerminalNode? SOQLOR() => getToken(ApexParser.TOKEN_SOQLOR, 0);
  TerminalNode? NOT() => getToken(ApexParser.TOKEN_NOT, 0);
  TerminalNode? AVG() => getToken(ApexParser.TOKEN_AVG, 0);
  TerminalNode? COUNT_DISTINCT() => getToken(ApexParser.TOKEN_COUNT_DISTINCT, 0);
  TerminalNode? MIN() => getToken(ApexParser.TOKEN_MIN, 0);
  TerminalNode? MAX() => getToken(ApexParser.TOKEN_MAX, 0);
  TerminalNode? SUM() => getToken(ApexParser.TOKEN_SUM, 0);
  TerminalNode? TYPEOF() => getToken(ApexParser.TOKEN_TYPEOF, 0);
  TerminalNode? END() => getToken(ApexParser.TOKEN_END, 0);
  TerminalNode? THEN() => getToken(ApexParser.TOKEN_THEN, 0);
  TerminalNode? LIKE() => getToken(ApexParser.TOKEN_LIKE, 0);
  TerminalNode? IN() => getToken(ApexParser.TOKEN_IN, 0);
  TerminalNode? INCLUDES() => getToken(ApexParser.TOKEN_INCLUDES, 0);
  TerminalNode? EXCLUDES() => getToken(ApexParser.TOKEN_EXCLUDES, 0);
  TerminalNode? ASC() => getToken(ApexParser.TOKEN_ASC, 0);
  TerminalNode? DESC() => getToken(ApexParser.TOKEN_DESC, 0);
  TerminalNode? NULLS() => getToken(ApexParser.TOKEN_NULLS, 0);
  TerminalNode? FIRST() => getToken(ApexParser.TOKEN_FIRST, 0);
  TerminalNode? LAST() => getToken(ApexParser.TOKEN_LAST, 0);
  TerminalNode? GROUP() => getToken(ApexParser.TOKEN_GROUP, 0);
  TerminalNode? ALL() => getToken(ApexParser.TOKEN_ALL, 0);
  TerminalNode? ROWS() => getToken(ApexParser.TOKEN_ROWS, 0);
  TerminalNode? VIEW() => getToken(ApexParser.TOKEN_VIEW, 0);
  TerminalNode? HAVING() => getToken(ApexParser.TOKEN_HAVING, 0);
  TerminalNode? ROLLUP() => getToken(ApexParser.TOKEN_ROLLUP, 0);
  TerminalNode? TOLABEL() => getToken(ApexParser.TOKEN_TOLABEL, 0);
  TerminalNode? OFFSET() => getToken(ApexParser.TOKEN_OFFSET, 0);
  TerminalNode? DATA() => getToken(ApexParser.TOKEN_DATA, 0);
  TerminalNode? CATEGORY() => getToken(ApexParser.TOKEN_CATEGORY, 0);
  TerminalNode? AT() => getToken(ApexParser.TOKEN_AT, 0);
  TerminalNode? ABOVE() => getToken(ApexParser.TOKEN_ABOVE, 0);
  TerminalNode? BELOW() => getToken(ApexParser.TOKEN_BELOW, 0);
  TerminalNode? ABOVE_OR_BELOW() => getToken(ApexParser.TOKEN_ABOVE_OR_BELOW, 0);
  TerminalNode? SECURITY_ENFORCED() => getToken(ApexParser.TOKEN_SECURITY_ENFORCED, 0);
  TerminalNode? REFERENCE() => getToken(ApexParser.TOKEN_REFERENCE, 0);
  TerminalNode? CUBE() => getToken(ApexParser.TOKEN_CUBE, 0);
  TerminalNode? FORMAT() => getToken(ApexParser.TOKEN_FORMAT, 0);
  TerminalNode? TRACKING() => getToken(ApexParser.TOKEN_TRACKING, 0);
  TerminalNode? VIEWSTAT() => getToken(ApexParser.TOKEN_VIEWSTAT, 0);
  TerminalNode? STANDARD() => getToken(ApexParser.TOKEN_STANDARD, 0);
  TerminalNode? CUSTOM() => getToken(ApexParser.TOKEN_CUSTOM, 0);
  TerminalNode? CALENDAR_MONTH() => getToken(ApexParser.TOKEN_CALENDAR_MONTH, 0);
  TerminalNode? CALENDAR_QUARTER() => getToken(ApexParser.TOKEN_CALENDAR_QUARTER, 0);
  TerminalNode? CALENDAR_YEAR() => getToken(ApexParser.TOKEN_CALENDAR_YEAR, 0);
  TerminalNode? DAY_IN_MONTH() => getToken(ApexParser.TOKEN_DAY_IN_MONTH, 0);
  TerminalNode? DAY_IN_WEEK() => getToken(ApexParser.TOKEN_DAY_IN_WEEK, 0);
  TerminalNode? DAY_IN_YEAR() => getToken(ApexParser.TOKEN_DAY_IN_YEAR, 0);
  TerminalNode? DAY_ONLY() => getToken(ApexParser.TOKEN_DAY_ONLY, 0);
  TerminalNode? FISCAL_MONTH() => getToken(ApexParser.TOKEN_FISCAL_MONTH, 0);
  TerminalNode? FISCAL_QUARTER() => getToken(ApexParser.TOKEN_FISCAL_QUARTER, 0);
  TerminalNode? FISCAL_YEAR() => getToken(ApexParser.TOKEN_FISCAL_YEAR, 0);
  TerminalNode? HOUR_IN_DAY() => getToken(ApexParser.TOKEN_HOUR_IN_DAY, 0);
  TerminalNode? WEEK_IN_MONTH() => getToken(ApexParser.TOKEN_WEEK_IN_MONTH, 0);
  TerminalNode? WEEK_IN_YEAR() => getToken(ApexParser.TOKEN_WEEK_IN_YEAR, 0);
  TerminalNode? CONVERT_TIMEZONE() => getToken(ApexParser.TOKEN_CONVERT_TIMEZONE, 0);
  TerminalNode? YESTERDAY() => getToken(ApexParser.TOKEN_YESTERDAY, 0);
  TerminalNode? TODAY() => getToken(ApexParser.TOKEN_TODAY, 0);
  TerminalNode? TOMORROW() => getToken(ApexParser.TOKEN_TOMORROW, 0);
  TerminalNode? LAST_WEEK() => getToken(ApexParser.TOKEN_LAST_WEEK, 0);
  TerminalNode? THIS_WEEK() => getToken(ApexParser.TOKEN_THIS_WEEK, 0);
  TerminalNode? NEXT_WEEK() => getToken(ApexParser.TOKEN_NEXT_WEEK, 0);
  TerminalNode? LAST_MONTH() => getToken(ApexParser.TOKEN_LAST_MONTH, 0);
  TerminalNode? THIS_MONTH() => getToken(ApexParser.TOKEN_THIS_MONTH, 0);
  TerminalNode? NEXT_MONTH() => getToken(ApexParser.TOKEN_NEXT_MONTH, 0);
  TerminalNode? LAST_90_DAYS() => getToken(ApexParser.TOKEN_LAST_90_DAYS, 0);
  TerminalNode? NEXT_90_DAYS() => getToken(ApexParser.TOKEN_NEXT_90_DAYS, 0);
  TerminalNode? LAST_N_DAYS_N() => getToken(ApexParser.TOKEN_LAST_N_DAYS_N, 0);
  TerminalNode? NEXT_N_DAYS_N() => getToken(ApexParser.TOKEN_NEXT_N_DAYS_N, 0);
  TerminalNode? NEXT_N_WEEKS_N() => getToken(ApexParser.TOKEN_NEXT_N_WEEKS_N, 0);
  TerminalNode? LAST_N_WEEKS_N() => getToken(ApexParser.TOKEN_LAST_N_WEEKS_N, 0);
  TerminalNode? NEXT_N_MONTHS_N() => getToken(ApexParser.TOKEN_NEXT_N_MONTHS_N, 0);
  TerminalNode? LAST_N_MONTHS_N() => getToken(ApexParser.TOKEN_LAST_N_MONTHS_N, 0);
  TerminalNode? THIS_QUARTER() => getToken(ApexParser.TOKEN_THIS_QUARTER, 0);
  TerminalNode? LAST_QUARTER() => getToken(ApexParser.TOKEN_LAST_QUARTER, 0);
  TerminalNode? NEXT_QUARTER() => getToken(ApexParser.TOKEN_NEXT_QUARTER, 0);
  TerminalNode? NEXT_N_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_QUARTERS_N, 0);
  TerminalNode? LAST_N_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_QUARTERS_N, 0);
  TerminalNode? THIS_YEAR() => getToken(ApexParser.TOKEN_THIS_YEAR, 0);
  TerminalNode? LAST_YEAR() => getToken(ApexParser.TOKEN_LAST_YEAR, 0);
  TerminalNode? NEXT_YEAR() => getToken(ApexParser.TOKEN_NEXT_YEAR, 0);
  TerminalNode? NEXT_N_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_YEARS_N, 0);
  TerminalNode? LAST_N_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_YEARS_N, 0);
  TerminalNode? THIS_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_THIS_FISCAL_QUARTER, 0);
  TerminalNode? LAST_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_LAST_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_NEXT_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? LAST_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? THIS_FISCAL_YEAR() => getToken(ApexParser.TOKEN_THIS_FISCAL_YEAR, 0);
  TerminalNode? LAST_FISCAL_YEAR() => getToken(ApexParser.TOKEN_LAST_FISCAL_YEAR, 0);
  TerminalNode? NEXT_FISCAL_YEAR() => getToken(ApexParser.TOKEN_NEXT_FISCAL_YEAR, 0);
  TerminalNode? NEXT_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_YEARS_N, 0);
  TerminalNode? LAST_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_YEARS_N, 0);
  TerminalNode? FIND() => getToken(ApexParser.TOKEN_FIND, 0);
  TerminalNode? EMAIL() => getToken(ApexParser.TOKEN_EMAIL, 0);
  TerminalNode? NAME() => getToken(ApexParser.TOKEN_NAME, 0);
  TerminalNode? PHONE() => getToken(ApexParser.TOKEN_PHONE, 0);
  TerminalNode? SIDEBAR() => getToken(ApexParser.TOKEN_SIDEBAR, 0);
  TerminalNode? FIELDS() => getToken(ApexParser.TOKEN_FIELDS, 0);
  TerminalNode? METADATA() => getToken(ApexParser.TOKEN_METADATA, 0);
  TerminalNode? PRICEBOOKID() => getToken(ApexParser.TOKEN_PRICEBOOKID, 0);
  TerminalNode? NETWORK() => getToken(ApexParser.TOKEN_NETWORK, 0);
  TerminalNode? SNIPPET() => getToken(ApexParser.TOKEN_SNIPPET, 0);
  TerminalNode? TARGET_LENGTH() => getToken(ApexParser.TOKEN_TARGET_LENGTH, 0);
  TerminalNode? DIVISION() => getToken(ApexParser.TOKEN_DIVISION, 0);
  TerminalNode? RETURNING() => getToken(ApexParser.TOKEN_RETURNING, 0);
  TerminalNode? LISTVIEW() => getToken(ApexParser.TOKEN_LISTVIEW, 0);
  IdContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  TerminalNode? Identifier() => getToken(ApexParser.TOKEN_Identifier, 0);
  TerminalNode? ABSTRACT() => getToken(ApexParser.TOKEN_ABSTRACT, 0);
  TerminalNode? AFTER() => getToken(ApexParser.TOKEN_AFTER, 0);
  TerminalNode? BEFORE() => getToken(ApexParser.TOKEN_BEFORE, 0);
  TerminalNode? BREAK() => getToken(ApexParser.TOKEN_BREAK, 0);
  TerminalNode? CATCH() => getToken(ApexParser.TOKEN_CATCH, 0);
  TerminalNode? CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);
  TerminalNode? CONTINUE() => getToken(ApexParser.TOKEN_CONTINUE, 0);
  TerminalNode? DELETE() => getToken(ApexParser.TOKEN_DELETE, 0);
  TerminalNode? DO() => getToken(ApexParser.TOKEN_DO, 0);
  TerminalNode? ELSE() => getToken(ApexParser.TOKEN_ELSE, 0);
  TerminalNode? ENUM() => getToken(ApexParser.TOKEN_ENUM, 0);
  TerminalNode? EXTENDS() => getToken(ApexParser.TOKEN_EXTENDS, 0);
  TerminalNode? FINAL() => getToken(ApexParser.TOKEN_FINAL, 0);
  TerminalNode? FINALLY() => getToken(ApexParser.TOKEN_FINALLY, 0);
  TerminalNode? FOR() => getToken(ApexParser.TOKEN_FOR, 0);
  TerminalNode? GET() => getToken(ApexParser.TOKEN_GET, 0);
  TerminalNode? GLOBAL() => getToken(ApexParser.TOKEN_GLOBAL, 0);
  TerminalNode? IF() => getToken(ApexParser.TOKEN_IF, 0);
  TerminalNode? IMPLEMENTS() => getToken(ApexParser.TOKEN_IMPLEMENTS, 0);
  TerminalNode? INHERITED() => getToken(ApexParser.TOKEN_INHERITED, 0);
  TerminalNode? INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);
  TerminalNode? INSTANCEOF() => getToken(ApexParser.TOKEN_INSTANCEOF, 0);
  TerminalNode? INTERFACE() => getToken(ApexParser.TOKEN_INTERFACE, 0);
  TerminalNode? LIST() => getToken(ApexParser.TOKEN_LIST, 0);
  TerminalNode? MAP() => getToken(ApexParser.TOKEN_MAP, 0);
  TerminalNode? MERGE() => getToken(ApexParser.TOKEN_MERGE, 0);
  TerminalNode? NEW() => getToken(ApexParser.TOKEN_NEW, 0);
  TerminalNode? NULL() => getToken(ApexParser.TOKEN_NULL, 0);
  TerminalNode? ON() => getToken(ApexParser.TOKEN_ON, 0);
  TerminalNode? OVERRIDE() => getToken(ApexParser.TOKEN_OVERRIDE, 0);
  TerminalNode? PRIVATE() => getToken(ApexParser.TOKEN_PRIVATE, 0);
  TerminalNode? PROTECTED() => getToken(ApexParser.TOKEN_PROTECTED, 0);
  TerminalNode? PUBLIC() => getToken(ApexParser.TOKEN_PUBLIC, 0);
  TerminalNode? RETURN() => getToken(ApexParser.TOKEN_RETURN, 0);
  TerminalNode? SET() => getToken(ApexParser.TOKEN_SET, 0);
  TerminalNode? SHARING() => getToken(ApexParser.TOKEN_SHARING, 0);
  TerminalNode? STATIC() => getToken(ApexParser.TOKEN_STATIC, 0);
  TerminalNode? SUPER() => getToken(ApexParser.TOKEN_SUPER, 0);
  TerminalNode? SWITCH() => getToken(ApexParser.TOKEN_SWITCH, 0);
  TerminalNode? TESTMETHOD() => getToken(ApexParser.TOKEN_TESTMETHOD, 0);
  TerminalNode? THIS() => getToken(ApexParser.TOKEN_THIS, 0);
  TerminalNode? THROW() => getToken(ApexParser.TOKEN_THROW, 0);
  TerminalNode? TRANSIENT() => getToken(ApexParser.TOKEN_TRANSIENT, 0);
  TerminalNode? TRIGGER() => getToken(ApexParser.TOKEN_TRIGGER, 0);
  TerminalNode? TRY() => getToken(ApexParser.TOKEN_TRY, 0);
  TerminalNode? UNDELETE() => getToken(ApexParser.TOKEN_UNDELETE, 0);
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  TerminalNode? UPSERT() => getToken(ApexParser.TOKEN_UPSERT, 0);
  TerminalNode? VIRTUAL() => getToken(ApexParser.TOKEN_VIRTUAL, 0);
  TerminalNode? WEBSERVICE() => getToken(ApexParser.TOKEN_WEBSERVICE, 0);
  TerminalNode? WHEN() => getToken(ApexParser.TOKEN_WHEN, 0);
  TerminalNode? WHILE() => getToken(ApexParser.TOKEN_WHILE, 0);
  TerminalNode? WITH() => getToken(ApexParser.TOKEN_WITH, 0);
  TerminalNode? WITHOUT() => getToken(ApexParser.TOKEN_WITHOUT, 0);
  TerminalNode? IntegralCurrencyLiteral() => getToken(ApexParser.TOKEN_IntegralCurrencyLiteral, 0);
  TerminalNode? SELECT() => getToken(ApexParser.TOKEN_SELECT, 0);
  TerminalNode? COUNT() => getToken(ApexParser.TOKEN_COUNT, 0);
  TerminalNode? FROM() => getToken(ApexParser.TOKEN_FROM, 0);
  TerminalNode? AS() => getToken(ApexParser.TOKEN_AS, 0);
  TerminalNode? USING() => getToken(ApexParser.TOKEN_USING, 0);
  TerminalNode? SCOPE() => getToken(ApexParser.TOKEN_SCOPE, 0);
  TerminalNode? WHERE() => getToken(ApexParser.TOKEN_WHERE, 0);
  TerminalNode? ORDER() => getToken(ApexParser.TOKEN_ORDER, 0);
  TerminalNode? BY() => getToken(ApexParser.TOKEN_BY, 0);
  TerminalNode? LIMIT() => getToken(ApexParser.TOKEN_LIMIT, 0);
  TerminalNode? SOQLAND() => getToken(ApexParser.TOKEN_SOQLAND, 0);
  TerminalNode? SOQLOR() => getToken(ApexParser.TOKEN_SOQLOR, 0);
  TerminalNode? NOT() => getToken(ApexParser.TOKEN_NOT, 0);
  TerminalNode? AVG() => getToken(ApexParser.TOKEN_AVG, 0);
  TerminalNode? COUNT_DISTINCT() => getToken(ApexParser.TOKEN_COUNT_DISTINCT, 0);
  TerminalNode? MIN() => getToken(ApexParser.TOKEN_MIN, 0);
  TerminalNode? MAX() => getToken(ApexParser.TOKEN_MAX, 0);
  TerminalNode? SUM() => getToken(ApexParser.TOKEN_SUM, 0);
  TerminalNode? TYPEOF() => getToken(ApexParser.TOKEN_TYPEOF, 0);
  TerminalNode? END() => getToken(ApexParser.TOKEN_END, 0);
  TerminalNode? THEN() => getToken(ApexParser.TOKEN_THEN, 0);
  TerminalNode? LIKE() => getToken(ApexParser.TOKEN_LIKE, 0);
  TerminalNode? IN() => getToken(ApexParser.TOKEN_IN, 0);
  TerminalNode? INCLUDES() => getToken(ApexParser.TOKEN_INCLUDES, 0);
  TerminalNode? EXCLUDES() => getToken(ApexParser.TOKEN_EXCLUDES, 0);
  TerminalNode? ASC() => getToken(ApexParser.TOKEN_ASC, 0);
  TerminalNode? DESC() => getToken(ApexParser.TOKEN_DESC, 0);
  TerminalNode? NULLS() => getToken(ApexParser.TOKEN_NULLS, 0);
  TerminalNode? FIRST() => getToken(ApexParser.TOKEN_FIRST, 0);
  TerminalNode? LAST() => getToken(ApexParser.TOKEN_LAST, 0);
  TerminalNode? GROUP() => getToken(ApexParser.TOKEN_GROUP, 0);
  TerminalNode? ALL() => getToken(ApexParser.TOKEN_ALL, 0);
  TerminalNode? ROWS() => getToken(ApexParser.TOKEN_ROWS, 0);
  TerminalNode? VIEW() => getToken(ApexParser.TOKEN_VIEW, 0);
  TerminalNode? HAVING() => getToken(ApexParser.TOKEN_HAVING, 0);
  TerminalNode? ROLLUP() => getToken(ApexParser.TOKEN_ROLLUP, 0);
  TerminalNode? TOLABEL() => getToken(ApexParser.TOKEN_TOLABEL, 0);
  TerminalNode? OFFSET() => getToken(ApexParser.TOKEN_OFFSET, 0);
  TerminalNode? DATA() => getToken(ApexParser.TOKEN_DATA, 0);
  TerminalNode? CATEGORY() => getToken(ApexParser.TOKEN_CATEGORY, 0);
  TerminalNode? AT() => getToken(ApexParser.TOKEN_AT, 0);
  TerminalNode? ABOVE() => getToken(ApexParser.TOKEN_ABOVE, 0);
  TerminalNode? BELOW() => getToken(ApexParser.TOKEN_BELOW, 0);
  TerminalNode? ABOVE_OR_BELOW() => getToken(ApexParser.TOKEN_ABOVE_OR_BELOW, 0);
  TerminalNode? SECURITY_ENFORCED() => getToken(ApexParser.TOKEN_SECURITY_ENFORCED, 0);
  TerminalNode? REFERENCE() => getToken(ApexParser.TOKEN_REFERENCE, 0);
  TerminalNode? CUBE() => getToken(ApexParser.TOKEN_CUBE, 0);
  TerminalNode? FORMAT() => getToken(ApexParser.TOKEN_FORMAT, 0);
  TerminalNode? TRACKING() => getToken(ApexParser.TOKEN_TRACKING, 0);
  TerminalNode? VIEWSTAT() => getToken(ApexParser.TOKEN_VIEWSTAT, 0);
  TerminalNode? STANDARD() => getToken(ApexParser.TOKEN_STANDARD, 0);
  TerminalNode? CUSTOM() => getToken(ApexParser.TOKEN_CUSTOM, 0);
  TerminalNode? CALENDAR_MONTH() => getToken(ApexParser.TOKEN_CALENDAR_MONTH, 0);
  TerminalNode? CALENDAR_QUARTER() => getToken(ApexParser.TOKEN_CALENDAR_QUARTER, 0);
  TerminalNode? CALENDAR_YEAR() => getToken(ApexParser.TOKEN_CALENDAR_YEAR, 0);
  TerminalNode? DAY_IN_MONTH() => getToken(ApexParser.TOKEN_DAY_IN_MONTH, 0);
  TerminalNode? DAY_IN_WEEK() => getToken(ApexParser.TOKEN_DAY_IN_WEEK, 0);
  TerminalNode? DAY_IN_YEAR() => getToken(ApexParser.TOKEN_DAY_IN_YEAR, 0);
  TerminalNode? DAY_ONLY() => getToken(ApexParser.TOKEN_DAY_ONLY, 0);
  TerminalNode? FISCAL_MONTH() => getToken(ApexParser.TOKEN_FISCAL_MONTH, 0);
  TerminalNode? FISCAL_QUARTER() => getToken(ApexParser.TOKEN_FISCAL_QUARTER, 0);
  TerminalNode? FISCAL_YEAR() => getToken(ApexParser.TOKEN_FISCAL_YEAR, 0);
  TerminalNode? HOUR_IN_DAY() => getToken(ApexParser.TOKEN_HOUR_IN_DAY, 0);
  TerminalNode? WEEK_IN_MONTH() => getToken(ApexParser.TOKEN_WEEK_IN_MONTH, 0);
  TerminalNode? WEEK_IN_YEAR() => getToken(ApexParser.TOKEN_WEEK_IN_YEAR, 0);
  TerminalNode? CONVERT_TIMEZONE() => getToken(ApexParser.TOKEN_CONVERT_TIMEZONE, 0);
  TerminalNode? YESTERDAY() => getToken(ApexParser.TOKEN_YESTERDAY, 0);
  TerminalNode? TODAY() => getToken(ApexParser.TOKEN_TODAY, 0);
  TerminalNode? TOMORROW() => getToken(ApexParser.TOKEN_TOMORROW, 0);
  TerminalNode? LAST_WEEK() => getToken(ApexParser.TOKEN_LAST_WEEK, 0);
  TerminalNode? THIS_WEEK() => getToken(ApexParser.TOKEN_THIS_WEEK, 0);
  TerminalNode? NEXT_WEEK() => getToken(ApexParser.TOKEN_NEXT_WEEK, 0);
  TerminalNode? LAST_MONTH() => getToken(ApexParser.TOKEN_LAST_MONTH, 0);
  TerminalNode? THIS_MONTH() => getToken(ApexParser.TOKEN_THIS_MONTH, 0);
  TerminalNode? NEXT_MONTH() => getToken(ApexParser.TOKEN_NEXT_MONTH, 0);
  TerminalNode? LAST_90_DAYS() => getToken(ApexParser.TOKEN_LAST_90_DAYS, 0);
  TerminalNode? NEXT_90_DAYS() => getToken(ApexParser.TOKEN_NEXT_90_DAYS, 0);
  TerminalNode? LAST_N_DAYS_N() => getToken(ApexParser.TOKEN_LAST_N_DAYS_N, 0);
  TerminalNode? NEXT_N_DAYS_N() => getToken(ApexParser.TOKEN_NEXT_N_DAYS_N, 0);
  TerminalNode? NEXT_N_WEEKS_N() => getToken(ApexParser.TOKEN_NEXT_N_WEEKS_N, 0);
  TerminalNode? LAST_N_WEEKS_N() => getToken(ApexParser.TOKEN_LAST_N_WEEKS_N, 0);
  TerminalNode? NEXT_N_MONTHS_N() => getToken(ApexParser.TOKEN_NEXT_N_MONTHS_N, 0);
  TerminalNode? LAST_N_MONTHS_N() => getToken(ApexParser.TOKEN_LAST_N_MONTHS_N, 0);
  TerminalNode? THIS_QUARTER() => getToken(ApexParser.TOKEN_THIS_QUARTER, 0);
  TerminalNode? LAST_QUARTER() => getToken(ApexParser.TOKEN_LAST_QUARTER, 0);
  TerminalNode? NEXT_QUARTER() => getToken(ApexParser.TOKEN_NEXT_QUARTER, 0);
  TerminalNode? NEXT_N_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_QUARTERS_N, 0);
  TerminalNode? LAST_N_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_QUARTERS_N, 0);
  TerminalNode? THIS_YEAR() => getToken(ApexParser.TOKEN_THIS_YEAR, 0);
  TerminalNode? LAST_YEAR() => getToken(ApexParser.TOKEN_LAST_YEAR, 0);
  TerminalNode? NEXT_YEAR() => getToken(ApexParser.TOKEN_NEXT_YEAR, 0);
  TerminalNode? NEXT_N_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_YEARS_N, 0);
  TerminalNode? LAST_N_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_YEARS_N, 0);
  TerminalNode? THIS_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_THIS_FISCAL_QUARTER, 0);
  TerminalNode? LAST_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_LAST_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_NEXT_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? LAST_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? THIS_FISCAL_YEAR() => getToken(ApexParser.TOKEN_THIS_FISCAL_YEAR, 0);
  TerminalNode? LAST_FISCAL_YEAR() => getToken(ApexParser.TOKEN_LAST_FISCAL_YEAR, 0);
  TerminalNode? NEXT_FISCAL_YEAR() => getToken(ApexParser.TOKEN_NEXT_FISCAL_YEAR, 0);
  TerminalNode? NEXT_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_YEARS_N, 0);
  TerminalNode? LAST_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_YEARS_N, 0);
  TerminalNode? FIND() => getToken(ApexParser.TOKEN_FIND, 0);
  TerminalNode? EMAIL() => getToken(ApexParser.TOKEN_EMAIL, 0);
  TerminalNode? NAME() => getToken(ApexParser.TOKEN_NAME, 0);
  TerminalNode? PHONE() => getToken(ApexParser.TOKEN_PHONE, 0);
  TerminalNode? SIDEBAR() => getToken(ApexParser.TOKEN_SIDEBAR, 0);
  TerminalNode? FIELDS() => getToken(ApexParser.TOKEN_FIELDS, 0);
  TerminalNode? METADATA() => getToken(ApexParser.TOKEN_METADATA, 0);
  TerminalNode? PRICEBOOKID() => getToken(ApexParser.TOKEN_PRICEBOOKID, 0);
  TerminalNode? NETWORK() => getToken(ApexParser.TOKEN_NETWORK, 0);
  TerminalNode? SNIPPET() => getToken(ApexParser.TOKEN_SNIPPET, 0);
  TerminalNode? TARGET_LENGTH() => getToken(ApexParser.TOKEN_TARGET_LENGTH, 0);
  TerminalNode? DIVISION() => getToken(ApexParser.TOKEN_DIVISION, 0);
  TerminalNode? RETURNING() => getToken(ApexParser.TOKEN_RETURNING, 0);
  TerminalNode? LISTVIEW() => getToken(ApexParser.TOKEN_LISTVIEW, 0);
  AnyIdContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
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
  ClassDeclarationContext? classDeclaration() => getRuleContext<ClassDeclarationContext>(0);
  TerminalNode? DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  TypeClassDeclarationContext(TypeDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeClassDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeClassDeclaration(this);
  }
}

class TypeInterfaceDeclarationContext extends TypeDeclarationContext {
  InterfaceDeclarationContext? interfaceDeclaration() => getRuleContext<InterfaceDeclarationContext>(0);
  TerminalNode? DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  TypeInterfaceDeclarationContext(TypeDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeInterfaceDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeInterfaceDeclaration(this);
  }
}

class TypeEnumDeclarationContext extends TypeDeclarationContext {
  EnumDeclarationContext? enumDeclaration() => getRuleContext<EnumDeclarationContext>(0);
  TerminalNode? DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  TypeEnumDeclarationContext(TypeDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterTypeEnumDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitTypeEnumDeclaration(this);
  }
}class StaticBlockClassBodyDeclarationContext extends ClassBodyDeclarationContext {
  BlockContext? block() => getRuleContext<BlockContext>(0);
  TerminalNode? STATIC() => getToken(ApexParser.TOKEN_STATIC, 0);
  StaticBlockClassBodyDeclarationContext(ClassBodyDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterStaticBlockClassBodyDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitStaticBlockClassBodyDeclaration(this);
  }
}

class MemberClassBodyDeclarationContext extends ClassBodyDeclarationContext {
  MemberDeclarationContext? memberDeclaration() => getRuleContext<MemberDeclarationContext>(0);
  TerminalNode? DOC_COMMENT() => getToken(ApexParser.TOKEN_DOC_COMMENT, 0);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  MemberClassBodyDeclarationContext(ClassBodyDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMemberClassBodyDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMemberClassBodyDeclaration(this);
  }
}

class EmptyClassBodyDeclarationContext extends ClassBodyDeclarationContext {
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  EmptyClassBodyDeclarationContext(ClassBodyDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterEmptyClassBodyDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitEmptyClassBodyDeclaration(this);
  }
}class MethodMemberDeclarationContext extends MemberDeclarationContext {
  MethodDeclarationContext? methodDeclaration() => getRuleContext<MethodDeclarationContext>(0);
  MethodMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMethodMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMethodMemberDeclaration(this);
  }
}

class ConstructorMemberDeclarationContext extends MemberDeclarationContext {
  ConstructorDeclarationContext? constructorDeclaration() => getRuleContext<ConstructorDeclarationContext>(0);
  ConstructorMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterConstructorMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitConstructorMemberDeclaration(this);
  }
}

class EnumMemberDeclarationContext extends MemberDeclarationContext {
  EnumDeclarationContext? enumDeclaration() => getRuleContext<EnumDeclarationContext>(0);
  EnumMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterEnumMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitEnumMemberDeclaration(this);
  }
}

class ClassMemberDeclarationContext extends MemberDeclarationContext {
  ClassDeclarationContext? classDeclaration() => getRuleContext<ClassDeclarationContext>(0);
  ClassMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterClassMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitClassMemberDeclaration(this);
  }
}

class FieldMemberDeclarationContext extends MemberDeclarationContext {
  FieldDeclarationContext? fieldDeclaration() => getRuleContext<FieldDeclarationContext>(0);
  FieldMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterFieldMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitFieldMemberDeclaration(this);
  }
}

class InterfaceMemberDeclarationContext extends MemberDeclarationContext {
  InterfaceDeclarationContext? interfaceDeclaration() => getRuleContext<InterfaceDeclarationContext>(0);
  InterfaceMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterInterfaceMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInterfaceMemberDeclaration(this);
  }
}

class PropertyMemberDeclarationContext extends MemberDeclarationContext {
  PropertyDeclarationContext? propertyDeclaration() => getRuleContext<PropertyDeclarationContext>(0);
  PropertyMemberDeclarationContext(MemberDeclarationContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPropertyMemberDeclaration(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPropertyMemberDeclaration(this);
  }
}class PrimaryExpressionContext extends ExpressionContext {
  PrimaryContext? primary() => getRuleContext<PrimaryContext>(0);
  PrimaryExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? MUL() => getToken(ApexParser.TOKEN_MUL, 0);
  TerminalNode? DIV() => getToken(ApexParser.TOKEN_DIV, 0);
  TerminalNode? MOD() => getToken(ApexParser.TOKEN_MOD, 0);
  Arth1ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? DOT() => getToken(ApexParser.TOKEN_DOT, 0);
  TerminalNode? QUESTIONDOT() => getToken(ApexParser.TOKEN_QUESTIONDOT, 0);
  DotMethodCallContext? dotMethodCall() => getRuleContext<DotMethodCallContext>(0);
  AnyIdContext? anyId() => getRuleContext<AnyIdContext>(0);
  DotExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? BITOR() => getToken(ApexParser.TOKEN_BITOR, 0);
  BitOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? LBRACK() => getToken(ApexParser.TOKEN_LBRACK, 0);
  TerminalNode? RBRACK() => getToken(ApexParser.TOKEN_RBRACK, 0);
  ArrayExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  TerminalNode? NEW() => getToken(ApexParser.TOKEN_NEW, 0);
  CreatorContext? creator() => getRuleContext<CreatorContext>(0);
  NewExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  TerminalNode? ADD_ASSIGN() => getToken(ApexParser.TOKEN_ADD_ASSIGN, 0);
  TerminalNode? SUB_ASSIGN() => getToken(ApexParser.TOKEN_SUB_ASSIGN, 0);
  TerminalNode? MUL_ASSIGN() => getToken(ApexParser.TOKEN_MUL_ASSIGN, 0);
  TerminalNode? DIV_ASSIGN() => getToken(ApexParser.TOKEN_DIV_ASSIGN, 0);
  TerminalNode? AND_ASSIGN() => getToken(ApexParser.TOKEN_AND_ASSIGN, 0);
  TerminalNode? OR_ASSIGN() => getToken(ApexParser.TOKEN_OR_ASSIGN, 0);
  TerminalNode? XOR_ASSIGN() => getToken(ApexParser.TOKEN_XOR_ASSIGN, 0);
  TerminalNode? RSHIFT_ASSIGN() => getToken(ApexParser.TOKEN_RSHIFT_ASSIGN, 0);
  TerminalNode? URSHIFT_ASSIGN() => getToken(ApexParser.TOKEN_URSHIFT_ASSIGN, 0);
  TerminalNode? LSHIFT_ASSIGN() => getToken(ApexParser.TOKEN_LSHIFT_ASSIGN, 0);
  TerminalNode? MOD_ASSIGN() => getToken(ApexParser.TOKEN_MOD_ASSIGN, 0);
  AssignExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  MethodCallContext? methodCall() => getRuleContext<MethodCallContext>(0);
  MethodCallExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterMethodCallExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitMethodCallExpression(this);
  }
}

class BitNotExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? CARET() => getToken(ApexParser.TOKEN_CARET, 0);
  BitNotExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? ADD() => getToken(ApexParser.TOKEN_ADD, 0);
  TerminalNode? SUB() => getToken(ApexParser.TOKEN_SUB, 0);
  Arth2ExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? AND() => getToken(ApexParser.TOKEN_AND, 0);
  LogAndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  CastExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? BITAND() => getToken(ApexParser.TOKEN_BITAND, 0);
  BitAndExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? GT() => getToken(ApexParser.TOKEN_GT, 0);
  TerminalNode? LT() => getToken(ApexParser.TOKEN_LT, 0);
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  CmpExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  List<TerminalNode> LTs() => getTokens(ApexParser.TOKEN_LT);
  TerminalNode? LT(int i) => getToken(ApexParser.TOKEN_LT, i);
  List<TerminalNode> GTs() => getTokens(ApexParser.TOKEN_GT);
  TerminalNode? GT(int i) => getToken(ApexParser.TOKEN_GT, i);
  BitExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? OR() => getToken(ApexParser.TOKEN_OR, 0);
  LogOrExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? QUESTION() => getToken(ApexParser.TOKEN_QUESTION, 0);
  TerminalNode? COLON() => getToken(ApexParser.TOKEN_COLON, 0);
  CondExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? TRIPLEEQUAL() => getToken(ApexParser.TOKEN_TRIPLEEQUAL, 0);
  TerminalNode? TRIPLENOTEQUAL() => getToken(ApexParser.TOKEN_TRIPLENOTEQUAL, 0);
  TerminalNode? EQUAL() => getToken(ApexParser.TOKEN_EQUAL, 0);
  TerminalNode? NOTEQUAL() => getToken(ApexParser.TOKEN_NOTEQUAL, 0);
  TerminalNode? LESSANDGREATER() => getToken(ApexParser.TOKEN_LESSANDGREATER, 0);
  EqualityExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? INC() => getToken(ApexParser.TOKEN_INC, 0);
  TerminalNode? DEC() => getToken(ApexParser.TOKEN_DEC, 0);
  PostOpExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? TILDE() => getToken(ApexParser.TOKEN_TILDE, 0);
  TerminalNode? BANG() => getToken(ApexParser.TOKEN_BANG, 0);
  NegExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
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
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? ADD() => getToken(ApexParser.TOKEN_ADD, 0);
  TerminalNode? SUB() => getToken(ApexParser.TOKEN_SUB, 0);
  TerminalNode? INC() => getToken(ApexParser.TOKEN_INC, 0);
  TerminalNode? DEC() => getToken(ApexParser.TOKEN_DEC, 0);
  PreOpExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterPreOpExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitPreOpExpression(this);
  }
}

class SubExpressionContext extends ExpressionContext {
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  SubExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSubExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSubExpression(this);
  }
}

class InstanceOfExpressionContext extends ExpressionContext {
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? INSTANCEOF() => getToken(ApexParser.TOKEN_INSTANCEOF, 0);
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  InstanceOfExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterInstanceOfExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitInstanceOfExpression(this);
  }
}class ThisPrimaryContext extends PrimaryContext {
  TerminalNode? THIS() => getToken(ApexParser.TOKEN_THIS, 0);
  ThisPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
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
  SoqlLiteralContext? soqlLiteral() => getRuleContext<SoqlLiteralContext>(0);
  SoqlPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
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
  TerminalNode? SUPER() => getToken(ApexParser.TOKEN_SUPER, 0);
  SuperPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
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
  TypeRefContext? typeRef() => getRuleContext<TypeRefContext>(0);
  TerminalNode? DOT() => getToken(ApexParser.TOKEN_DOT, 0);
  TerminalNode? CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);
  TypeRefPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
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
  IdContext? id() => getRuleContext<IdContext>(0);
  IdPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterIdPrimary(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitIdPrimary(this);
  }
}

class SoslPrimaryContext extends PrimaryContext {
  SoslLiteralContext? soslLiteral() => getRuleContext<SoslLiteralContext>(0);
  SoslPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoslPrimary(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoslPrimary(this);
  }
}

class LiteralPrimaryContext extends PrimaryContext {
  LiteralContext? literal() => getRuleContext<LiteralContext>(0);
  LiteralPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterLiteralPrimary(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitLiteralPrimary(this);
  }
}