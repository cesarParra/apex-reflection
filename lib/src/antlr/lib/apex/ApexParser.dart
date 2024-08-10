// Generated from lib/src/antlr/grammars/apex/ApexParser.g4 by ANTLR 4.13.2
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
          RULE_accessLevel = 54, RULE_insertStatement = 55, RULE_updateStatement = 56, 
          RULE_deleteStatement = 57, RULE_undeleteStatement = 58, RULE_upsertStatement = 59, 
          RULE_mergeStatement = 60, RULE_runAsStatement = 61, RULE_expressionStatement = 62, 
          RULE_propertyBlock = 63, RULE_getter = 64, RULE_setter = 65, RULE_catchClause = 66, 
          RULE_finallyBlock = 67, RULE_forControl = 68, RULE_forInit = 69, 
          RULE_enhancedForControl = 70, RULE_forUpdate = 71, RULE_parExpression = 72, 
          RULE_expressionList = 73, RULE_expression = 74, RULE_primary = 75, 
          RULE_methodCall = 76, RULE_dotMethodCall = 77, RULE_creator = 78, 
          RULE_createdName = 79, RULE_idCreatedNamePair = 80, RULE_noRest = 81, 
          RULE_classCreatorRest = 82, RULE_arrayCreatorRest = 83, RULE_mapCreatorRest = 84, 
          RULE_mapCreatorRestPair = 85, RULE_setCreatorRest = 86, RULE_arguments = 87, 
          RULE_soqlLiteral = 88, RULE_query = 89, RULE_subQuery = 90, RULE_selectList = 91, 
          RULE_selectEntry = 92, RULE_fieldName = 93, RULE_fromNameList = 94, 
          RULE_subFieldList = 95, RULE_subFieldEntry = 96, RULE_soqlFieldsParameter = 97, 
          RULE_soqlFunction = 98, RULE_dateFieldName = 99, RULE_typeOf = 100, 
          RULE_whenClause = 101, RULE_elseClause = 102, RULE_fieldNameList = 103, 
          RULE_usingScope = 104, RULE_whereClause = 105, RULE_logicalExpression = 106, 
          RULE_conditionalExpression = 107, RULE_fieldExpression = 108, 
          RULE_comparisonOperator = 109, RULE_value = 110, RULE_valueList = 111, 
          RULE_signedNumber = 112, RULE_withClause = 113, RULE_filteringExpression = 114, 
          RULE_dataCategorySelection = 115, RULE_dataCategoryName = 116, 
          RULE_filteringSelector = 117, RULE_groupByClause = 118, RULE_orderByClause = 119, 
          RULE_fieldOrderList = 120, RULE_fieldOrder = 121, RULE_limitClause = 122, 
          RULE_offsetClause = 123, RULE_allRowsClause = 124, RULE_forClauses = 125, 
          RULE_boundExpression = 126, RULE_dateFormula = 127, RULE_signedInteger = 128, 
          RULE_soqlId = 129, RULE_soslLiteral = 130, RULE_soslClauses = 131, 
          RULE_soslWithClause = 132, RULE_searchGroup = 133, RULE_fieldSpecList = 134, 
          RULE_fieldSpec = 135, RULE_fieldList = 136, RULE_updateList = 137, 
          RULE_updateType = 138, RULE_networkList = 139, RULE_soslId = 140, 
          RULE_id = 141, RULE_anyId = 142;
class ApexParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.13.2', RuntimeMetaData.VERSION);
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
                   TOKEN_MAP = 56, TOKEN_SYSTEM = 57, TOKEN_USER = 58, TOKEN_SELECT = 59, 
                   TOKEN_COUNT = 60, TOKEN_FROM = 61, TOKEN_AS = 62, TOKEN_USING = 63, 
                   TOKEN_SCOPE = 64, TOKEN_WHERE = 65, TOKEN_ORDER = 66, 
                   TOKEN_BY = 67, TOKEN_LIMIT = 68, TOKEN_SOQLAND = 69, 
                   TOKEN_SOQLOR = 70, TOKEN_NOT = 71, TOKEN_AVG = 72, TOKEN_COUNT_DISTINCT = 73, 
                   TOKEN_MIN = 74, TOKEN_MAX = 75, TOKEN_SUM = 76, TOKEN_TYPEOF = 77, 
                   TOKEN_END = 78, TOKEN_THEN = 79, TOKEN_LIKE = 80, TOKEN_IN = 81, 
                   TOKEN_INCLUDES = 82, TOKEN_EXCLUDES = 83, TOKEN_ASC = 84, 
                   TOKEN_DESC = 85, TOKEN_NULLS = 86, TOKEN_FIRST = 87, 
                   TOKEN_LAST = 88, TOKEN_GROUP = 89, TOKEN_ALL = 90, TOKEN_ROWS = 91, 
                   TOKEN_VIEW = 92, TOKEN_HAVING = 93, TOKEN_ROLLUP = 94, 
                   TOKEN_TOLABEL = 95, TOKEN_OFFSET = 96, TOKEN_DATA = 97, 
                   TOKEN_CATEGORY = 98, TOKEN_AT = 99, TOKEN_ABOVE = 100, 
                   TOKEN_BELOW = 101, TOKEN_ABOVE_OR_BELOW = 102, TOKEN_SECURITY_ENFORCED = 103, 
                   TOKEN_SYSTEM_MODE = 104, TOKEN_USER_MODE = 105, TOKEN_REFERENCE = 106, 
                   TOKEN_CUBE = 107, TOKEN_FORMAT = 108, TOKEN_TRACKING = 109, 
                   TOKEN_VIEWSTAT = 110, TOKEN_CUSTOM = 111, TOKEN_STANDARD = 112, 
                   TOKEN_CALENDAR_MONTH = 113, TOKEN_CALENDAR_QUARTER = 114, 
                   TOKEN_CALENDAR_YEAR = 115, TOKEN_DAY_IN_MONTH = 116, 
                   TOKEN_DAY_IN_WEEK = 117, TOKEN_DAY_IN_YEAR = 118, TOKEN_DAY_ONLY = 119, 
                   TOKEN_FISCAL_MONTH = 120, TOKEN_FISCAL_QUARTER = 121, 
                   TOKEN_FISCAL_YEAR = 122, TOKEN_HOUR_IN_DAY = 123, TOKEN_WEEK_IN_MONTH = 124, 
                   TOKEN_WEEK_IN_YEAR = 125, TOKEN_CONVERT_TIMEZONE = 126, 
                   TOKEN_YESTERDAY = 127, TOKEN_TODAY = 128, TOKEN_TOMORROW = 129, 
                   TOKEN_LAST_WEEK = 130, TOKEN_THIS_WEEK = 131, TOKEN_NEXT_WEEK = 132, 
                   TOKEN_LAST_MONTH = 133, TOKEN_THIS_MONTH = 134, TOKEN_NEXT_MONTH = 135, 
                   TOKEN_LAST_90_DAYS = 136, TOKEN_NEXT_90_DAYS = 137, TOKEN_LAST_N_DAYS_N = 138, 
                   TOKEN_NEXT_N_DAYS_N = 139, TOKEN_N_DAYS_AGO_N = 140, 
                   TOKEN_NEXT_N_WEEKS_N = 141, TOKEN_LAST_N_WEEKS_N = 142, 
                   TOKEN_N_WEEKS_AGO_N = 143, TOKEN_NEXT_N_MONTHS_N = 144, 
                   TOKEN_LAST_N_MONTHS_N = 145, TOKEN_N_MONTHS_AGO_N = 146, 
                   TOKEN_THIS_QUARTER = 147, TOKEN_LAST_QUARTER = 148, TOKEN_NEXT_QUARTER = 149, 
                   TOKEN_NEXT_N_QUARTERS_N = 150, TOKEN_LAST_N_QUARTERS_N = 151, 
                   TOKEN_N_QUARTERS_AGO_N = 152, TOKEN_THIS_YEAR = 153, 
                   TOKEN_LAST_YEAR = 154, TOKEN_NEXT_YEAR = 155, TOKEN_NEXT_N_YEARS_N = 156, 
                   TOKEN_LAST_N_YEARS_N = 157, TOKEN_N_YEARS_AGO_N = 158, 
                   TOKEN_THIS_FISCAL_QUARTER = 159, TOKEN_LAST_FISCAL_QUARTER = 160, 
                   TOKEN_NEXT_FISCAL_QUARTER = 161, TOKEN_NEXT_N_FISCAL_QUARTERS_N = 162, 
                   TOKEN_LAST_N_FISCAL_QUARTERS_N = 163, TOKEN_N_FISCAL_QUARTERS_AGO_N = 164, 
                   TOKEN_THIS_FISCAL_YEAR = 165, TOKEN_LAST_FISCAL_YEAR = 166, 
                   TOKEN_NEXT_FISCAL_YEAR = 167, TOKEN_NEXT_N_FISCAL_YEARS_N = 168, 
                   TOKEN_LAST_N_FISCAL_YEARS_N = 169, TOKEN_N_FISCAL_YEARS_AGO_N = 170, 
                   TOKEN_DateLiteral = 171, TOKEN_DateTimeLiteral = 172, 
                   TOKEN_IntegralCurrencyLiteral = 173, TOKEN_FIND = 174, 
                   TOKEN_EMAIL = 175, TOKEN_NAME = 176, TOKEN_PHONE = 177, 
                   TOKEN_SIDEBAR = 178, TOKEN_FIELDS = 179, TOKEN_METADATA = 180, 
                   TOKEN_PRICEBOOKID = 181, TOKEN_NETWORK = 182, TOKEN_SNIPPET = 183, 
                   TOKEN_TARGET_LENGTH = 184, TOKEN_DIVISION = 185, TOKEN_RETURNING = 186, 
                   TOKEN_LISTVIEW = 187, TOKEN_FindLiteral = 188, TOKEN_IntegerLiteral = 189, 
                   TOKEN_LongLiteral = 190, TOKEN_NumberLiteral = 191, TOKEN_BooleanLiteral = 192, 
                   TOKEN_StringLiteral = 193, TOKEN_NullLiteral = 194, TOKEN_LPAREN = 195, 
                   TOKEN_RPAREN = 196, TOKEN_LBRACE = 197, TOKEN_RBRACE = 198, 
                   TOKEN_LBRACK = 199, TOKEN_RBRACK = 200, TOKEN_SEMI = 201, 
                   TOKEN_COMMA = 202, TOKEN_DOT = 203, TOKEN_ASSIGN = 204, 
                   TOKEN_GT = 205, TOKEN_LT = 206, TOKEN_BANG = 207, TOKEN_TILDE = 208, 
                   TOKEN_QUESTIONDOT = 209, TOKEN_QUESTION = 210, TOKEN_COLON = 211, 
                   TOKEN_EQUAL = 212, TOKEN_TRIPLEEQUAL = 213, TOKEN_NOTEQUAL = 214, 
                   TOKEN_LESSANDGREATER = 215, TOKEN_TRIPLENOTEQUAL = 216, 
                   TOKEN_AND = 217, TOKEN_OR = 218, TOKEN_INC = 219, TOKEN_DEC = 220, 
                   TOKEN_ADD = 221, TOKEN_SUB = 222, TOKEN_MUL = 223, TOKEN_DIV = 224, 
                   TOKEN_BITAND = 225, TOKEN_BITOR = 226, TOKEN_CARET = 227, 
                   TOKEN_MOD = 228, TOKEN_MAPTO = 229, TOKEN_NULL_COALESCE = 230, 
                   TOKEN_ADD_ASSIGN = 231, TOKEN_SUB_ASSIGN = 232, TOKEN_MUL_ASSIGN = 233, 
                   TOKEN_DIV_ASSIGN = 234, TOKEN_AND_ASSIGN = 235, TOKEN_OR_ASSIGN = 236, 
                   TOKEN_XOR_ASSIGN = 237, TOKEN_MOD_ASSIGN = 238, TOKEN_LSHIFT_ASSIGN = 239, 
                   TOKEN_RSHIFT_ASSIGN = 240, TOKEN_URSHIFT_ASSIGN = 241, 
                   TOKEN_ATSIGN = 242, TOKEN_UNDERSCORE = 243, TOKEN_Identifier = 244, 
                   TOKEN_START_GROUP_COMMENT = 245, TOKEN_END_GROUP_COMMENT = 246, 
                   TOKEN_DOC_COMMENT = 247, TOKEN_WS = 248, TOKEN_COMMENT = 249, 
                   TOKEN_LINE_COMMENT = 250;

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
    'breakStatement', 'continueStatement', 'accessLevel', 'insertStatement', 
    'updateStatement', 'deleteStatement', 'undeleteStatement', 'upsertStatement', 
    'mergeStatement', 'runAsStatement', 'expressionStatement', 'propertyBlock', 
    'getter', 'setter', 'catchClause', 'finallyBlock', 'forControl', 'forInit', 
    'enhancedForControl', 'forUpdate', 'parExpression', 'expressionList', 
    'expression', 'primary', 'methodCall', 'dotMethodCall', 'creator', 'createdName', 
    'idCreatedNamePair', 'noRest', 'classCreatorRest', 'arrayCreatorRest', 
    'mapCreatorRest', 'mapCreatorRestPair', 'setCreatorRest', 'arguments', 
    'soqlLiteral', 'query', 'subQuery', 'selectList', 'selectEntry', 'fieldName', 
    'fromNameList', 'subFieldList', 'subFieldEntry', 'soqlFieldsParameter', 
    'soqlFunction', 'dateFieldName', 'typeOf', 'whenClause', 'elseClause', 
    'fieldNameList', 'usingScope', 'whereClause', 'logicalExpression', 'conditionalExpression', 
    'fieldExpression', 'comparisonOperator', 'value', 'valueList', 'signedNumber', 
    'withClause', 'filteringExpression', 'dataCategorySelection', 'dataCategoryName', 
    'filteringSelector', 'groupByClause', 'orderByClause', 'fieldOrderList', 
    'fieldOrder', 'limitClause', 'offsetClause', 'allRowsClause', 'forClauses', 
    'boundExpression', 'dateFormula', 'signedInteger', 'soqlId', 'soslLiteral', 
    'soslClauses', 'soslWithClause', 'searchGroup', 'fieldSpecList', 'fieldSpec', 
    'fieldList', 'updateList', 'updateType', 'networkList', 'soslId', 'id', 
    'anyId'
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
      "'list'", "'map'", "'system'", "'user'", "'select'", "'count'", "'from'", 
      "'as'", "'using'", "'scope'", "'where'", "'order'", "'by'", "'limit'", 
      "'and'", "'or'", "'not'", "'avg'", "'count_distinct'", "'min'", "'max'", 
      "'sum'", "'typeof'", "'end'", "'then'", "'like'", "'in'", "'includes'", 
      "'excludes'", "'asc'", "'desc'", "'nulls'", "'first'", "'last'", "'group'", 
      "'all'", "'rows'", "'view'", "'having'", "'rollup'", "'tolabel'", 
      "'offset'", "'data'", "'category'", "'at'", "'above'", "'below'", 
      "'above_or_below'", "'security_enforced'", "'system_mode'", "'user_mode'", 
      "'reference'", "'cube'", "'format'", "'tracking'", "'viewstat'", "'custom'", 
      "'standard'", "'calendar_month'", "'calendar_quarter'", "'calendar_year'", 
      "'day_in_month'", "'day_in_week'", "'day_in_year'", "'day_only'", 
      "'fiscal_month'", "'fiscal_quarter'", "'fiscal_year'", "'hour_in_day'", 
      "'week_in_month'", "'week_in_year'", "'converttimezone'", "'yesterday'", 
      "'today'", "'tomorrow'", "'last_week'", "'this_week'", "'next_week'", 
      "'last_month'", "'this_month'", "'next_month'", "'last_90_days'", 
      "'next_90_days'", "'last_n_days'", "'next_n_days'", "'n_days_ago'", 
      "'next_n_weeks'", "'last_n_weeks'", "'n_weeks_ago'", "'next_n_months'", 
      "'last_n_months'", "'n_months_ago'", "'this_quarter'", "'last_quarter'", 
      "'next_quarter'", "'next_n_quarters'", "'last_n_quarters'", "'n_quarters_ago'", 
      "'this_year'", "'last_year'", "'next_year'", "'next_n_years'", "'last_n_years'", 
      "'n_years_ago'", "'this_fiscal_quarter'", "'last_fiscal_quarter'", 
      "'next_fiscal_quarter'", "'next_n_fiscal_quarters'", "'last_n_fiscal_quarters'", 
      "'n_fiscal_quarters_ago'", "'this_fiscal_year'", "'last_fiscal_year'", 
      "'next_fiscal_year'", "'next_n_fiscal_years'", "'last_n_fiscal_years'", 
      "'n_fiscal_years_ago'", null, null, null, "'find'", "'email'", "'name'", 
      "'phone'", "'sidebar'", "'fields'", "'metadata'", "'pricebookid'", 
      "'network'", "'snippet'", "'target_length'", "'division'", "'returning'", 
      "'listview'", null, null, null, null, null, null, null, "'('", "')'", 
      "'{'", "'}'", "'['", "']'", "';'", "','", "'.'", "'='", "'>'", "'<'", 
      "'!'", "'~'", "'?.'", "'?'", "':'", "'=='", "'==='", "'!='", "'<>'", 
      "'!=='", "'&&'", "'||'", "'++'", "'--'", "'+'", "'-'", "'*'", "'/'", 
      "'&'", "'|'", "'^'", "'%'", "'=>'", "'??'", "'+='", "'-='", "'*='", 
      "'/='", "'&='", "'|='", "'^='", "'%='", "'<<='", "'>>='", "'>>>='", 
      "'@'", "'_'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, "ABSTRACT", "AFTER", "BEFORE", "BREAK", "CATCH", "CLASS", "CONTINUE", 
      "DELETE", "DO", "ELSE", "ENUM", "EXTENDS", "FINAL", "FINALLY", "FOR", 
      "GET", "GLOBAL", "IF", "IMPLEMENTS", "INHERITED", "INSERT", "INSTANCEOF", 
      "INTERFACE", "MERGE", "NEW", "NULL", "ON", "OVERRIDE", "PRIVATE", 
      "PROTECTED", "PUBLIC", "RETURN", "SYSTEMRUNAS", "SET", "SHARING", 
      "STATIC", "SUPER", "SWITCH", "TESTMETHOD", "THIS", "THROW", "TRANSIENT", 
      "TRIGGER", "TRY", "UNDELETE", "UPDATE", "UPSERT", "VIRTUAL", "VOID", 
      "WEBSERVICE", "WHEN", "WHILE", "WITH", "WITHOUT", "LIST", "MAP", "SYSTEM", 
      "USER", "SELECT", "COUNT", "FROM", "AS", "USING", "SCOPE", "WHERE", 
      "ORDER", "BY", "LIMIT", "SOQLAND", "SOQLOR", "NOT", "AVG", "COUNT_DISTINCT", 
      "MIN", "MAX", "SUM", "TYPEOF", "END", "THEN", "LIKE", "IN", "INCLUDES", 
      "EXCLUDES", "ASC", "DESC", "NULLS", "FIRST", "LAST", "GROUP", "ALL", 
      "ROWS", "VIEW", "HAVING", "ROLLUP", "TOLABEL", "OFFSET", "DATA", "CATEGORY", 
      "AT", "ABOVE", "BELOW", "ABOVE_OR_BELOW", "SECURITY_ENFORCED", "SYSTEM_MODE", 
      "USER_MODE", "REFERENCE", "CUBE", "FORMAT", "TRACKING", "VIEWSTAT", 
      "CUSTOM", "STANDARD", "CALENDAR_MONTH", "CALENDAR_QUARTER", "CALENDAR_YEAR", 
      "DAY_IN_MONTH", "DAY_IN_WEEK", "DAY_IN_YEAR", "DAY_ONLY", "FISCAL_MONTH", 
      "FISCAL_QUARTER", "FISCAL_YEAR", "HOUR_IN_DAY", "WEEK_IN_MONTH", "WEEK_IN_YEAR", 
      "CONVERT_TIMEZONE", "YESTERDAY", "TODAY", "TOMORROW", "LAST_WEEK", 
      "THIS_WEEK", "NEXT_WEEK", "LAST_MONTH", "THIS_MONTH", "NEXT_MONTH", 
      "LAST_90_DAYS", "NEXT_90_DAYS", "LAST_N_DAYS_N", "NEXT_N_DAYS_N", 
      "N_DAYS_AGO_N", "NEXT_N_WEEKS_N", "LAST_N_WEEKS_N", "N_WEEKS_AGO_N", 
      "NEXT_N_MONTHS_N", "LAST_N_MONTHS_N", "N_MONTHS_AGO_N", "THIS_QUARTER", 
      "LAST_QUARTER", "NEXT_QUARTER", "NEXT_N_QUARTERS_N", "LAST_N_QUARTERS_N", 
      "N_QUARTERS_AGO_N", "THIS_YEAR", "LAST_YEAR", "NEXT_YEAR", "NEXT_N_YEARS_N", 
      "LAST_N_YEARS_N", "N_YEARS_AGO_N", "THIS_FISCAL_QUARTER", "LAST_FISCAL_QUARTER", 
      "NEXT_FISCAL_QUARTER", "NEXT_N_FISCAL_QUARTERS_N", "LAST_N_FISCAL_QUARTERS_N", 
      "N_FISCAL_QUARTERS_AGO_N", "THIS_FISCAL_YEAR", "LAST_FISCAL_YEAR", 
      "NEXT_FISCAL_YEAR", "NEXT_N_FISCAL_YEARS_N", "LAST_N_FISCAL_YEARS_N", 
      "N_FISCAL_YEARS_AGO_N", "DateLiteral", "DateTimeLiteral", "IntegralCurrencyLiteral", 
      "FIND", "EMAIL", "NAME", "PHONE", "SIDEBAR", "FIELDS", "METADATA", 
      "PRICEBOOKID", "NETWORK", "SNIPPET", "TARGET_LENGTH", "DIVISION", 
      "RETURNING", "LISTVIEW", "FindLiteral", "IntegerLiteral", "LongLiteral", 
      "NumberLiteral", "BooleanLiteral", "StringLiteral", "NullLiteral", 
      "LPAREN", "RPAREN", "LBRACE", "RBRACE", "LBRACK", "RBRACK", "SEMI", 
      "COMMA", "DOT", "ASSIGN", "GT", "LT", "BANG", "TILDE", "QUESTIONDOT", 
      "QUESTION", "COLON", "EQUAL", "TRIPLEEQUAL", "NOTEQUAL", "LESSANDGREATER", 
      "TRIPLENOTEQUAL", "AND", "OR", "INC", "DEC", "ADD", "SUB", "MUL", 
      "DIV", "BITAND", "BITOR", "CARET", "MOD", "MAPTO", "NULL_COALESCE", 
      "ADD_ASSIGN", "SUB_ASSIGN", "MUL_ASSIGN", "DIV_ASSIGN", "AND_ASSIGN", 
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
  List<int> get serializedATN => _serializedATN;

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
      state = 286;
      match(TOKEN_TRIGGER);
      state = 287;
      id();
      state = 288;
      match(TOKEN_ON);
      state = 289;
      id();
      state = 290;
      match(TOKEN_LPAREN);
      state = 291;
      triggerCase();
      state = 296;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 292;
        match(TOKEN_COMMA);
        state = 293;
        triggerCase();
        state = 298;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 299;
      match(TOKEN_RPAREN);
      state = 300;
      block();
      state = 301;
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
      state = 303;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_AFTER || _la == TOKEN_BEFORE)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 304;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & 105553118363904) != 0))) {
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
      state = 306;
      typeDeclaration();
      state = 307;
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
      int _alt;
      state = 348;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 7, context)) {
      case 1:
        _localctx = TypeClassDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 312;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 309;
            annotation(); 
          }
          state = 314;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 1, context);
        }
        state = 318;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 28433993197297666) != 0) || _la == TOKEN_ATSIGN) {
          state = 315;
          modifier();
          state = 320;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 321;
        classDeclaration();
        break;
      case 2:
        _localctx = TypeEnumDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 325;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 3, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 322;
            annotation(); 
          }
          state = 327;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 3, context);
        }
        state = 331;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 28433993197297666) != 0) || _la == TOKEN_ATSIGN) {
          state = 328;
          modifier();
          state = 333;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 334;
        enumDeclaration();
        break;
      case 3:
        _localctx = TypeInterfaceDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 338;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 335;
            annotation(); 
          }
          state = 340;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 5, context);
        }
        state = 344;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 28433993197297666) != 0) || _la == TOKEN_ATSIGN) {
          state = 341;
          modifier();
          state = 346;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 347;
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
      state = 350;
      match(TOKEN_CLASS);
      state = 351;
      id();
      state = 354;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 352;
        match(TOKEN_EXTENDS);
        state = 353;
        typeRef();
      }

      state = 358;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_IMPLEMENTS) {
        state = 356;
        match(TOKEN_IMPLEMENTS);
        state = 357;
        typeList();
      }

      state = 360;
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
      state = 362;
      match(TOKEN_ENUM);
      state = 363;
      id();
      state = 364;
      match(TOKEN_LBRACE);
      state = 366;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -114265319982170100) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_Identifier) {
        state = 365;
        enumConstants();
      }

      state = 368;
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
      state = 370;
      id();
      state = 375;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 371;
        match(TOKEN_COMMA);
        state = 372;
        id();
        state = 377;
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
      state = 378;
      match(TOKEN_INTERFACE);
      state = 379;
      id();
      state = 382;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_EXTENDS) {
        state = 380;
        match(TOKEN_EXTENDS);
        state = 381;
        typeList();
      }

      state = 384;
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
      state = 386;
      typeRef();
      state = 391;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 387;
        match(TOKEN_COMMA);
        state = 388;
        typeRef();
        state = 393;
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
      state = 394;
      match(TOKEN_LBRACE);
      state = 399;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -4770931531372466) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || ((((_la - 197)) & ~0x3f) == 0 && ((1 << (_la - 197)) & 457396837154833) != 0)) {
        state = 397;
        errorHandler.sync(this);
        switch (tokenStream.LA(1)!) {
        case TOKEN_START_GROUP_COMMENT:
          state = 395;
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
        case TOKEN_SYSTEM:
        case TOKEN_USER:
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
        case TOKEN_SYSTEM_MODE:
        case TOKEN_USER_MODE:
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
        case TOKEN_N_DAYS_AGO_N:
        case TOKEN_NEXT_N_WEEKS_N:
        case TOKEN_LAST_N_WEEKS_N:
        case TOKEN_N_WEEKS_AGO_N:
        case TOKEN_NEXT_N_MONTHS_N:
        case TOKEN_LAST_N_MONTHS_N:
        case TOKEN_N_MONTHS_AGO_N:
        case TOKEN_THIS_QUARTER:
        case TOKEN_LAST_QUARTER:
        case TOKEN_NEXT_QUARTER:
        case TOKEN_NEXT_N_QUARTERS_N:
        case TOKEN_LAST_N_QUARTERS_N:
        case TOKEN_N_QUARTERS_AGO_N:
        case TOKEN_THIS_YEAR:
        case TOKEN_LAST_YEAR:
        case TOKEN_NEXT_YEAR:
        case TOKEN_NEXT_N_YEARS_N:
        case TOKEN_LAST_N_YEARS_N:
        case TOKEN_N_YEARS_AGO_N:
        case TOKEN_THIS_FISCAL_QUARTER:
        case TOKEN_LAST_FISCAL_QUARTER:
        case TOKEN_NEXT_FISCAL_QUARTER:
        case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
        case TOKEN_LAST_N_FISCAL_QUARTERS_N:
        case TOKEN_N_FISCAL_QUARTERS_AGO_N:
        case TOKEN_THIS_FISCAL_YEAR:
        case TOKEN_LAST_FISCAL_YEAR:
        case TOKEN_NEXT_FISCAL_YEAR:
        case TOKEN_NEXT_N_FISCAL_YEARS_N:
        case TOKEN_LAST_N_FISCAL_YEARS_N:
        case TOKEN_N_FISCAL_YEARS_AGO_N:
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
          state = 396;
          classBodyDeclaration();
          break;
        default:
          throw NoViableAltException(this);
        }
        state = 401;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 402;
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
      state = 404;
      match(TOKEN_START_GROUP_COMMENT);
      state = 408;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -4770931531372466) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || ((((_la - 197)) & ~0x3f) == 0 && ((1 << (_la - 197)) & 175921860444177) != 0)) {
        state = 405;
        classBodyDeclaration();
        state = 410;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 411;
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
      state = 413;
      match(TOKEN_LBRACE);
      state = 417;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -4770931539763186) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_ATSIGN || _la == TOKEN_Identifier) {
        state = 414;
        interfaceMethodDeclaration();
        state = 419;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 420;
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
      state = 443;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 22, context)) {
      case 1:
        _localctx = EmptyClassBodyDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 422;
        match(TOKEN_SEMI);
        break;
      case 2:
        _localctx = StaticBlockClassBodyDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 424;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_STATIC) {
          state = 423;
          match(TOKEN_STATIC);
        }

        state = 426;
        block();
        break;
      case 3:
        _localctx = MemberClassBodyDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 430;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 427;
            annotation(); 
          }
          state = 432;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 19, context);
        }
        state = 436;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 433;
            modifier(); 
          }
          state = 438;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 20, context);
        }
        state = 439;
        memberDeclaration();
        state = 441;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 21, context)) {
        case 1:
          state = 440;
          match(TOKEN_END_GROUP_COMMENT);
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

  ModifierContext modifier() {
    dynamic _localctx = ModifierContext(context, state);
    enterRule(_localctx, 26, RULE_modifier);
    try {
      state = 464;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ATSIGN:
        enterOuterAlt(_localctx, 1);
        state = 445;
        annotation();
        break;
      case TOKEN_GLOBAL:
        enterOuterAlt(_localctx, 2);
        state = 446;
        match(TOKEN_GLOBAL);
        break;
      case TOKEN_PUBLIC:
        enterOuterAlt(_localctx, 3);
        state = 447;
        match(TOKEN_PUBLIC);
        break;
      case TOKEN_PROTECTED:
        enterOuterAlt(_localctx, 4);
        state = 448;
        match(TOKEN_PROTECTED);
        break;
      case TOKEN_PRIVATE:
        enterOuterAlt(_localctx, 5);
        state = 449;
        match(TOKEN_PRIVATE);
        break;
      case TOKEN_TRANSIENT:
        enterOuterAlt(_localctx, 6);
        state = 450;
        match(TOKEN_TRANSIENT);
        break;
      case TOKEN_STATIC:
        enterOuterAlt(_localctx, 7);
        state = 451;
        match(TOKEN_STATIC);
        break;
      case TOKEN_ABSTRACT:
        enterOuterAlt(_localctx, 8);
        state = 452;
        match(TOKEN_ABSTRACT);
        break;
      case TOKEN_FINAL:
        enterOuterAlt(_localctx, 9);
        state = 453;
        match(TOKEN_FINAL);
        break;
      case TOKEN_WEBSERVICE:
        enterOuterAlt(_localctx, 10);
        state = 454;
        match(TOKEN_WEBSERVICE);
        break;
      case TOKEN_OVERRIDE:
        enterOuterAlt(_localctx, 11);
        state = 455;
        match(TOKEN_OVERRIDE);
        break;
      case TOKEN_VIRTUAL:
        enterOuterAlt(_localctx, 12);
        state = 456;
        match(TOKEN_VIRTUAL);
        break;
      case TOKEN_TESTMETHOD:
        enterOuterAlt(_localctx, 13);
        state = 457;
        match(TOKEN_TESTMETHOD);
        break;
      case TOKEN_WITH:
        enterOuterAlt(_localctx, 14);
        state = 458;
        match(TOKEN_WITH);
        state = 459;
        match(TOKEN_SHARING);
        break;
      case TOKEN_WITHOUT:
        enterOuterAlt(_localctx, 15);
        state = 460;
        match(TOKEN_WITHOUT);
        state = 461;
        match(TOKEN_SHARING);
        break;
      case TOKEN_INHERITED:
        enterOuterAlt(_localctx, 16);
        state = 462;
        match(TOKEN_INHERITED);
        state = 463;
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
      state = 473;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 24, context)) {
      case 1:
        _localctx = MethodMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 466;
        methodDeclaration();
        break;
      case 2:
        _localctx = FieldMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 467;
        fieldDeclaration();
        break;
      case 3:
        _localctx = ConstructorMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 468;
        constructorDeclaration();
        break;
      case 4:
        _localctx = InterfaceMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 469;
        interfaceDeclaration();
        break;
      case 5:
        _localctx = ClassMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 470;
        classDeclaration();
        break;
      case 6:
        _localctx = EnumMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 471;
        enumDeclaration();
        break;
      case 7:
        _localctx = PropertyMemberDeclarationContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 472;
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
      state = 477;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 25, context)) {
      case 1:
        state = 475;
        typeRef();
        break;
      case 2:
        state = 476;
        match(TOKEN_VOID);
        break;
      }
      state = 479;
      id();
      state = 480;
      formalParameters();
      state = 483;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_LBRACE:
        state = 481;
        block();
        break;
      case TOKEN_SEMI:
        state = 482;
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
      state = 485;
      qualifiedName();
      state = 486;
      formalParameters();
      state = 487;
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
      state = 489;
      typeRef();
      state = 490;
      variableDeclarators();
      state = 491;
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
      state = 493;
      typeRef();
      state = 494;
      id();
      state = 495;
      match(TOKEN_LBRACE);
      state = 499;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 28434010377232386) != 0) || _la == TOKEN_ATSIGN) {
        state = 496;
        propertyBlock();
        state = 501;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 502;
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
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 507;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 504;
          annotation(); 
        }
        state = 509;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 28, context);
      }
      state = 513;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 29, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 510;
          modifier(); 
        }
        state = 515;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 29, context);
      }
      state = 518;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 30, context)) {
      case 1:
        state = 516;
        typeRef();
        break;
      case 2:
        state = 517;
        match(TOKEN_VOID);
        break;
      }
      state = 520;
      id();
      state = 521;
      formalParameters();
      state = 522;
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
      state = 524;
      variableDeclarator();
      state = 529;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 525;
        match(TOKEN_COMMA);
        state = 526;
        variableDeclarator();
        state = 531;
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
      state = 532;
      id();
      state = 535;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ASSIGN) {
        state = 533;
        match(TOKEN_ASSIGN);
        state = 534;
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
      state = 537;
      match(TOKEN_LBRACE);
      state = 549;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
        state = 538;
        expression(0);
        state = 543;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 539;
            match(TOKEN_COMMA);
            state = 540;
            expression(0); 
          }
          state = 545;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 33, context);
        }
        state = 547;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 546;
          match(TOKEN_COMMA);
        }

      }

      state = 551;
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
      state = 553;
      typeName();
      state = 558;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 554;
          match(TOKEN_DOT);
          state = 555;
          typeName(); 
        }
        state = 560;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 36, context);
      }
      state = 561;
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
      state = 567;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 563;
          match(TOKEN_LBRACK);
          state = 564;
          match(TOKEN_RBRACK); 
        }
        state = 569;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 37, context);
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
      state = 586;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 42, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 570;
        match(TOKEN_LIST);
        state = 572;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 38, context)) {
        case 1:
          state = 571;
          typeArguments();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 574;
        match(TOKEN_SET);
        state = 576;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 39, context)) {
        case 1:
          state = 575;
          typeArguments();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 578;
        match(TOKEN_MAP);
        state = 580;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 40, context)) {
        case 1:
          state = 579;
          typeArguments();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 582;
        id();
        state = 584;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 41, context)) {
        case 1:
          state = 583;
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
      state = 588;
      match(TOKEN_LT);
      state = 589;
      typeList();
      state = 590;
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
      state = 592;
      match(TOKEN_LPAREN);
      state = 594;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -4770931539763186) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_ATSIGN || _la == TOKEN_Identifier) {
        state = 593;
        formalParameterList();
      }

      state = 596;
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
      state = 598;
      formalParameter();
      state = 603;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 599;
        match(TOKEN_COMMA);
        state = 600;
        formalParameter();
        state = 605;
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
      state = 609;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 606;
          modifier(); 
        }
        state = 611;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 45, context);
      }
      state = 612;
      typeRef();
      state = 613;
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
      state = 615;
      id();
      state = 620;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 616;
        match(TOKEN_DOT);
        state = 617;
        id();
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

  LiteralContext literal() {
    dynamic _localctx = LiteralContext(context, state);
    enterRule(_localctx, 62, RULE_literal);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 623;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_NULL || ((((_la - 189)) & ~0x3f) == 0 && ((1 << (_la - 189)) & 31) != 0))) {
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
      state = 625;
      match(TOKEN_ATSIGN);
      state = 626;
      qualifiedName();
      state = 633;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LPAREN) {
        state = 627;
        match(TOKEN_LPAREN);
        state = 630;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 47, context)) {
        case 1:
          state = 628;
          elementValuePairs();
          break;
        case 2:
          state = 629;
          elementValue();
          break;
        }
        state = 632;
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
      state = 635;
      elementValuePair();
      state = 642;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -114265319982170100) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_COMMA || _la == TOKEN_Identifier) {
        state = 637;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_COMMA) {
          state = 636;
          match(TOKEN_COMMA);
        }

        state = 639;
        elementValuePair();
        state = 644;
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
      state = 645;
      id();
      state = 646;
      match(TOKEN_ASSIGN);
      state = 647;
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
      state = 652;
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
      case TOKEN_VOID:
      case TOKEN_WHEN:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_LIST:
      case TOKEN_MAP:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
        state = 649;
        expression(0);
        break;
      case TOKEN_ATSIGN:
        enterOuterAlt(_localctx, 2);
        state = 650;
        annotation();
        break;
      case TOKEN_LBRACE:
        enterOuterAlt(_localctx, 3);
        state = 651;
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
      state = 654;
      match(TOKEN_LBRACE);
      state = 663;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 5629501547577515) != 0)) {
        state = 655;
        elementValue();
        state = 660;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 52, context);
        while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
          if (_alt == 1) {
            state = 656;
            match(TOKEN_COMMA);
            state = 657;
            elementValue(); 
          }
          state = 662;
          errorHandler.sync(this);
          _alt = interpreter!.adaptivePredict(tokenStream, 52, context);
        }
      }

      state = 666;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMA) {
        state = 665;
        match(TOKEN_COMMA);
      }

      state = 668;
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
      state = 670;
      match(TOKEN_LBRACE);
      state = 674;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & -143154274) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 5629501547577515) != 0)) {
        state = 671;
        statement();
        state = 676;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 677;
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
      state = 679;
      localVariableDeclaration();
      state = 680;
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
      state = 685;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 56, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 682;
          modifier(); 
        }
        state = 687;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 56, context);
      }
      state = 688;
      typeRef();
      state = 689;
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
      state = 711;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 57, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 691;
        block();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 692;
        ifStatement();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 693;
        switchStatement();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 694;
        forStatement();
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 695;
        whileStatement();
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 696;
        doWhileStatement();
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 697;
        tryStatement();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 698;
        returnStatement();
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 699;
        throwStatement();
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 700;
        breakStatement();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 701;
        continueStatement();
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 702;
        insertStatement();
        break;
      case 13:
        enterOuterAlt(_localctx, 13);
        state = 703;
        updateStatement();
        break;
      case 14:
        enterOuterAlt(_localctx, 14);
        state = 704;
        deleteStatement();
        break;
      case 15:
        enterOuterAlt(_localctx, 15);
        state = 705;
        undeleteStatement();
        break;
      case 16:
        enterOuterAlt(_localctx, 16);
        state = 706;
        upsertStatement();
        break;
      case 17:
        enterOuterAlt(_localctx, 17);
        state = 707;
        mergeStatement();
        break;
      case 18:
        enterOuterAlt(_localctx, 18);
        state = 708;
        runAsStatement();
        break;
      case 19:
        enterOuterAlt(_localctx, 19);
        state = 709;
        localVariableDeclarationStatement();
        break;
      case 20:
        enterOuterAlt(_localctx, 20);
        state = 710;
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
      state = 713;
      match(TOKEN_IF);
      state = 714;
      parExpression();
      state = 715;
      statement();
      state = 718;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 58, context)) {
      case 1:
        state = 716;
        match(TOKEN_ELSE);
        state = 717;
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
      state = 720;
      match(TOKEN_SWITCH);
      state = 721;
      match(TOKEN_ON);
      state = 722;
      expression(0);
      state = 723;
      match(TOKEN_LBRACE);
      state = 725; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 724;
        whenControl();
        state = 727; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_WHEN);
      state = 729;
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
      state = 731;
      match(TOKEN_WHEN);
      state = 732;
      whenValue();
      state = 733;
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
      state = 747;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 61, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 735;
        match(TOKEN_ELSE);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 736;
        whenLiteral();
        state = 741;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 737;
          match(TOKEN_COMMA);
          state = 738;
          whenLiteral();
          state = 743;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 744;
        id();
        state = 745;
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
      state = 761;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_IntegerLiteral:
      case TOKEN_SUB:
        enterOuterAlt(_localctx, 1);
        state = 750;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_SUB) {
          state = 749;
          match(TOKEN_SUB);
        }

        state = 752;
        match(TOKEN_IntegerLiteral);
        break;
      case TOKEN_LongLiteral:
        enterOuterAlt(_localctx, 2);
        state = 753;
        match(TOKEN_LongLiteral);
        break;
      case TOKEN_StringLiteral:
        enterOuterAlt(_localctx, 3);
        state = 754;
        match(TOKEN_StringLiteral);
        break;
      case TOKEN_NULL:
        enterOuterAlt(_localctx, 4);
        state = 755;
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
      case TOKEN_VOID:
      case TOKEN_WHEN:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
        state = 756;
        id();
        break;
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 6);
        state = 757;
        match(TOKEN_LPAREN);
        state = 758;
        whenLiteral();
        state = 759;
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

  ForStatementContext forStatement() {
    dynamic _localctx = ForStatementContext(context, state);
    enterRule(_localctx, 92, RULE_forStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 763;
      match(TOKEN_FOR);
      state = 764;
      match(TOKEN_LPAREN);
      state = 765;
      forControl();
      state = 766;
      match(TOKEN_RPAREN);
      state = 769;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ABSTRACT:
      case TOKEN_AFTER:
      case TOKEN_BEFORE:
      case TOKEN_BREAK:
      case TOKEN_CONTINUE:
      case TOKEN_DELETE:
      case TOKEN_DO:
      case TOKEN_FINAL:
      case TOKEN_FOR:
      case TOKEN_GET:
      case TOKEN_GLOBAL:
      case TOKEN_IF:
      case TOKEN_INHERITED:
      case TOKEN_INSERT:
      case TOKEN_INSTANCEOF:
      case TOKEN_MERGE:
      case TOKEN_NEW:
      case TOKEN_NULL:
      case TOKEN_OVERRIDE:
      case TOKEN_PRIVATE:
      case TOKEN_PROTECTED:
      case TOKEN_PUBLIC:
      case TOKEN_RETURN:
      case TOKEN_SYSTEMRUNAS:
      case TOKEN_SET:
      case TOKEN_SHARING:
      case TOKEN_STATIC:
      case TOKEN_SUPER:
      case TOKEN_SWITCH:
      case TOKEN_TESTMETHOD:
      case TOKEN_THIS:
      case TOKEN_THROW:
      case TOKEN_TRANSIENT:
      case TOKEN_TRIGGER:
      case TOKEN_TRY:
      case TOKEN_UNDELETE:
      case TOKEN_UPDATE:
      case TOKEN_UPSERT:
      case TOKEN_VIRTUAL:
      case TOKEN_VOID:
      case TOKEN_WEBSERVICE:
      case TOKEN_WHEN:
      case TOKEN_WHILE:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_LIST:
      case TOKEN_MAP:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
      case TOKEN_LBRACE:
      case TOKEN_LBRACK:
      case TOKEN_BANG:
      case TOKEN_TILDE:
      case TOKEN_INC:
      case TOKEN_DEC:
      case TOKEN_ADD:
      case TOKEN_SUB:
      case TOKEN_ATSIGN:
      case TOKEN_Identifier:
        state = 767;
        statement();
        break;
      case TOKEN_SEMI:
        state = 768;
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

  WhileStatementContext whileStatement() {
    dynamic _localctx = WhileStatementContext(context, state);
    enterRule(_localctx, 94, RULE_whileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 771;
      match(TOKEN_WHILE);
      state = 772;
      parExpression();
      state = 775;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ABSTRACT:
      case TOKEN_AFTER:
      case TOKEN_BEFORE:
      case TOKEN_BREAK:
      case TOKEN_CONTINUE:
      case TOKEN_DELETE:
      case TOKEN_DO:
      case TOKEN_FINAL:
      case TOKEN_FOR:
      case TOKEN_GET:
      case TOKEN_GLOBAL:
      case TOKEN_IF:
      case TOKEN_INHERITED:
      case TOKEN_INSERT:
      case TOKEN_INSTANCEOF:
      case TOKEN_MERGE:
      case TOKEN_NEW:
      case TOKEN_NULL:
      case TOKEN_OVERRIDE:
      case TOKEN_PRIVATE:
      case TOKEN_PROTECTED:
      case TOKEN_PUBLIC:
      case TOKEN_RETURN:
      case TOKEN_SYSTEMRUNAS:
      case TOKEN_SET:
      case TOKEN_SHARING:
      case TOKEN_STATIC:
      case TOKEN_SUPER:
      case TOKEN_SWITCH:
      case TOKEN_TESTMETHOD:
      case TOKEN_THIS:
      case TOKEN_THROW:
      case TOKEN_TRANSIENT:
      case TOKEN_TRIGGER:
      case TOKEN_TRY:
      case TOKEN_UNDELETE:
      case TOKEN_UPDATE:
      case TOKEN_UPSERT:
      case TOKEN_VIRTUAL:
      case TOKEN_VOID:
      case TOKEN_WEBSERVICE:
      case TOKEN_WHEN:
      case TOKEN_WHILE:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_LIST:
      case TOKEN_MAP:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
      case TOKEN_LBRACE:
      case TOKEN_LBRACK:
      case TOKEN_BANG:
      case TOKEN_TILDE:
      case TOKEN_INC:
      case TOKEN_DEC:
      case TOKEN_ADD:
      case TOKEN_SUB:
      case TOKEN_ATSIGN:
      case TOKEN_Identifier:
        state = 773;
        statement();
        break;
      case TOKEN_SEMI:
        state = 774;
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

  DoWhileStatementContext doWhileStatement() {
    dynamic _localctx = DoWhileStatementContext(context, state);
    enterRule(_localctx, 96, RULE_doWhileStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 777;
      match(TOKEN_DO);
      state = 778;
      statement();
      state = 779;
      match(TOKEN_WHILE);
      state = 780;
      parExpression();
      state = 781;
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
      state = 783;
      match(TOKEN_TRY);
      state = 784;
      block();
      state = 794;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_CATCH:
        state = 786; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        do {
          state = 785;
          catchClause();
          state = 788; 
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        } while (_la == TOKEN_CATCH);
        state = 791;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_FINALLY) {
          state = 790;
          finallyBlock();
        }

        break;
      case TOKEN_FINALLY:
        state = 793;
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
      state = 796;
      match(TOKEN_RETURN);
      state = 798;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
        state = 797;
        expression(0);
      }

      state = 800;
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
      state = 802;
      match(TOKEN_THROW);
      state = 803;
      expression(0);
      state = 804;
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
      state = 806;
      match(TOKEN_BREAK);
      state = 807;
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
      state = 809;
      match(TOKEN_CONTINUE);
      state = 810;
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

  AccessLevelContext accessLevel() {
    dynamic _localctx = AccessLevelContext(context, state);
    enterRule(_localctx, 108, RULE_accessLevel);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 812;
      match(TOKEN_AS);
      state = 813;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_SYSTEM || _la == TOKEN_USER)) {
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

  InsertStatementContext insertStatement() {
    dynamic _localctx = InsertStatementContext(context, state);
    enterRule(_localctx, 110, RULE_insertStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 815;
      match(TOKEN_INSERT);
      state = 817;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 70, context)) {
      case 1:
        state = 816;
        accessLevel();
        break;
      }
      state = 819;
      expression(0);
      state = 820;
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
    enterRule(_localctx, 112, RULE_updateStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 822;
      match(TOKEN_UPDATE);
      state = 824;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 71, context)) {
      case 1:
        state = 823;
        accessLevel();
        break;
      }
      state = 826;
      expression(0);
      state = 827;
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
    enterRule(_localctx, 114, RULE_deleteStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 829;
      match(TOKEN_DELETE);
      state = 831;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 72, context)) {
      case 1:
        state = 830;
        accessLevel();
        break;
      }
      state = 833;
      expression(0);
      state = 834;
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
    enterRule(_localctx, 116, RULE_undeleteStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 836;
      match(TOKEN_UNDELETE);
      state = 838;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 73, context)) {
      case 1:
        state = 837;
        accessLevel();
        break;
      }
      state = 840;
      expression(0);
      state = 841;
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
    enterRule(_localctx, 118, RULE_upsertStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 843;
      match(TOKEN_UPSERT);
      state = 845;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 74, context)) {
      case 1:
        state = 844;
        accessLevel();
        break;
      }
      state = 847;
      expression(0);
      state = 849;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -114265319982170100) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_Identifier) {
        state = 848;
        qualifiedName();
      }

      state = 851;
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
    enterRule(_localctx, 120, RULE_mergeStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 853;
      match(TOKEN_MERGE);
      state = 855;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 76, context)) {
      case 1:
        state = 854;
        accessLevel();
        break;
      }
      state = 857;
      expression(0);
      state = 858;
      expression(0);
      state = 859;
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
    enterRule(_localctx, 122, RULE_runAsStatement);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 861;
      match(TOKEN_SYSTEMRUNAS);
      state = 862;
      match(TOKEN_LPAREN);
      state = 864;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
        state = 863;
        expressionList();
      }

      state = 866;
      match(TOKEN_RPAREN);
      state = 867;
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
    enterRule(_localctx, 124, RULE_expressionStatement);
    try {
      enterOuterAlt(_localctx, 1);
      state = 869;
      expression(0);
      state = 870;
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
    enterRule(_localctx, 126, RULE_propertyBlock);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 875;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while ((((_la) & ~0x3f) == 0 && ((1 << _la) & 28433993197297666) != 0) || _la == TOKEN_ATSIGN) {
        state = 872;
        modifier();
        state = 877;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 880;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_GET:
        state = 878;
        getter();
        break;
      case TOKEN_SET:
        state = 879;
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
    enterRule(_localctx, 128, RULE_getter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 882;
      match(TOKEN_GET);
      state = 885;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_SEMI:
        state = 883;
        match(TOKEN_SEMI);
        break;
      case TOKEN_LBRACE:
        state = 884;
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
    enterRule(_localctx, 130, RULE_setter);
    try {
      enterOuterAlt(_localctx, 1);
      state = 887;
      match(TOKEN_SET);
      state = 890;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_SEMI:
        state = 888;
        match(TOKEN_SEMI);
        break;
      case TOKEN_LBRACE:
        state = 889;
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
    enterRule(_localctx, 132, RULE_catchClause);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 892;
      match(TOKEN_CATCH);
      state = 893;
      match(TOKEN_LPAREN);
      state = 897;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 82, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 894;
          modifier(); 
        }
        state = 899;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 82, context);
      }
      state = 900;
      qualifiedName();
      state = 901;
      id();
      state = 902;
      match(TOKEN_RPAREN);
      state = 903;
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
    enterRule(_localctx, 134, RULE_finallyBlock);
    try {
      enterOuterAlt(_localctx, 1);
      state = 905;
      match(TOKEN_FINALLY);
      state = 906;
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
    enterRule(_localctx, 136, RULE_forControl);
    int _la;
    try {
      state = 920;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 86, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 908;
        enhancedForControl();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 910;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -4769694488518642) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 5629501547577483) != 0)) {
          state = 909;
          forInit();
        }

        state = 912;
        match(TOKEN_SEMI);
        state = 914;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
          state = 913;
          expression(0);
        }

        state = 916;
        match(TOKEN_SEMI);
        state = 918;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
          state = 917;
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
    enterRule(_localctx, 138, RULE_forInit);
    try {
      state = 924;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 87, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 922;
        localVariableDeclaration();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 923;
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
    enterRule(_localctx, 140, RULE_enhancedForControl);
    try {
      enterOuterAlt(_localctx, 1);
      state = 926;
      typeRef();
      state = 927;
      id();
      state = 928;
      match(TOKEN_COLON);
      state = 929;
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
    enterRule(_localctx, 142, RULE_forUpdate);
    try {
      enterOuterAlt(_localctx, 1);
      state = 931;
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
    enterRule(_localctx, 144, RULE_parExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 933;
      match(TOKEN_LPAREN);
      state = 934;
      expression(0);
      state = 935;
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
    enterRule(_localctx, 146, RULE_expressionList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 937;
      expression(0);
      state = 942;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 938;
        match(TOKEN_COMMA);
        state = 939;
        expression(0);
        state = 944;
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
    var _startState = 148;
    enterRecursionRule(_localctx, 148, RULE_expression, _p);
    int _la;
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 963;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 89, context)) {
      case 1:
        _localctx = PrimaryExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;

        state = 946;
        primary();
        break;
      case 2:
        _localctx = MethodCallExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 947;
        methodCall();
        break;
      case 3:
        _localctx = NewExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 948;
        match(TOKEN_NEW);
        state = 949;
        creator();
        break;
      case 4:
        _localctx = CastExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 950;
        match(TOKEN_LPAREN);
        state = 951;
        typeRef();
        state = 952;
        match(TOKEN_RPAREN);
        state = 953;
        expression(19);
        break;
      case 5:
        _localctx = SubExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 955;
        match(TOKEN_LPAREN);
        state = 956;
        expression(0);
        state = 957;
        match(TOKEN_RPAREN);
        break;
      case 6:
        _localctx = PreOpExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 959;
        _la = tokenStream.LA(1)!;
        if (!(((((_la - 219)) & ~0x3f) == 0 && ((1 << (_la - 219)) & 15) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 960;
        expression(16);
        break;
      case 7:
        _localctx = NegExpressionContext(_localctx);
        context = _localctx;
        _prevctx = _localctx;
        state = 961;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_BANG || _la == TOKEN_TILDE)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 962;
        expression(15);
        break;
      }
      context!.stop = tokenStream.LT(-1);
      state = 1036;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 94, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          if (parseListeners != null) triggerExitRuleEvent();
          _prevctx = _localctx;
          state = 1034;
          errorHandler.sync(this);
          switch (interpreter!.adaptivePredict(tokenStream, 93, context)) {
          case 1:
            _localctx = Arth1ExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 965;
            if (!(precpred(context, 14))) {
              throw FailedPredicateException(this, "precpred(context, 14)");
            }
            state = 966;
            _la = tokenStream.LA(1)!;
            if (!(((((_la - 223)) & ~0x3f) == 0 && ((1 << (_la - 223)) & 35) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 967;
            expression(15);
            break;
          case 2:
            _localctx = Arth2ExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 968;
            if (!(precpred(context, 13))) {
              throw FailedPredicateException(this, "precpred(context, 13)");
            }
            state = 969;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 970;
            expression(14);
            break;
          case 3:
            _localctx = BitExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 971;
            if (!(precpred(context, 12))) {
              throw FailedPredicateException(this, "precpred(context, 12)");
            }
            state = 979;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 90, context)) {
            case 1:
              state = 972;
              match(TOKEN_LT);
              state = 973;
              match(TOKEN_LT);
              break;
            case 2:
              state = 974;
              match(TOKEN_GT);
              state = 975;
              match(TOKEN_GT);
              state = 976;
              match(TOKEN_GT);
              break;
            case 3:
              state = 977;
              match(TOKEN_GT);
              state = 978;
              match(TOKEN_GT);
              break;
            }
            state = 981;
            expression(13);
            break;
          case 4:
            _localctx = CmpExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 982;
            if (!(precpred(context, 11))) {
              throw FailedPredicateException(this, "precpred(context, 11)");
            }
            state = 983;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_GT || _la == TOKEN_LT)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 985;
            errorHandler.sync(this);
            _la = tokenStream.LA(1)!;
            if (_la == TOKEN_ASSIGN) {
              state = 984;
              match(TOKEN_ASSIGN);
            }

            state = 987;
            expression(12);
            break;
          case 5:
            _localctx = EqualityExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 988;
            if (!(precpred(context, 9))) {
              throw FailedPredicateException(this, "precpred(context, 9)");
            }
            state = 989;
            _la = tokenStream.LA(1)!;
            if (!(((((_la - 212)) & ~0x3f) == 0 && ((1 << (_la - 212)) & 31) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 990;
            expression(10);
            break;
          case 6:
            _localctx = BitAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 991;
            if (!(precpred(context, 8))) {
              throw FailedPredicateException(this, "precpred(context, 8)");
            }
            state = 992;
            match(TOKEN_BITAND);
            state = 993;
            expression(9);
            break;
          case 7:
            _localctx = BitNotExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 994;
            if (!(precpred(context, 7))) {
              throw FailedPredicateException(this, "precpred(context, 7)");
            }
            state = 995;
            match(TOKEN_CARET);
            state = 996;
            expression(8);
            break;
          case 8:
            _localctx = BitOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 997;
            if (!(precpred(context, 6))) {
              throw FailedPredicateException(this, "precpred(context, 6)");
            }
            state = 998;
            match(TOKEN_BITOR);
            state = 999;
            expression(7);
            break;
          case 9:
            _localctx = LogAndExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1000;
            if (!(precpred(context, 5))) {
              throw FailedPredicateException(this, "precpred(context, 5)");
            }
            state = 1001;
            match(TOKEN_AND);
            state = 1002;
            expression(6);
            break;
          case 10:
            _localctx = LogOrExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1003;
            if (!(precpred(context, 4))) {
              throw FailedPredicateException(this, "precpred(context, 4)");
            }
            state = 1004;
            match(TOKEN_OR);
            state = 1005;
            expression(5);
            break;
          case 11:
            _localctx = NullCoalesceExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1006;
            if (!(precpred(context, 3))) {
              throw FailedPredicateException(this, "precpred(context, 3)");
            }
            state = 1007;
            match(TOKEN_NULL_COALESCE);
            state = 1008;
            expression(4);
            break;
          case 12:
            _localctx = CondExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1009;
            if (!(precpred(context, 2))) {
              throw FailedPredicateException(this, "precpred(context, 2)");
            }
            state = 1010;
            match(TOKEN_QUESTION);
            state = 1011;
            expression(0);
            state = 1012;
            match(TOKEN_COLON);
            state = 1013;
            expression(2);
            break;
          case 13:
            _localctx = AssignExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1015;
            if (!(precpred(context, 1))) {
              throw FailedPredicateException(this, "precpred(context, 1)");
            }
            state = 1016;
            _la = tokenStream.LA(1)!;
            if (!(((((_la - 204)) & ~0x3f) == 0 && ((1 << (_la - 204)) & 274743689217) != 0))) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1017;
            expression(1);
            break;
          case 14:
            _localctx = DotExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1018;
            if (!(precpred(context, 23))) {
              throw FailedPredicateException(this, "precpred(context, 23)");
            }
            state = 1019;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_DOT || _la == TOKEN_QUESTIONDOT)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            state = 1022;
            errorHandler.sync(this);
            switch (interpreter!.adaptivePredict(tokenStream, 92, context)) {
            case 1:
              state = 1020;
              dotMethodCall();
              break;
            case 2:
              state = 1021;
              anyId();
              break;
            }
            break;
          case 15:
            _localctx = ArrayExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1024;
            if (!(precpred(context, 22))) {
              throw FailedPredicateException(this, "precpred(context, 22)");
            }
            state = 1025;
            match(TOKEN_LBRACK);
            state = 1026;
            expression(0);
            state = 1027;
            match(TOKEN_RBRACK);
            break;
          case 16:
            _localctx = PostOpExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1029;
            if (!(precpred(context, 17))) {
              throw FailedPredicateException(this, "precpred(context, 17)");
            }
            state = 1030;
            _la = tokenStream.LA(1)!;
            if (!(_la == TOKEN_INC || _la == TOKEN_DEC)) {
            errorHandler.recoverInline(this);
            } else {
              if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
              errorHandler.reportMatch(this);
              consume();
            }
            break;
          case 17:
            _localctx = InstanceOfExpressionContext(new ExpressionContext(_parentctx, _parentState));
            pushNewRecursionContext(_localctx, _startState, RULE_expression);
            state = 1031;
            if (!(precpred(context, 10))) {
              throw FailedPredicateException(this, "precpred(context, 10)");
            }
            state = 1032;
            match(TOKEN_INSTANCEOF);
            state = 1033;
            typeRef();
            break;
          } 
        }
        state = 1038;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 94, context);
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
    enterRule(_localctx, 150, RULE_primary);
    try {
      state = 1052;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 95, context)) {
      case 1:
        _localctx = ThisPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 1);
        state = 1039;
        match(TOKEN_THIS);
        break;
      case 2:
        _localctx = SuperPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 2);
        state = 1040;
        match(TOKEN_SUPER);
        break;
      case 3:
        _localctx = LiteralPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 3);
        state = 1041;
        literal();
        break;
      case 4:
        _localctx = TypeRefPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 4);
        state = 1042;
        typeRef();
        state = 1043;
        match(TOKEN_DOT);
        state = 1044;
        match(TOKEN_CLASS);
        break;
      case 5:
        _localctx = VoidPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 5);
        state = 1046;
        match(TOKEN_VOID);
        state = 1047;
        match(TOKEN_DOT);
        state = 1048;
        match(TOKEN_CLASS);
        break;
      case 6:
        _localctx = IdPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 6);
        state = 1049;
        id();
        break;
      case 7:
        _localctx = SoqlPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 7);
        state = 1050;
        soqlLiteral();
        break;
      case 8:
        _localctx = SoslPrimaryContext(_localctx);
        enterOuterAlt(_localctx, 8);
        state = 1051;
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
    enterRule(_localctx, 152, RULE_methodCall);
    int _la;
    try {
      state = 1073;
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
      case TOKEN_VOID:
      case TOKEN_WHEN:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
        state = 1054;
        id();
        state = 1055;
        match(TOKEN_LPAREN);
        state = 1057;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
          state = 1056;
          expressionList();
        }

        state = 1059;
        match(TOKEN_RPAREN);
        break;
      case TOKEN_THIS:
        enterOuterAlt(_localctx, 2);
        state = 1061;
        match(TOKEN_THIS);
        state = 1062;
        match(TOKEN_LPAREN);
        state = 1064;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
          state = 1063;
          expressionList();
        }

        state = 1066;
        match(TOKEN_RPAREN);
        break;
      case TOKEN_SUPER:
        enterOuterAlt(_localctx, 3);
        state = 1067;
        match(TOKEN_SUPER);
        state = 1068;
        match(TOKEN_LPAREN);
        state = 1070;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
          state = 1069;
          expressionList();
        }

        state = 1072;
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
    enterRule(_localctx, 154, RULE_dotMethodCall);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1075;
      anyId();
      state = 1076;
      match(TOKEN_LPAREN);
      state = 1078;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
        state = 1077;
        expressionList();
      }

      state = 1080;
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
    enterRule(_localctx, 156, RULE_creator);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1082;
      createdName();
      state = 1088;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 101, context)) {
      case 1:
        state = 1083;
        noRest();
        break;
      case 2:
        state = 1084;
        classCreatorRest();
        break;
      case 3:
        state = 1085;
        arrayCreatorRest();
        break;
      case 4:
        state = 1086;
        mapCreatorRest();
        break;
      case 5:
        state = 1087;
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
    enterRule(_localctx, 158, RULE_createdName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1090;
      idCreatedNamePair();
      state = 1095;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 1091;
        match(TOKEN_DOT);
        state = 1092;
        idCreatedNamePair();
        state = 1097;
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
    enterRule(_localctx, 160, RULE_idCreatedNamePair);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1098;
      anyId();
      state = 1103;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LT) {
        state = 1099;
        match(TOKEN_LT);
        state = 1100;
        typeList();
        state = 1101;
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
    enterRule(_localctx, 162, RULE_noRest);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1105;
      match(TOKEN_LBRACE);
      state = 1106;
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
    enterRule(_localctx, 164, RULE_classCreatorRest);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1108;
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
    enterRule(_localctx, 166, RULE_arrayCreatorRest);
    try {
      state = 1119;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 105, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1110;
        match(TOKEN_LBRACK);
        state = 1111;
        expression(0);
        state = 1112;
        match(TOKEN_RBRACK);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1114;
        match(TOKEN_LBRACK);
        state = 1115;
        match(TOKEN_RBRACK);
        state = 1117;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 104, context)) {
        case 1:
          state = 1116;
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
    enterRule(_localctx, 168, RULE_mapCreatorRest);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1121;
      match(TOKEN_LBRACE);
      state = 1122;
      mapCreatorRestPair();
      state = 1127;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1123;
        match(TOKEN_COMMA);
        state = 1124;
        mapCreatorRestPair();
        state = 1129;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1130;
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
    enterRule(_localctx, 170, RULE_mapCreatorRestPair);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1132;
      expression(0);
      state = 1133;
      match(TOKEN_MAPTO);
      state = 1134;
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
    enterRule(_localctx, 172, RULE_setCreatorRest);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1136;
      match(TOKEN_LBRACE);
      state = 1137;
      expression(0);
      state = 1142;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1138;
        match(TOKEN_COMMA);

        state = 1139;
        expression(0);
        state = 1144;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1145;
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
    enterRule(_localctx, 174, RULE_arguments);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1147;
      match(TOKEN_LPAREN);
      state = 1149;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if ((((_la) & ~0x3f) == 0 && ((1 << _la) & -6177691874033652) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & -26388279066625) != 0) || ((((_la - 192)) & ~0x3f) == 0 && ((1 << (_la - 192)) & 4503601640734859) != 0)) {
        state = 1148;
        expressionList();
      }

      state = 1151;
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
    enterRule(_localctx, 176, RULE_soqlLiteral);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1153;
      match(TOKEN_LBRACK);
      state = 1154;
      query();
      state = 1155;
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
    enterRule(_localctx, 178, RULE_query);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1157;
      match(TOKEN_SELECT);
      state = 1158;
      selectList();
      state = 1159;
      match(TOKEN_FROM);
      state = 1160;
      fromNameList();
      state = 1162;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_USING) {
        state = 1161;
        usingScope();
      }

      state = 1165;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WHERE) {
        state = 1164;
        whereClause();
      }

      state = 1168;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WITH) {
        state = 1167;
        withClause();
      }

      state = 1171;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_GROUP) {
        state = 1170;
        groupByClause();
      }

      state = 1174;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ORDER) {
        state = 1173;
        orderByClause();
      }

      state = 1177;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LIMIT) {
        state = 1176;
        limitClause();
      }

      state = 1180;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_OFFSET) {
        state = 1179;
        offsetClause();
      }

      state = 1183;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ALL) {
        state = 1182;
        allRowsClause();
      }

      state = 1185;
      forClauses();
      state = 1188;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_UPDATE) {
        state = 1186;
        match(TOKEN_UPDATE);
        state = 1187;
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
    enterRule(_localctx, 180, RULE_subQuery);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1190;
      match(TOKEN_SELECT);
      state = 1191;
      subFieldList();
      state = 1192;
      match(TOKEN_FROM);
      state = 1193;
      fromNameList();
      state = 1195;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_WHERE) {
        state = 1194;
        whereClause();
      }

      state = 1198;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ORDER) {
        state = 1197;
        orderByClause();
      }

      state = 1201;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LIMIT) {
        state = 1200;
        limitClause();
      }

      state = 1203;
      forClauses();
      state = 1206;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_UPDATE) {
        state = 1204;
        match(TOKEN_UPDATE);
        state = 1205;
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
    enterRule(_localctx, 182, RULE_selectList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1208;
      selectEntry();
      state = 1213;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1209;
        match(TOKEN_COMMA);
        state = 1210;
        selectEntry();
        state = 1215;
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
    enterRule(_localctx, 184, RULE_selectEntry);
    try {
      state = 1231;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 126, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1216;
        fieldName();
        state = 1218;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 123, context)) {
        case 1:
          state = 1217;
          soqlId();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1220;
        soqlFunction();
        state = 1222;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 124, context)) {
        case 1:
          state = 1221;
          soqlId();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1224;
        match(TOKEN_LPAREN);
        state = 1225;
        subQuery();
        state = 1226;
        match(TOKEN_RPAREN);
        state = 1228;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 125, context)) {
        case 1:
          state = 1227;
          soqlId();
          break;
        }
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1230;
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
    enterRule(_localctx, 186, RULE_fieldName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1233;
      soqlId();
      state = 1238;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_DOT) {
        state = 1234;
        match(TOKEN_DOT);
        state = 1235;
        soqlId();
        state = 1240;
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
    enterRule(_localctx, 188, RULE_fromNameList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1241;
      fieldName();
      state = 1243;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 128, context)) {
      case 1:
        state = 1242;
        soqlId();
        break;
      }
      state = 1252;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1245;
        match(TOKEN_COMMA);
        state = 1246;
        fieldName();
        state = 1248;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 129, context)) {
        case 1:
          state = 1247;
          soqlId();
          break;
        }
        state = 1254;
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
    enterRule(_localctx, 190, RULE_subFieldList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1255;
      subFieldEntry();
      state = 1260;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1256;
        match(TOKEN_COMMA);
        state = 1257;
        subFieldEntry();
        state = 1262;
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
    enterRule(_localctx, 192, RULE_subFieldEntry);
    try {
      state = 1272;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 134, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1263;
        fieldName();
        state = 1265;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 132, context)) {
        case 1:
          state = 1264;
          soqlId();
          break;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1267;
        soqlFunction();
        state = 1269;
        errorHandler.sync(this);
        switch (interpreter!.adaptivePredict(tokenStream, 133, context)) {
        case 1:
          state = 1268;
          soqlId();
          break;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1271;
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

  SoqlFieldsParameterContext soqlFieldsParameter() {
    dynamic _localctx = SoqlFieldsParameterContext(context, state);
    enterRule(_localctx, 194, RULE_soqlFieldsParameter);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1274;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 90)) & ~0x3f) == 0 && ((1 << (_la - 90)) & 6291457) != 0))) {
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
    enterRule(_localctx, 196, RULE_soqlFunction);
    try {
      state = 1389;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 135, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1276;
        match(TOKEN_AVG);
        state = 1277;
        match(TOKEN_LPAREN);
        state = 1278;
        fieldName();
        state = 1279;
        match(TOKEN_RPAREN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1281;
        match(TOKEN_COUNT);
        state = 1282;
        match(TOKEN_LPAREN);
        state = 1283;
        match(TOKEN_RPAREN);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1284;
        match(TOKEN_COUNT);
        state = 1285;
        match(TOKEN_LPAREN);
        state = 1286;
        fieldName();
        state = 1287;
        match(TOKEN_RPAREN);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1289;
        match(TOKEN_COUNT_DISTINCT);
        state = 1290;
        match(TOKEN_LPAREN);
        state = 1291;
        fieldName();
        state = 1292;
        match(TOKEN_RPAREN);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1294;
        match(TOKEN_MIN);
        state = 1295;
        match(TOKEN_LPAREN);
        state = 1296;
        fieldName();
        state = 1297;
        match(TOKEN_RPAREN);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1299;
        match(TOKEN_MAX);
        state = 1300;
        match(TOKEN_LPAREN);
        state = 1301;
        fieldName();
        state = 1302;
        match(TOKEN_RPAREN);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1304;
        match(TOKEN_SUM);
        state = 1305;
        match(TOKEN_LPAREN);
        state = 1306;
        fieldName();
        state = 1307;
        match(TOKEN_RPAREN);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1309;
        match(TOKEN_TOLABEL);
        state = 1310;
        match(TOKEN_LPAREN);
        state = 1311;
        fieldName();
        state = 1312;
        match(TOKEN_RPAREN);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1314;
        match(TOKEN_FORMAT);
        state = 1315;
        match(TOKEN_LPAREN);
        state = 1316;
        fieldName();
        state = 1317;
        match(TOKEN_RPAREN);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1319;
        match(TOKEN_CALENDAR_MONTH);
        state = 1320;
        match(TOKEN_LPAREN);
        state = 1321;
        dateFieldName();
        state = 1322;
        match(TOKEN_RPAREN);
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1324;
        match(TOKEN_CALENDAR_QUARTER);
        state = 1325;
        match(TOKEN_LPAREN);
        state = 1326;
        dateFieldName();
        state = 1327;
        match(TOKEN_RPAREN);
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 1329;
        match(TOKEN_CALENDAR_YEAR);
        state = 1330;
        match(TOKEN_LPAREN);
        state = 1331;
        dateFieldName();
        state = 1332;
        match(TOKEN_RPAREN);
        break;
      case 13:
        enterOuterAlt(_localctx, 13);
        state = 1334;
        match(TOKEN_DAY_IN_MONTH);
        state = 1335;
        match(TOKEN_LPAREN);
        state = 1336;
        dateFieldName();
        state = 1337;
        match(TOKEN_RPAREN);
        break;
      case 14:
        enterOuterAlt(_localctx, 14);
        state = 1339;
        match(TOKEN_DAY_IN_WEEK);
        state = 1340;
        match(TOKEN_LPAREN);
        state = 1341;
        dateFieldName();
        state = 1342;
        match(TOKEN_RPAREN);
        break;
      case 15:
        enterOuterAlt(_localctx, 15);
        state = 1344;
        match(TOKEN_DAY_IN_YEAR);
        state = 1345;
        match(TOKEN_LPAREN);
        state = 1346;
        dateFieldName();
        state = 1347;
        match(TOKEN_RPAREN);
        break;
      case 16:
        enterOuterAlt(_localctx, 16);
        state = 1349;
        match(TOKEN_DAY_ONLY);
        state = 1350;
        match(TOKEN_LPAREN);
        state = 1351;
        dateFieldName();
        state = 1352;
        match(TOKEN_RPAREN);
        break;
      case 17:
        enterOuterAlt(_localctx, 17);
        state = 1354;
        match(TOKEN_FISCAL_MONTH);
        state = 1355;
        match(TOKEN_LPAREN);
        state = 1356;
        dateFieldName();
        state = 1357;
        match(TOKEN_RPAREN);
        break;
      case 18:
        enterOuterAlt(_localctx, 18);
        state = 1359;
        match(TOKEN_FISCAL_QUARTER);
        state = 1360;
        match(TOKEN_LPAREN);
        state = 1361;
        dateFieldName();
        state = 1362;
        match(TOKEN_RPAREN);
        break;
      case 19:
        enterOuterAlt(_localctx, 19);
        state = 1364;
        match(TOKEN_FISCAL_YEAR);
        state = 1365;
        match(TOKEN_LPAREN);
        state = 1366;
        dateFieldName();
        state = 1367;
        match(TOKEN_RPAREN);
        break;
      case 20:
        enterOuterAlt(_localctx, 20);
        state = 1369;
        match(TOKEN_HOUR_IN_DAY);
        state = 1370;
        match(TOKEN_LPAREN);
        state = 1371;
        dateFieldName();
        state = 1372;
        match(TOKEN_RPAREN);
        break;
      case 21:
        enterOuterAlt(_localctx, 21);
        state = 1374;
        match(TOKEN_WEEK_IN_MONTH);
        state = 1375;
        match(TOKEN_LPAREN);
        state = 1376;
        dateFieldName();
        state = 1377;
        match(TOKEN_RPAREN);
        break;
      case 22:
        enterOuterAlt(_localctx, 22);
        state = 1379;
        match(TOKEN_WEEK_IN_YEAR);
        state = 1380;
        match(TOKEN_LPAREN);
        state = 1381;
        dateFieldName();
        state = 1382;
        match(TOKEN_RPAREN);
        break;
      case 23:
        enterOuterAlt(_localctx, 23);
        state = 1384;
        match(TOKEN_FIELDS);
        state = 1385;
        match(TOKEN_LPAREN);
        state = 1386;
        soqlFieldsParameter();
        state = 1387;
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
    enterRule(_localctx, 198, RULE_dateFieldName);
    try {
      state = 1397;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 136, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1391;
        match(TOKEN_CONVERT_TIMEZONE);
        state = 1392;
        match(TOKEN_LPAREN);
        state = 1393;
        fieldName();
        state = 1394;
        match(TOKEN_RPAREN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1396;
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
    enterRule(_localctx, 200, RULE_typeOf);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1399;
      match(TOKEN_TYPEOF);
      state = 1400;
      fieldName();
      state = 1402; 
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      do {
        state = 1401;
        whenClause();
        state = 1404; 
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      } while (_la == TOKEN_WHEN);
      state = 1407;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ELSE) {
        state = 1406;
        elseClause();
      }

      state = 1409;
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
    enterRule(_localctx, 202, RULE_whenClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1411;
      match(TOKEN_WHEN);
      state = 1412;
      fieldName();
      state = 1413;
      match(TOKEN_THEN);
      state = 1414;
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
    enterRule(_localctx, 204, RULE_elseClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1416;
      match(TOKEN_ELSE);
      state = 1417;
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
    enterRule(_localctx, 206, RULE_fieldNameList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1419;
      fieldName();
      state = 1424;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1420;
        match(TOKEN_COMMA);
        state = 1421;
        fieldName();
        state = 1426;
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
    enterRule(_localctx, 208, RULE_usingScope);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1427;
      match(TOKEN_USING);
      state = 1428;
      match(TOKEN_SCOPE);
      state = 1429;
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
    enterRule(_localctx, 210, RULE_whereClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1431;
      match(TOKEN_WHERE);
      state = 1432;
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
    enterRule(_localctx, 212, RULE_logicalExpression);
    int _la;
    try {
      state = 1452;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 142, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1434;
        conditionalExpression();
        state = 1439;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SOQLAND) {
          state = 1435;
          match(TOKEN_SOQLAND);
          state = 1436;
          conditionalExpression();
          state = 1441;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1442;
        conditionalExpression();
        state = 1447;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_SOQLOR) {
          state = 1443;
          match(TOKEN_SOQLOR);
          state = 1444;
          conditionalExpression();
          state = 1449;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1450;
        match(TOKEN_NOT);
        state = 1451;
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
    enterRule(_localctx, 214, RULE_conditionalExpression);
    try {
      state = 1459;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 1);
        state = 1454;
        match(TOKEN_LPAREN);
        state = 1455;
        logicalExpression();
        state = 1456;
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
      case TOKEN_VOID:
      case TOKEN_WHEN:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
        state = 1458;
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
    enterRule(_localctx, 216, RULE_fieldExpression);
    try {
      state = 1469;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 144, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1461;
        fieldName();
        state = 1462;
        comparisonOperator();
        state = 1463;
        value();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1465;
        soqlFunction();
        state = 1466;
        comparisonOperator();
        state = 1467;
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
    enterRule(_localctx, 218, RULE_comparisonOperator);
    try {
      state = 1486;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 145, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1471;
        match(TOKEN_ASSIGN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1472;
        match(TOKEN_NOTEQUAL);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1473;
        match(TOKEN_LT);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1474;
        match(TOKEN_GT);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1475;
        match(TOKEN_LT);
        state = 1476;
        match(TOKEN_ASSIGN);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1477;
        match(TOKEN_GT);
        state = 1478;
        match(TOKEN_ASSIGN);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1479;
        match(TOKEN_LESSANDGREATER);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1480;
        match(TOKEN_LIKE);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1481;
        match(TOKEN_IN);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1482;
        match(TOKEN_NOT);
        state = 1483;
        match(TOKEN_IN);
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1484;
        match(TOKEN_INCLUDES);
        break;
      case 12:
        enterOuterAlt(_localctx, 12);
        state = 1485;
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
    enterRule(_localctx, 220, RULE_value);
    int _la;
    try {
      state = 1508;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 148, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1488;
        match(TOKEN_NULL);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1489;
        match(TOKEN_BooleanLiteral);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1490;
        signedNumber();
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1491;
        match(TOKEN_StringLiteral);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1492;
        match(TOKEN_DateLiteral);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1493;
        match(TOKEN_DateTimeLiteral);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1494;
        dateFormula();
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1495;
        match(TOKEN_IntegralCurrencyLiteral);
        state = 1500;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_DOT) {
          state = 1496;
          match(TOKEN_DOT);
          state = 1498;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
          if (_la == TOKEN_IntegerLiteral) {
            state = 1497;
            match(TOKEN_IntegerLiteral);
          }

        }

        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1502;
        match(TOKEN_LPAREN);
        state = 1503;
        subQuery();
        state = 1504;
        match(TOKEN_RPAREN);
        break;
      case 10:
        enterOuterAlt(_localctx, 10);
        state = 1506;
        valueList();
        break;
      case 11:
        enterOuterAlt(_localctx, 11);
        state = 1507;
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
    enterRule(_localctx, 222, RULE_valueList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1510;
      match(TOKEN_LPAREN);
      state = 1511;
      value();
      state = 1516;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1512;
        match(TOKEN_COMMA);
        state = 1513;
        value();
        state = 1518;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1519;
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
    enterRule(_localctx, 224, RULE_signedNumber);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1522;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ADD || _la == TOKEN_SUB) {
        state = 1521;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
      }

      state = 1524;
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
    enterRule(_localctx, 226, RULE_withClause);
    try {
      state = 1538;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 151, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1526;
        match(TOKEN_WITH);
        state = 1527;
        match(TOKEN_DATA);
        state = 1528;
        match(TOKEN_CATEGORY);
        state = 1529;
        filteringExpression();
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1530;
        match(TOKEN_WITH);
        state = 1531;
        match(TOKEN_SECURITY_ENFORCED);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1532;
        match(TOKEN_WITH);
        state = 1533;
        match(TOKEN_SYSTEM_MODE);
        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1534;
        match(TOKEN_WITH);
        state = 1535;
        match(TOKEN_USER_MODE);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1536;
        match(TOKEN_WITH);
        state = 1537;
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
    enterRule(_localctx, 228, RULE_filteringExpression);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1540;
      dataCategorySelection();
      state = 1545;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_AND) {
        state = 1541;
        match(TOKEN_AND);
        state = 1542;
        dataCategorySelection();
        state = 1547;
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
    enterRule(_localctx, 230, RULE_dataCategorySelection);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1548;
      soqlId();
      state = 1549;
      filteringSelector();
      state = 1550;
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
    enterRule(_localctx, 232, RULE_dataCategoryName);
    int _la;
    try {
      state = 1564;
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
      case TOKEN_VOID:
      case TOKEN_WHEN:
      case TOKEN_WITH:
      case TOKEN_WITHOUT:
      case TOKEN_SYSTEM:
      case TOKEN_USER:
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
      case TOKEN_SYSTEM_MODE:
      case TOKEN_USER_MODE:
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
      case TOKEN_N_DAYS_AGO_N:
      case TOKEN_NEXT_N_WEEKS_N:
      case TOKEN_LAST_N_WEEKS_N:
      case TOKEN_N_WEEKS_AGO_N:
      case TOKEN_NEXT_N_MONTHS_N:
      case TOKEN_LAST_N_MONTHS_N:
      case TOKEN_N_MONTHS_AGO_N:
      case TOKEN_THIS_QUARTER:
      case TOKEN_LAST_QUARTER:
      case TOKEN_NEXT_QUARTER:
      case TOKEN_NEXT_N_QUARTERS_N:
      case TOKEN_LAST_N_QUARTERS_N:
      case TOKEN_N_QUARTERS_AGO_N:
      case TOKEN_THIS_YEAR:
      case TOKEN_LAST_YEAR:
      case TOKEN_NEXT_YEAR:
      case TOKEN_NEXT_N_YEARS_N:
      case TOKEN_LAST_N_YEARS_N:
      case TOKEN_N_YEARS_AGO_N:
      case TOKEN_THIS_FISCAL_QUARTER:
      case TOKEN_LAST_FISCAL_QUARTER:
      case TOKEN_NEXT_FISCAL_QUARTER:
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
      case TOKEN_THIS_FISCAL_YEAR:
      case TOKEN_LAST_FISCAL_YEAR:
      case TOKEN_NEXT_FISCAL_YEAR:
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
      case TOKEN_LAST_N_FISCAL_YEARS_N:
      case TOKEN_N_FISCAL_YEARS_AGO_N:
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
        state = 1552;
        soqlId();
        break;
      case TOKEN_LPAREN:
        enterOuterAlt(_localctx, 2);
        state = 1553;
        match(TOKEN_LPAREN);
        state = 1554;
        soqlId();
        state = 1559;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 1555;
          match(TOKEN_COMMA);
          state = 1556;
          soqlId();
          state = 1561;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 1562;
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
    enterRule(_localctx, 234, RULE_filteringSelector);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1566;
      _la = tokenStream.LA(1)!;
      if (!(((((_la - 99)) & ~0x3f) == 0 && ((1 << (_la - 99)) & 15) != 0))) {
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
    enterRule(_localctx, 236, RULE_groupByClause);
    int _la;
    try {
      state = 1603;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 158, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1568;
        match(TOKEN_GROUP);
        state = 1569;
        match(TOKEN_BY);
        state = 1570;
        selectList();
        state = 1573;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_HAVING) {
          state = 1571;
          match(TOKEN_HAVING);
          state = 1572;
          logicalExpression();
        }

        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1575;
        match(TOKEN_GROUP);
        state = 1576;
        match(TOKEN_BY);
        state = 1577;
        match(TOKEN_ROLLUP);
        state = 1578;
        match(TOKEN_LPAREN);
        state = 1579;
        fieldName();
        state = 1584;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 1580;
          match(TOKEN_COMMA);
          state = 1581;
          fieldName();
          state = 1586;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 1587;
        match(TOKEN_RPAREN);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1589;
        match(TOKEN_GROUP);
        state = 1590;
        match(TOKEN_BY);
        state = 1591;
        match(TOKEN_CUBE);
        state = 1592;
        match(TOKEN_LPAREN);
        state = 1593;
        fieldName();
        state = 1598;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        while (_la == TOKEN_COMMA) {
          state = 1594;
          match(TOKEN_COMMA);
          state = 1595;
          fieldName();
          state = 1600;
          errorHandler.sync(this);
          _la = tokenStream.LA(1)!;
        }
        state = 1601;
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
    enterRule(_localctx, 238, RULE_orderByClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1605;
      match(TOKEN_ORDER);
      state = 1606;
      match(TOKEN_BY);
      state = 1607;
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
    enterRule(_localctx, 240, RULE_fieldOrderList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1609;
      fieldOrder();
      state = 1614;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 1610;
        match(TOKEN_COMMA);
        state = 1611;
        fieldOrder();
        state = 1616;
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
    enterRule(_localctx, 242, RULE_fieldOrder);
    int _la;
    try {
      state = 1633;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 164, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1617;
        fieldName();
        state = 1619;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASC || _la == TOKEN_DESC) {
          state = 1618;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_ASC || _la == TOKEN_DESC)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1623;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_NULLS) {
          state = 1621;
          match(TOKEN_NULLS);
          state = 1622;
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
        state = 1625;
        soqlFunction();
        state = 1627;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ASC || _la == TOKEN_DESC) {
          state = 1626;
          _la = tokenStream.LA(1)!;
          if (!(_la == TOKEN_ASC || _la == TOKEN_DESC)) {
          errorHandler.recoverInline(this);
          } else {
            if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
            errorHandler.reportMatch(this);
            consume();
          }
        }

        state = 1631;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_NULLS) {
          state = 1629;
          match(TOKEN_NULLS);
          state = 1630;
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
    enterRule(_localctx, 244, RULE_limitClause);
    try {
      state = 1639;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 165, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1635;
        match(TOKEN_LIMIT);
        state = 1636;
        match(TOKEN_IntegerLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1637;
        match(TOKEN_LIMIT);
        state = 1638;
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
    enterRule(_localctx, 246, RULE_offsetClause);
    try {
      state = 1645;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 166, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1641;
        match(TOKEN_OFFSET);
        state = 1642;
        match(TOKEN_IntegerLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1643;
        match(TOKEN_OFFSET);
        state = 1644;
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
    enterRule(_localctx, 248, RULE_allRowsClause);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1647;
      match(TOKEN_ALL);
      state = 1648;
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
    enterRule(_localctx, 250, RULE_forClauses);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1654;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_FOR) {
        state = 1650;
        match(TOKEN_FOR);
        state = 1651;
        _la = tokenStream.LA(1)!;
        if (!(((((_la - 46)) & ~0x3f) == 0 && ((1 << (_la - 46)) & 1152991873351024641) != 0))) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
        state = 1656;
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
    enterRule(_localctx, 252, RULE_boundExpression);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1657;
      match(TOKEN_COLON);
      state = 1658;
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
    enterRule(_localctx, 254, RULE_dateFormula);
    try {
      state = 1746;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_YESTERDAY:
        enterOuterAlt(_localctx, 1);
        state = 1660;
        match(TOKEN_YESTERDAY);
        break;
      case TOKEN_TODAY:
        enterOuterAlt(_localctx, 2);
        state = 1661;
        match(TOKEN_TODAY);
        break;
      case TOKEN_TOMORROW:
        enterOuterAlt(_localctx, 3);
        state = 1662;
        match(TOKEN_TOMORROW);
        break;
      case TOKEN_LAST_WEEK:
        enterOuterAlt(_localctx, 4);
        state = 1663;
        match(TOKEN_LAST_WEEK);
        break;
      case TOKEN_THIS_WEEK:
        enterOuterAlt(_localctx, 5);
        state = 1664;
        match(TOKEN_THIS_WEEK);
        break;
      case TOKEN_NEXT_WEEK:
        enterOuterAlt(_localctx, 6);
        state = 1665;
        match(TOKEN_NEXT_WEEK);
        break;
      case TOKEN_LAST_MONTH:
        enterOuterAlt(_localctx, 7);
        state = 1666;
        match(TOKEN_LAST_MONTH);
        break;
      case TOKEN_THIS_MONTH:
        enterOuterAlt(_localctx, 8);
        state = 1667;
        match(TOKEN_THIS_MONTH);
        break;
      case TOKEN_NEXT_MONTH:
        enterOuterAlt(_localctx, 9);
        state = 1668;
        match(TOKEN_NEXT_MONTH);
        break;
      case TOKEN_LAST_90_DAYS:
        enterOuterAlt(_localctx, 10);
        state = 1669;
        match(TOKEN_LAST_90_DAYS);
        break;
      case TOKEN_NEXT_90_DAYS:
        enterOuterAlt(_localctx, 11);
        state = 1670;
        match(TOKEN_NEXT_90_DAYS);
        break;
      case TOKEN_LAST_N_DAYS_N:
        enterOuterAlt(_localctx, 12);
        state = 1671;
        match(TOKEN_LAST_N_DAYS_N);
        state = 1672;
        match(TOKEN_COLON);
        state = 1673;
        signedInteger();
        break;
      case TOKEN_NEXT_N_DAYS_N:
        enterOuterAlt(_localctx, 13);
        state = 1674;
        match(TOKEN_NEXT_N_DAYS_N);
        state = 1675;
        match(TOKEN_COLON);
        state = 1676;
        signedInteger();
        break;
      case TOKEN_N_DAYS_AGO_N:
        enterOuterAlt(_localctx, 14);
        state = 1677;
        match(TOKEN_N_DAYS_AGO_N);
        state = 1678;
        match(TOKEN_COLON);
        state = 1679;
        signedInteger();
        break;
      case TOKEN_NEXT_N_WEEKS_N:
        enterOuterAlt(_localctx, 15);
        state = 1680;
        match(TOKEN_NEXT_N_WEEKS_N);
        state = 1681;
        match(TOKEN_COLON);
        state = 1682;
        signedInteger();
        break;
      case TOKEN_LAST_N_WEEKS_N:
        enterOuterAlt(_localctx, 16);
        state = 1683;
        match(TOKEN_LAST_N_WEEKS_N);
        state = 1684;
        match(TOKEN_COLON);
        state = 1685;
        signedInteger();
        break;
      case TOKEN_N_WEEKS_AGO_N:
        enterOuterAlt(_localctx, 17);
        state = 1686;
        match(TOKEN_N_WEEKS_AGO_N);
        state = 1687;
        match(TOKEN_COLON);
        state = 1688;
        signedInteger();
        break;
      case TOKEN_NEXT_N_MONTHS_N:
        enterOuterAlt(_localctx, 18);
        state = 1689;
        match(TOKEN_NEXT_N_MONTHS_N);
        state = 1690;
        match(TOKEN_COLON);
        state = 1691;
        signedInteger();
        break;
      case TOKEN_LAST_N_MONTHS_N:
        enterOuterAlt(_localctx, 19);
        state = 1692;
        match(TOKEN_LAST_N_MONTHS_N);
        state = 1693;
        match(TOKEN_COLON);
        state = 1694;
        signedInteger();
        break;
      case TOKEN_N_MONTHS_AGO_N:
        enterOuterAlt(_localctx, 20);
        state = 1695;
        match(TOKEN_N_MONTHS_AGO_N);
        state = 1696;
        match(TOKEN_COLON);
        state = 1697;
        signedInteger();
        break;
      case TOKEN_THIS_QUARTER:
        enterOuterAlt(_localctx, 21);
        state = 1698;
        match(TOKEN_THIS_QUARTER);
        break;
      case TOKEN_LAST_QUARTER:
        enterOuterAlt(_localctx, 22);
        state = 1699;
        match(TOKEN_LAST_QUARTER);
        break;
      case TOKEN_NEXT_QUARTER:
        enterOuterAlt(_localctx, 23);
        state = 1700;
        match(TOKEN_NEXT_QUARTER);
        break;
      case TOKEN_NEXT_N_QUARTERS_N:
        enterOuterAlt(_localctx, 24);
        state = 1701;
        match(TOKEN_NEXT_N_QUARTERS_N);
        state = 1702;
        match(TOKEN_COLON);
        state = 1703;
        signedInteger();
        break;
      case TOKEN_LAST_N_QUARTERS_N:
        enterOuterAlt(_localctx, 25);
        state = 1704;
        match(TOKEN_LAST_N_QUARTERS_N);
        state = 1705;
        match(TOKEN_COLON);
        state = 1706;
        signedInteger();
        break;
      case TOKEN_N_QUARTERS_AGO_N:
        enterOuterAlt(_localctx, 26);
        state = 1707;
        match(TOKEN_N_QUARTERS_AGO_N);
        state = 1708;
        match(TOKEN_COLON);
        state = 1709;
        signedInteger();
        break;
      case TOKEN_THIS_YEAR:
        enterOuterAlt(_localctx, 27);
        state = 1710;
        match(TOKEN_THIS_YEAR);
        break;
      case TOKEN_LAST_YEAR:
        enterOuterAlt(_localctx, 28);
        state = 1711;
        match(TOKEN_LAST_YEAR);
        break;
      case TOKEN_NEXT_YEAR:
        enterOuterAlt(_localctx, 29);
        state = 1712;
        match(TOKEN_NEXT_YEAR);
        break;
      case TOKEN_NEXT_N_YEARS_N:
        enterOuterAlt(_localctx, 30);
        state = 1713;
        match(TOKEN_NEXT_N_YEARS_N);
        state = 1714;
        match(TOKEN_COLON);
        state = 1715;
        signedInteger();
        break;
      case TOKEN_LAST_N_YEARS_N:
        enterOuterAlt(_localctx, 31);
        state = 1716;
        match(TOKEN_LAST_N_YEARS_N);
        state = 1717;
        match(TOKEN_COLON);
        state = 1718;
        signedInteger();
        break;
      case TOKEN_N_YEARS_AGO_N:
        enterOuterAlt(_localctx, 32);
        state = 1719;
        match(TOKEN_N_YEARS_AGO_N);
        state = 1720;
        match(TOKEN_COLON);
        state = 1721;
        signedInteger();
        break;
      case TOKEN_THIS_FISCAL_QUARTER:
        enterOuterAlt(_localctx, 33);
        state = 1722;
        match(TOKEN_THIS_FISCAL_QUARTER);
        break;
      case TOKEN_LAST_FISCAL_QUARTER:
        enterOuterAlt(_localctx, 34);
        state = 1723;
        match(TOKEN_LAST_FISCAL_QUARTER);
        break;
      case TOKEN_NEXT_FISCAL_QUARTER:
        enterOuterAlt(_localctx, 35);
        state = 1724;
        match(TOKEN_NEXT_FISCAL_QUARTER);
        break;
      case TOKEN_NEXT_N_FISCAL_QUARTERS_N:
        enterOuterAlt(_localctx, 36);
        state = 1725;
        match(TOKEN_NEXT_N_FISCAL_QUARTERS_N);
        state = 1726;
        match(TOKEN_COLON);
        state = 1727;
        signedInteger();
        break;
      case TOKEN_LAST_N_FISCAL_QUARTERS_N:
        enterOuterAlt(_localctx, 37);
        state = 1728;
        match(TOKEN_LAST_N_FISCAL_QUARTERS_N);
        state = 1729;
        match(TOKEN_COLON);
        state = 1730;
        signedInteger();
        break;
      case TOKEN_N_FISCAL_QUARTERS_AGO_N:
        enterOuterAlt(_localctx, 38);
        state = 1731;
        match(TOKEN_N_FISCAL_QUARTERS_AGO_N);
        state = 1732;
        match(TOKEN_COLON);
        state = 1733;
        signedInteger();
        break;
      case TOKEN_THIS_FISCAL_YEAR:
        enterOuterAlt(_localctx, 39);
        state = 1734;
        match(TOKEN_THIS_FISCAL_YEAR);
        break;
      case TOKEN_LAST_FISCAL_YEAR:
        enterOuterAlt(_localctx, 40);
        state = 1735;
        match(TOKEN_LAST_FISCAL_YEAR);
        break;
      case TOKEN_NEXT_FISCAL_YEAR:
        enterOuterAlt(_localctx, 41);
        state = 1736;
        match(TOKEN_NEXT_FISCAL_YEAR);
        break;
      case TOKEN_NEXT_N_FISCAL_YEARS_N:
        enterOuterAlt(_localctx, 42);
        state = 1737;
        match(TOKEN_NEXT_N_FISCAL_YEARS_N);
        state = 1738;
        match(TOKEN_COLON);
        state = 1739;
        signedInteger();
        break;
      case TOKEN_LAST_N_FISCAL_YEARS_N:
        enterOuterAlt(_localctx, 43);
        state = 1740;
        match(TOKEN_LAST_N_FISCAL_YEARS_N);
        state = 1741;
        match(TOKEN_COLON);
        state = 1742;
        signedInteger();
        break;
      case TOKEN_N_FISCAL_YEARS_AGO_N:
        enterOuterAlt(_localctx, 44);
        state = 1743;
        match(TOKEN_N_FISCAL_YEARS_AGO_N);
        state = 1744;
        match(TOKEN_COLON);
        state = 1745;
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
    enterRule(_localctx, 256, RULE_signedInteger);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1749;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_ADD || _la == TOKEN_SUB) {
        state = 1748;
        _la = tokenStream.LA(1)!;
        if (!(_la == TOKEN_ADD || _la == TOKEN_SUB)) {
        errorHandler.recoverInline(this);
        } else {
          if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
          errorHandler.reportMatch(this);
          consume();
        }
      }

      state = 1751;
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
    enterRule(_localctx, 258, RULE_soqlId);
    try {
      enterOuterAlt(_localctx, 1);
      state = 1753;
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
    enterRule(_localctx, 260, RULE_soslLiteral);
    try {
      state = 1765;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_FindLiteral:
        enterOuterAlt(_localctx, 1);
        state = 1755;
        match(TOKEN_FindLiteral);
        state = 1756;
        soslClauses();
        state = 1757;
        match(TOKEN_RBRACK);
        break;
      case TOKEN_LBRACK:
        enterOuterAlt(_localctx, 2);
        state = 1759;
        match(TOKEN_LBRACK);
        state = 1760;
        match(TOKEN_FIND);
        state = 1761;
        boundExpression();
        state = 1762;
        soslClauses();
        state = 1763;
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
    enterRule(_localctx, 262, RULE_soslClauses);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1769;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_IN) {
        state = 1767;
        match(TOKEN_IN);
        state = 1768;
        searchGroup();
      }

      state = 1773;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_RETURNING) {
        state = 1771;
        match(TOKEN_RETURNING);
        state = 1772;
        fieldSpecList();
      }

      state = 1778;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_WITH) {
        state = 1775;
        soslWithClause();
        state = 1780;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 1782;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LIMIT) {
        state = 1781;
        limitClause();
      }

      state = 1786;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_UPDATE) {
        state = 1784;
        match(TOKEN_UPDATE);
        state = 1785;
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

  SoslWithClauseContext soslWithClause() {
    dynamic _localctx = SoslWithClauseContext(context, state);
    enterRule(_localctx, 264, RULE_soslWithClause);
    int _la;
    try {
      state = 1828;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 177, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 1788;
        match(TOKEN_WITH);
        state = 1789;
        match(TOKEN_DIVISION);
        state = 1790;
        match(TOKEN_ASSIGN);
        state = 1791;
        match(TOKEN_StringLiteral);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 1792;
        match(TOKEN_WITH);
        state = 1793;
        match(TOKEN_DATA);
        state = 1794;
        match(TOKEN_CATEGORY);
        state = 1795;
        filteringExpression();
        break;
      case 3:
        enterOuterAlt(_localctx, 3);
        state = 1796;
        match(TOKEN_WITH);
        state = 1797;
        match(TOKEN_SNIPPET);
        state = 1803;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_LPAREN) {
          state = 1798;
          match(TOKEN_LPAREN);
          state = 1799;
          match(TOKEN_TARGET_LENGTH);
          state = 1800;
          match(TOKEN_ASSIGN);
          state = 1801;
          match(TOKEN_IntegerLiteral);
          state = 1802;
          match(TOKEN_RPAREN);
        }

        break;
      case 4:
        enterOuterAlt(_localctx, 4);
        state = 1805;
        match(TOKEN_WITH);
        state = 1806;
        match(TOKEN_NETWORK);
        state = 1807;
        match(TOKEN_IN);
        state = 1808;
        match(TOKEN_LPAREN);
        state = 1809;
        networkList();
        state = 1810;
        match(TOKEN_RPAREN);
        break;
      case 5:
        enterOuterAlt(_localctx, 5);
        state = 1812;
        match(TOKEN_WITH);
        state = 1813;
        match(TOKEN_NETWORK);
        state = 1814;
        match(TOKEN_ASSIGN);
        state = 1815;
        match(TOKEN_StringLiteral);
        break;
      case 6:
        enterOuterAlt(_localctx, 6);
        state = 1816;
        match(TOKEN_WITH);
        state = 1817;
        match(TOKEN_PRICEBOOKID);
        state = 1818;
        match(TOKEN_ASSIGN);
        state = 1819;
        match(TOKEN_StringLiteral);
        break;
      case 7:
        enterOuterAlt(_localctx, 7);
        state = 1820;
        match(TOKEN_WITH);
        state = 1821;
        match(TOKEN_METADATA);
        state = 1822;
        match(TOKEN_ASSIGN);
        state = 1823;
        match(TOKEN_StringLiteral);
        break;
      case 8:
        enterOuterAlt(_localctx, 8);
        state = 1824;
        match(TOKEN_WITH);
        state = 1825;
        match(TOKEN_USER_MODE);
        break;
      case 9:
        enterOuterAlt(_localctx, 9);
        state = 1826;
        match(TOKEN_WITH);
        state = 1827;
        match(TOKEN_SYSTEM_MODE);
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

  SearchGroupContext searchGroup() {
    dynamic _localctx = SearchGroupContext(context, state);
    enterRule(_localctx, 266, RULE_searchGroup);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1830;
      _la = tokenStream.LA(1)!;
      if (!(_la == TOKEN_ALL || ((((_la - 175)) & ~0x3f) == 0 && ((1 << (_la - 175)) & 15) != 0))) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
      state = 1831;
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
    enterRule(_localctx, 268, RULE_fieldSpecList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1833;
      fieldSpec();
      state = 1838;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 178, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1834;
          match(TOKEN_COMMA);
          state = 1835;
          fieldSpecList(); 
        }
        state = 1840;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 178, context);
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
    enterRule(_localctx, 270, RULE_fieldSpec);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1841;
      soslId();
      state = 1867;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_LPAREN) {
        state = 1842;
        match(TOKEN_LPAREN);
        state = 1843;
        fieldList();
        state = 1846;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_WHERE) {
          state = 1844;
          match(TOKEN_WHERE);
          state = 1845;
          logicalExpression();
        }

        state = 1852;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_USING) {
          state = 1848;
          match(TOKEN_USING);
          state = 1849;
          match(TOKEN_LISTVIEW);
          state = 1850;
          match(TOKEN_ASSIGN);
          state = 1851;
          soslId();
        }

        state = 1857;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_ORDER) {
          state = 1854;
          match(TOKEN_ORDER);
          state = 1855;
          match(TOKEN_BY);
          state = 1856;
          fieldOrderList();
        }

        state = 1860;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_LIMIT) {
          state = 1859;
          limitClause();
        }

        state = 1863;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
        if (_la == TOKEN_OFFSET) {
          state = 1862;
          offsetClause();
        }

        state = 1865;
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
    enterRule(_localctx, 272, RULE_fieldList);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1869;
      soslId();
      state = 1874;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 185, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1870;
          match(TOKEN_COMMA);
          state = 1871;
          fieldList(); 
        }
        state = 1876;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 185, context);
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
    enterRule(_localctx, 274, RULE_updateList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1877;
      updateType();
      state = 1880;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMA) {
        state = 1878;
        match(TOKEN_COMMA);
        state = 1879;
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
    enterRule(_localctx, 276, RULE_updateType);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1882;
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
    enterRule(_localctx, 278, RULE_networkList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1884;
      match(TOKEN_StringLiteral);
      state = 1887;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      if (_la == TOKEN_COMMA) {
        state = 1885;
        match(TOKEN_COMMA);
        state = 1886;
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
    enterRule(_localctx, 280, RULE_soslId);
    try {
      int _alt;
      enterOuterAlt(_localctx, 1);
      state = 1889;
      id();
      state = 1894;
      errorHandler.sync(this);
      _alt = interpreter!.adaptivePredict(tokenStream, 188, context);
      while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
        if (_alt == 1) {
          state = 1890;
          match(TOKEN_DOT);
          state = 1891;
          soslId(); 
        }
        state = 1896;
        errorHandler.sync(this);
        _alt = interpreter!.adaptivePredict(tokenStream, 188, context);
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
    enterRule(_localctx, 282, RULE_id);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1897;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & -114265319982170100) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_Identifier)) {
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
    enterRule(_localctx, 284, RULE_anyId);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 1899;
      _la = tokenStream.LA(1)!;
      if (!((((_la) & ~0x3f) == 0 && ((1 << _la) & -8589934594) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1 << (_la - 64)) & -1) != 0) || ((((_la - 128)) & ~0x3f) == 0 && ((1 << (_la - 128)) & 1152895116327780351) != 0) || _la == TOKEN_Identifier)) {
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
    case 74:
      return _expression_sempred(_localctx as ExpressionContext?, predIndex);
    }
    return true;
  }
  bool _expression_sempred(dynamic _localctx, int predIndex) {
    switch (predIndex) {
      case 0: return precpred(context, 14);
      case 1: return precpred(context, 13);
      case 2: return precpred(context, 12);
      case 3: return precpred(context, 11);
      case 4: return precpred(context, 9);
      case 5: return precpred(context, 8);
      case 6: return precpred(context, 7);
      case 7: return precpred(context, 6);
      case 8: return precpred(context, 5);
      case 9: return precpred(context, 4);
      case 10: return precpred(context, 3);
      case 11: return precpred(context, 2);
      case 12: return precpred(context, 1);
      case 13: return precpred(context, 23);
      case 14: return precpred(context, 22);
      case 15: return precpred(context, 17);
      case 16: return precpred(context, 10);
    }
    return true;
  }

  static const List<int> _serializedATN = [
      4,1,250,1902,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
      6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
      2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,
      20,2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,
      7,27,2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,
      34,7,34,2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,
      2,41,7,41,2,42,7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,
      47,2,48,7,48,2,49,7,49,2,50,7,50,2,51,7,51,2,52,7,52,2,53,7,53,2,54,
      7,54,2,55,7,55,2,56,7,56,2,57,7,57,2,58,7,58,2,59,7,59,2,60,7,60,2,
      61,7,61,2,62,7,62,2,63,7,63,2,64,7,64,2,65,7,65,2,66,7,66,2,67,7,67,
      2,68,7,68,2,69,7,69,2,70,7,70,2,71,7,71,2,72,7,72,2,73,7,73,2,74,7,
      74,2,75,7,75,2,76,7,76,2,77,7,77,2,78,7,78,2,79,7,79,2,80,7,80,2,81,
      7,81,2,82,7,82,2,83,7,83,2,84,7,84,2,85,7,85,2,86,7,86,2,87,7,87,2,
      88,7,88,2,89,7,89,2,90,7,90,2,91,7,91,2,92,7,92,2,93,7,93,2,94,7,94,
      2,95,7,95,2,96,7,96,2,97,7,97,2,98,7,98,2,99,7,99,2,100,7,100,2,101,
      7,101,2,102,7,102,2,103,7,103,2,104,7,104,2,105,7,105,2,106,7,106,
      2,107,7,107,2,108,7,108,2,109,7,109,2,110,7,110,2,111,7,111,2,112,
      7,112,2,113,7,113,2,114,7,114,2,115,7,115,2,116,7,116,2,117,7,117,
      2,118,7,118,2,119,7,119,2,120,7,120,2,121,7,121,2,122,7,122,2,123,
      7,123,2,124,7,124,2,125,7,125,2,126,7,126,2,127,7,127,2,128,7,128,
      2,129,7,129,2,130,7,130,2,131,7,131,2,132,7,132,2,133,7,133,2,134,
      7,134,2,135,7,135,2,136,7,136,2,137,7,137,2,138,7,138,2,139,7,139,
      2,140,7,140,2,141,7,141,2,142,7,142,1,0,1,0,1,0,1,0,1,0,1,0,1,0,1,
      0,5,0,295,8,0,10,0,12,0,298,9,0,1,0,1,0,1,0,1,0,1,1,1,1,1,1,1,2,1,
      2,1,2,1,3,5,3,311,8,3,10,3,12,3,314,9,3,1,3,5,3,317,8,3,10,3,12,3,
      320,9,3,1,3,1,3,5,3,324,8,3,10,3,12,3,327,9,3,1,3,5,3,330,8,3,10,3,
      12,3,333,9,3,1,3,1,3,5,3,337,8,3,10,3,12,3,340,9,3,1,3,5,3,343,8,3,
      10,3,12,3,346,9,3,1,3,3,3,349,8,3,1,4,1,4,1,4,1,4,3,4,355,8,4,1,4,
      1,4,3,4,359,8,4,1,4,1,4,1,5,1,5,1,5,1,5,3,5,367,8,5,1,5,1,5,1,6,1,
      6,1,6,5,6,374,8,6,10,6,12,6,377,9,6,1,7,1,7,1,7,1,7,3,7,383,8,7,1,
      7,1,7,1,8,1,8,1,8,5,8,390,8,8,10,8,12,8,393,9,8,1,9,1,9,1,9,5,9,398,
      8,9,10,9,12,9,401,9,9,1,9,1,9,1,10,1,10,5,10,407,8,10,10,10,12,10,
      410,9,10,1,10,1,10,1,11,1,11,5,11,416,8,11,10,11,12,11,419,9,11,1,
      11,1,11,1,12,1,12,3,12,425,8,12,1,12,1,12,5,12,429,8,12,10,12,12,12,
      432,9,12,1,12,5,12,435,8,12,10,12,12,12,438,9,12,1,12,1,12,3,12,442,
      8,12,3,12,444,8,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
      13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,1,13,3,13,465,8,13,1,14,
      1,14,1,14,1,14,1,14,1,14,1,14,3,14,474,8,14,1,15,1,15,3,15,478,8,15,
      1,15,1,15,1,15,1,15,3,15,484,8,15,1,16,1,16,1,16,1,16,1,17,1,17,1,
      17,1,17,1,18,1,18,1,18,1,18,5,18,498,8,18,10,18,12,18,501,9,18,1,18,
      1,18,1,19,5,19,506,8,19,10,19,12,19,509,9,19,1,19,5,19,512,8,19,10,
      19,12,19,515,9,19,1,19,1,19,3,19,519,8,19,1,19,1,19,1,19,1,19,1,20,
      1,20,1,20,5,20,528,8,20,10,20,12,20,531,9,20,1,21,1,21,1,21,3,21,536,
      8,21,1,22,1,22,1,22,1,22,5,22,542,8,22,10,22,12,22,545,9,22,1,22,3,
      22,548,8,22,3,22,550,8,22,1,22,1,22,1,23,1,23,1,23,5,23,557,8,23,10,
      23,12,23,560,9,23,1,23,1,23,1,24,1,24,5,24,566,8,24,10,24,12,24,569,
      9,24,1,25,1,25,3,25,573,8,25,1,25,1,25,3,25,577,8,25,1,25,1,25,3,25,
      581,8,25,1,25,1,25,3,25,585,8,25,3,25,587,8,25,1,26,1,26,1,26,1,26,
      1,27,1,27,3,27,595,8,27,1,27,1,27,1,28,1,28,1,28,5,28,602,8,28,10,
      28,12,28,605,9,28,1,29,5,29,608,8,29,10,29,12,29,611,9,29,1,29,1,29,
      1,29,1,30,1,30,1,30,5,30,619,8,30,10,30,12,30,622,9,30,1,31,1,31,1,
      32,1,32,1,32,1,32,1,32,3,32,631,8,32,1,32,3,32,634,8,32,1,33,1,33,
      3,33,638,8,33,1,33,5,33,641,8,33,10,33,12,33,644,9,33,1,34,1,34,1,
      34,1,34,1,35,1,35,1,35,3,35,653,8,35,1,36,1,36,1,36,1,36,5,36,659,
      8,36,10,36,12,36,662,9,36,3,36,664,8,36,1,36,3,36,667,8,36,1,36,1,
      36,1,37,1,37,5,37,673,8,37,10,37,12,37,676,9,37,1,37,1,37,1,38,1,38,
      1,38,1,39,5,39,684,8,39,10,39,12,39,687,9,39,1,39,1,39,1,39,1,40,1,
      40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,1,40,
      1,40,1,40,1,40,1,40,1,40,3,40,712,8,40,1,41,1,41,1,41,1,41,1,41,3,
      41,719,8,41,1,42,1,42,1,42,1,42,1,42,4,42,726,8,42,11,42,12,42,727,
      1,42,1,42,1,43,1,43,1,43,1,43,1,44,1,44,1,44,1,44,5,44,740,8,44,10,
      44,12,44,743,9,44,1,44,1,44,1,44,3,44,748,8,44,1,45,3,45,751,8,45,
      1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,1,45,3,45,762,8,45,1,46,1,
      46,1,46,1,46,1,46,1,46,3,46,770,8,46,1,47,1,47,1,47,1,47,3,47,776,
      8,47,1,48,1,48,1,48,1,48,1,48,1,48,1,49,1,49,1,49,4,49,787,8,49,11,
      49,12,49,788,1,49,3,49,792,8,49,1,49,3,49,795,8,49,1,50,1,50,3,50,
      799,8,50,1,50,1,50,1,51,1,51,1,51,1,51,1,52,1,52,1,52,1,53,1,53,1,
      53,1,54,1,54,1,54,1,55,1,55,3,55,818,8,55,1,55,1,55,1,55,1,56,1,56,
      3,56,825,8,56,1,56,1,56,1,56,1,57,1,57,3,57,832,8,57,1,57,1,57,1,57,
      1,58,1,58,3,58,839,8,58,1,58,1,58,1,58,1,59,1,59,3,59,846,8,59,1,59,
      1,59,3,59,850,8,59,1,59,1,59,1,60,1,60,3,60,856,8,60,1,60,1,60,1,60,
      1,60,1,61,1,61,1,61,3,61,865,8,61,1,61,1,61,1,61,1,62,1,62,1,62,1,
      63,5,63,874,8,63,10,63,12,63,877,9,63,1,63,1,63,3,63,881,8,63,1,64,
      1,64,1,64,3,64,886,8,64,1,65,1,65,1,65,3,65,891,8,65,1,66,1,66,1,66,
      5,66,896,8,66,10,66,12,66,899,9,66,1,66,1,66,1,66,1,66,1,66,1,67,1,
      67,1,67,1,68,1,68,3,68,911,8,68,1,68,1,68,3,68,915,8,68,1,68,1,68,
      3,68,919,8,68,3,68,921,8,68,1,69,1,69,3,69,925,8,69,1,70,1,70,1,70,
      1,70,1,70,1,71,1,71,1,72,1,72,1,72,1,72,1,73,1,73,1,73,5,73,941,8,
      73,10,73,12,73,944,9,73,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,
      74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,3,74,964,8,74,1,74,
      1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,3,
      74,980,8,74,1,74,1,74,1,74,1,74,3,74,986,8,74,1,74,1,74,1,74,1,74,
      1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,
      74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,1,74,
      1,74,1,74,1,74,1,74,3,74,1023,8,74,1,74,1,74,1,74,1,74,1,74,1,74,1,
      74,1,74,1,74,1,74,5,74,1035,8,74,10,74,12,74,1038,9,74,1,75,1,75,1,
      75,1,75,1,75,1,75,1,75,1,75,1,75,1,75,1,75,1,75,1,75,3,75,1053,8,75,
      1,76,1,76,1,76,3,76,1058,8,76,1,76,1,76,1,76,1,76,1,76,3,76,1065,8,
      76,1,76,1,76,1,76,1,76,3,76,1071,8,76,1,76,3,76,1074,8,76,1,77,1,77,
      1,77,3,77,1079,8,77,1,77,1,77,1,78,1,78,1,78,1,78,1,78,1,78,3,78,1089,
      8,78,1,79,1,79,1,79,5,79,1094,8,79,10,79,12,79,1097,9,79,1,80,1,80,
      1,80,1,80,1,80,3,80,1104,8,80,1,81,1,81,1,81,1,82,1,82,1,83,1,83,1,
      83,1,83,1,83,1,83,1,83,3,83,1118,8,83,3,83,1120,8,83,1,84,1,84,1,84,
      1,84,5,84,1126,8,84,10,84,12,84,1129,9,84,1,84,1,84,1,85,1,85,1,85,
      1,85,1,86,1,86,1,86,1,86,5,86,1141,8,86,10,86,12,86,1144,9,86,1,86,
      1,86,1,87,1,87,3,87,1150,8,87,1,87,1,87,1,88,1,88,1,88,1,88,1,89,1,
      89,1,89,1,89,1,89,3,89,1163,8,89,1,89,3,89,1166,8,89,1,89,3,89,1169,
      8,89,1,89,3,89,1172,8,89,1,89,3,89,1175,8,89,1,89,3,89,1178,8,89,1,
      89,3,89,1181,8,89,1,89,3,89,1184,8,89,1,89,1,89,1,89,3,89,1189,8,89,
      1,90,1,90,1,90,1,90,1,90,3,90,1196,8,90,1,90,3,90,1199,8,90,1,90,3,
      90,1202,8,90,1,90,1,90,1,90,3,90,1207,8,90,1,91,1,91,1,91,5,91,1212,
      8,91,10,91,12,91,1215,9,91,1,92,1,92,3,92,1219,8,92,1,92,1,92,3,92,
      1223,8,92,1,92,1,92,1,92,1,92,3,92,1229,8,92,1,92,3,92,1232,8,92,1,
      93,1,93,1,93,5,93,1237,8,93,10,93,12,93,1240,9,93,1,94,1,94,3,94,1244,
      8,94,1,94,1,94,1,94,3,94,1249,8,94,5,94,1251,8,94,10,94,12,94,1254,
      9,94,1,95,1,95,1,95,5,95,1259,8,95,10,95,12,95,1262,9,95,1,96,1,96,
      3,96,1266,8,96,1,96,1,96,3,96,1270,8,96,1,96,3,96,1273,8,96,1,97,1,
      97,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,
      1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,
      98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,
      1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,
      98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,
      1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,
      98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,
      1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,98,1,
      98,1,98,1,98,1,98,1,98,1,98,3,98,1390,8,98,1,99,1,99,1,99,1,99,1,99,
      1,99,3,99,1398,8,99,1,100,1,100,1,100,4,100,1403,8,100,11,100,12,100,
      1404,1,100,3,100,1408,8,100,1,100,1,100,1,101,1,101,1,101,1,101,1,
      101,1,102,1,102,1,102,1,103,1,103,1,103,5,103,1423,8,103,10,103,12,
      103,1426,9,103,1,104,1,104,1,104,1,104,1,105,1,105,1,105,1,106,1,106,
      1,106,5,106,1438,8,106,10,106,12,106,1441,9,106,1,106,1,106,1,106,
      5,106,1446,8,106,10,106,12,106,1449,9,106,1,106,1,106,3,106,1453,8,
      106,1,107,1,107,1,107,1,107,1,107,3,107,1460,8,107,1,108,1,108,1,108,
      1,108,1,108,1,108,1,108,1,108,3,108,1470,8,108,1,109,1,109,1,109,1,
      109,1,109,1,109,1,109,1,109,1,109,1,109,1,109,1,109,1,109,1,109,1,
      109,3,109,1487,8,109,1,110,1,110,1,110,1,110,1,110,1,110,1,110,1,110,
      1,110,1,110,3,110,1499,8,110,3,110,1501,8,110,1,110,1,110,1,110,1,
      110,1,110,1,110,3,110,1509,8,110,1,111,1,111,1,111,1,111,5,111,1515,
      8,111,10,111,12,111,1518,9,111,1,111,1,111,1,112,3,112,1523,8,112,
      1,112,1,112,1,113,1,113,1,113,1,113,1,113,1,113,1,113,1,113,1,113,
      1,113,1,113,1,113,3,113,1539,8,113,1,114,1,114,1,114,5,114,1544,8,
      114,10,114,12,114,1547,9,114,1,115,1,115,1,115,1,115,1,116,1,116,1,
      116,1,116,1,116,5,116,1558,8,116,10,116,12,116,1561,9,116,1,116,1,
      116,3,116,1565,8,116,1,117,1,117,1,118,1,118,1,118,1,118,1,118,3,118,
      1574,8,118,1,118,1,118,1,118,1,118,1,118,1,118,1,118,5,118,1583,8,
      118,10,118,12,118,1586,9,118,1,118,1,118,1,118,1,118,1,118,1,118,1,
      118,1,118,1,118,5,118,1597,8,118,10,118,12,118,1600,9,118,1,118,1,
      118,3,118,1604,8,118,1,119,1,119,1,119,1,119,1,120,1,120,1,120,5,120,
      1613,8,120,10,120,12,120,1616,9,120,1,121,1,121,3,121,1620,8,121,1,
      121,1,121,3,121,1624,8,121,1,121,1,121,3,121,1628,8,121,1,121,1,121,
      3,121,1632,8,121,3,121,1634,8,121,1,122,1,122,1,122,1,122,3,122,1640,
      8,122,1,123,1,123,1,123,1,123,3,123,1646,8,123,1,124,1,124,1,124,1,
      125,1,125,5,125,1653,8,125,10,125,12,125,1656,9,125,1,126,1,126,1,
      126,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,
      127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,1,127,3,127,1747,
      8,127,1,128,3,128,1750,8,128,1,128,1,128,1,129,1,129,1,130,1,130,1,
      130,1,130,1,130,1,130,1,130,1,130,1,130,1,130,3,130,1766,8,130,1,131,
      1,131,3,131,1770,8,131,1,131,1,131,3,131,1774,8,131,1,131,5,131,1777,
      8,131,10,131,12,131,1780,9,131,1,131,3,131,1783,8,131,1,131,1,131,
      3,131,1787,8,131,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,
      132,1,132,1,132,1,132,1,132,1,132,1,132,3,132,1804,8,132,1,132,1,132,
      1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,
      1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,1,132,3,132,
      1829,8,132,1,133,1,133,1,133,1,134,1,134,1,134,5,134,1837,8,134,10,
      134,12,134,1840,9,134,1,135,1,135,1,135,1,135,1,135,3,135,1847,8,135,
      1,135,1,135,1,135,1,135,3,135,1853,8,135,1,135,1,135,1,135,3,135,1858,
      8,135,1,135,3,135,1861,8,135,1,135,3,135,1864,8,135,1,135,1,135,3,
      135,1868,8,135,1,136,1,136,1,136,5,136,1873,8,136,10,136,12,136,1876,
      9,136,1,137,1,137,1,137,3,137,1881,8,137,1,138,1,138,1,139,1,139,1,
      139,3,139,1888,8,139,1,140,1,140,1,140,5,140,1893,8,140,10,140,12,
      140,1896,9,140,1,141,1,141,1,142,1,142,1,142,0,1,148,143,0,2,4,6,8,
      10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,
      54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,
      98,100,102,104,106,108,110,112,114,116,118,120,122,124,126,128,130,
      132,134,136,138,140,142,144,146,148,150,152,154,156,158,160,162,164,
      166,168,170,172,174,176,178,180,182,184,186,188,190,192,194,196,198,
      200,202,204,206,208,210,212,214,216,218,220,222,224,226,228,230,232,
      234,236,238,240,242,244,246,248,250,252,254,256,258,260,262,264,266,
      268,270,272,274,276,278,280,282,284,0,23,1,0,2,3,3,0,8,8,21,21,45,
      46,2,0,26,26,189,193,1,0,57,58,1,0,219,222,1,0,207,208,2,0,223,224,
      228,228,1,0,221,222,1,0,205,206,1,0,212,216,2,0,204,204,231,241,2,
      0,203,203,209,209,1,0,219,220,2,0,90,90,111,112,2,0,189,189,191,191,
      1,0,99,102,1,0,84,85,1,0,87,88,3,0,46,46,92,92,106,106,2,0,90,90,175,
      178,1,0,109,110,13,0,2,3,16,16,20,20,22,22,34,35,38,38,42,43,49,49,
      51,51,53,54,57,170,173,187,244,244,4,0,1,32,34,170,173,187,244,244,
      2123,0,286,1,0,0,0,2,303,1,0,0,0,4,306,1,0,0,0,6,348,1,0,0,0,8,350,
      1,0,0,0,10,362,1,0,0,0,12,370,1,0,0,0,14,378,1,0,0,0,16,386,1,0,0,
      0,18,394,1,0,0,0,20,404,1,0,0,0,22,413,1,0,0,0,24,443,1,0,0,0,26,464,
      1,0,0,0,28,473,1,0,0,0,30,477,1,0,0,0,32,485,1,0,0,0,34,489,1,0,0,
      0,36,493,1,0,0,0,38,507,1,0,0,0,40,524,1,0,0,0,42,532,1,0,0,0,44,537,
      1,0,0,0,46,553,1,0,0,0,48,567,1,0,0,0,50,586,1,0,0,0,52,588,1,0,0,
      0,54,592,1,0,0,0,56,598,1,0,0,0,58,609,1,0,0,0,60,615,1,0,0,0,62,623,
      1,0,0,0,64,625,1,0,0,0,66,635,1,0,0,0,68,645,1,0,0,0,70,652,1,0,0,
      0,72,654,1,0,0,0,74,670,1,0,0,0,76,679,1,0,0,0,78,685,1,0,0,0,80,711,
      1,0,0,0,82,713,1,0,0,0,84,720,1,0,0,0,86,731,1,0,0,0,88,747,1,0,0,
      0,90,761,1,0,0,0,92,763,1,0,0,0,94,771,1,0,0,0,96,777,1,0,0,0,98,783,
      1,0,0,0,100,796,1,0,0,0,102,802,1,0,0,0,104,806,1,0,0,0,106,809,1,
      0,0,0,108,812,1,0,0,0,110,815,1,0,0,0,112,822,1,0,0,0,114,829,1,0,
      0,0,116,836,1,0,0,0,118,843,1,0,0,0,120,853,1,0,0,0,122,861,1,0,0,
      0,124,869,1,0,0,0,126,875,1,0,0,0,128,882,1,0,0,0,130,887,1,0,0,0,
      132,892,1,0,0,0,134,905,1,0,0,0,136,920,1,0,0,0,138,924,1,0,0,0,140,
      926,1,0,0,0,142,931,1,0,0,0,144,933,1,0,0,0,146,937,1,0,0,0,148,963,
      1,0,0,0,150,1052,1,0,0,0,152,1073,1,0,0,0,154,1075,1,0,0,0,156,1082,
      1,0,0,0,158,1090,1,0,0,0,160,1098,1,0,0,0,162,1105,1,0,0,0,164,1108,
      1,0,0,0,166,1119,1,0,0,0,168,1121,1,0,0,0,170,1132,1,0,0,0,172,1136,
      1,0,0,0,174,1147,1,0,0,0,176,1153,1,0,0,0,178,1157,1,0,0,0,180,1190,
      1,0,0,0,182,1208,1,0,0,0,184,1231,1,0,0,0,186,1233,1,0,0,0,188,1241,
      1,0,0,0,190,1255,1,0,0,0,192,1272,1,0,0,0,194,1274,1,0,0,0,196,1389,
      1,0,0,0,198,1397,1,0,0,0,200,1399,1,0,0,0,202,1411,1,0,0,0,204,1416,
      1,0,0,0,206,1419,1,0,0,0,208,1427,1,0,0,0,210,1431,1,0,0,0,212,1452,
      1,0,0,0,214,1459,1,0,0,0,216,1469,1,0,0,0,218,1486,1,0,0,0,220,1508,
      1,0,0,0,222,1510,1,0,0,0,224,1522,1,0,0,0,226,1538,1,0,0,0,228,1540,
      1,0,0,0,230,1548,1,0,0,0,232,1564,1,0,0,0,234,1566,1,0,0,0,236,1603,
      1,0,0,0,238,1605,1,0,0,0,240,1609,1,0,0,0,242,1633,1,0,0,0,244,1639,
      1,0,0,0,246,1645,1,0,0,0,248,1647,1,0,0,0,250,1654,1,0,0,0,252,1657,
      1,0,0,0,254,1746,1,0,0,0,256,1749,1,0,0,0,258,1753,1,0,0,0,260,1765,
      1,0,0,0,262,1769,1,0,0,0,264,1828,1,0,0,0,266,1830,1,0,0,0,268,1833,
      1,0,0,0,270,1841,1,0,0,0,272,1869,1,0,0,0,274,1877,1,0,0,0,276,1882,
      1,0,0,0,278,1884,1,0,0,0,280,1889,1,0,0,0,282,1897,1,0,0,0,284,1899,
      1,0,0,0,286,287,5,43,0,0,287,288,3,282,141,0,288,289,5,27,0,0,289,
      290,3,282,141,0,290,291,5,195,0,0,291,296,3,2,1,0,292,293,5,202,0,
      0,293,295,3,2,1,0,294,292,1,0,0,0,295,298,1,0,0,0,296,294,1,0,0,0,
      296,297,1,0,0,0,297,299,1,0,0,0,298,296,1,0,0,0,299,300,5,196,0,0,
      300,301,3,74,37,0,301,302,5,0,0,1,302,1,1,0,0,0,303,304,7,0,0,0,304,
      305,7,1,0,0,305,3,1,0,0,0,306,307,3,6,3,0,307,308,5,0,0,1,308,5,1,
      0,0,0,309,311,3,64,32,0,310,309,1,0,0,0,311,314,1,0,0,0,312,310,1,
      0,0,0,312,313,1,0,0,0,313,318,1,0,0,0,314,312,1,0,0,0,315,317,3,26,
      13,0,316,315,1,0,0,0,317,320,1,0,0,0,318,316,1,0,0,0,318,319,1,0,0,
      0,319,321,1,0,0,0,320,318,1,0,0,0,321,349,3,8,4,0,322,324,3,64,32,
      0,323,322,1,0,0,0,324,327,1,0,0,0,325,323,1,0,0,0,325,326,1,0,0,0,
      326,331,1,0,0,0,327,325,1,0,0,0,328,330,3,26,13,0,329,328,1,0,0,0,
      330,333,1,0,0,0,331,329,1,0,0,0,331,332,1,0,0,0,332,334,1,0,0,0,333,
      331,1,0,0,0,334,349,3,10,5,0,335,337,3,64,32,0,336,335,1,0,0,0,337,
      340,1,0,0,0,338,336,1,0,0,0,338,339,1,0,0,0,339,344,1,0,0,0,340,338,
      1,0,0,0,341,343,3,26,13,0,342,341,1,0,0,0,343,346,1,0,0,0,344,342,
      1,0,0,0,344,345,1,0,0,0,345,347,1,0,0,0,346,344,1,0,0,0,347,349,3,
      14,7,0,348,312,1,0,0,0,348,325,1,0,0,0,348,338,1,0,0,0,349,7,1,0,0,
      0,350,351,5,6,0,0,351,354,3,282,141,0,352,353,5,12,0,0,353,355,3,46,
      23,0,354,352,1,0,0,0,354,355,1,0,0,0,355,358,1,0,0,0,356,357,5,19,
      0,0,357,359,3,16,8,0,358,356,1,0,0,0,358,359,1,0,0,0,359,360,1,0,0,
      0,360,361,3,18,9,0,361,9,1,0,0,0,362,363,5,11,0,0,363,364,3,282,141,
      0,364,366,5,197,0,0,365,367,3,12,6,0,366,365,1,0,0,0,366,367,1,0,0,
      0,367,368,1,0,0,0,368,369,5,198,0,0,369,11,1,0,0,0,370,375,3,282,141,
      0,371,372,5,202,0,0,372,374,3,282,141,0,373,371,1,0,0,0,374,377,1,
      0,0,0,375,373,1,0,0,0,375,376,1,0,0,0,376,13,1,0,0,0,377,375,1,0,0,
      0,378,379,5,23,0,0,379,382,3,282,141,0,380,381,5,12,0,0,381,383,3,
      16,8,0,382,380,1,0,0,0,382,383,1,0,0,0,383,384,1,0,0,0,384,385,3,22,
      11,0,385,15,1,0,0,0,386,391,3,46,23,0,387,388,5,202,0,0,388,390,3,
      46,23,0,389,387,1,0,0,0,390,393,1,0,0,0,391,389,1,0,0,0,391,392,1,
      0,0,0,392,17,1,0,0,0,393,391,1,0,0,0,394,399,5,197,0,0,395,398,3,20,
      10,0,396,398,3,24,12,0,397,395,1,0,0,0,397,396,1,0,0,0,398,401,1,0,
      0,0,399,397,1,0,0,0,399,400,1,0,0,0,400,402,1,0,0,0,401,399,1,0,0,
      0,402,403,5,198,0,0,403,19,1,0,0,0,404,408,5,245,0,0,405,407,3,24,
      12,0,406,405,1,0,0,0,407,410,1,0,0,0,408,406,1,0,0,0,408,409,1,0,0,
      0,409,411,1,0,0,0,410,408,1,0,0,0,411,412,5,246,0,0,412,21,1,0,0,0,
      413,417,5,197,0,0,414,416,3,38,19,0,415,414,1,0,0,0,416,419,1,0,0,
      0,417,415,1,0,0,0,417,418,1,0,0,0,418,420,1,0,0,0,419,417,1,0,0,0,
      420,421,5,198,0,0,421,23,1,0,0,0,422,444,5,201,0,0,423,425,5,36,0,
      0,424,423,1,0,0,0,424,425,1,0,0,0,425,426,1,0,0,0,426,444,3,74,37,
      0,427,429,3,64,32,0,428,427,1,0,0,0,429,432,1,0,0,0,430,428,1,0,0,
      0,430,431,1,0,0,0,431,436,1,0,0,0,432,430,1,0,0,0,433,435,3,26,13,
      0,434,433,1,0,0,0,435,438,1,0,0,0,436,434,1,0,0,0,436,437,1,0,0,0,
      437,439,1,0,0,0,438,436,1,0,0,0,439,441,3,28,14,0,440,442,5,246,0,
      0,441,440,1,0,0,0,441,442,1,0,0,0,442,444,1,0,0,0,443,422,1,0,0,0,
      443,424,1,0,0,0,443,430,1,0,0,0,444,25,1,0,0,0,445,465,3,64,32,0,446,
      465,5,17,0,0,447,465,5,31,0,0,448,465,5,30,0,0,449,465,5,29,0,0,450,
      465,5,42,0,0,451,465,5,36,0,0,452,465,5,1,0,0,453,465,5,13,0,0,454,
      465,5,50,0,0,455,465,5,28,0,0,456,465,5,48,0,0,457,465,5,39,0,0,458,
      459,5,53,0,0,459,465,5,35,0,0,460,461,5,54,0,0,461,465,5,35,0,0,462,
      463,5,20,0,0,463,465,5,35,0,0,464,445,1,0,0,0,464,446,1,0,0,0,464,
      447,1,0,0,0,464,448,1,0,0,0,464,449,1,0,0,0,464,450,1,0,0,0,464,451,
      1,0,0,0,464,452,1,0,0,0,464,453,1,0,0,0,464,454,1,0,0,0,464,455,1,
      0,0,0,464,456,1,0,0,0,464,457,1,0,0,0,464,458,1,0,0,0,464,460,1,0,
      0,0,464,462,1,0,0,0,465,27,1,0,0,0,466,474,3,30,15,0,467,474,3,34,
      17,0,468,474,3,32,16,0,469,474,3,14,7,0,470,474,3,8,4,0,471,474,3,
      10,5,0,472,474,3,36,18,0,473,466,1,0,0,0,473,467,1,0,0,0,473,468,1,
      0,0,0,473,469,1,0,0,0,473,470,1,0,0,0,473,471,1,0,0,0,473,472,1,0,
      0,0,474,29,1,0,0,0,475,478,3,46,23,0,476,478,5,49,0,0,477,475,1,0,
      0,0,477,476,1,0,0,0,478,479,1,0,0,0,479,480,3,282,141,0,480,483,3,
      54,27,0,481,484,3,74,37,0,482,484,5,201,0,0,483,481,1,0,0,0,483,482,
      1,0,0,0,484,31,1,0,0,0,485,486,3,60,30,0,486,487,3,54,27,0,487,488,
      3,74,37,0,488,33,1,0,0,0,489,490,3,46,23,0,490,491,3,40,20,0,491,492,
      5,201,0,0,492,35,1,0,0,0,493,494,3,46,23,0,494,495,3,282,141,0,495,
      499,5,197,0,0,496,498,3,126,63,0,497,496,1,0,0,0,498,501,1,0,0,0,499,
      497,1,0,0,0,499,500,1,0,0,0,500,502,1,0,0,0,501,499,1,0,0,0,502,503,
      5,198,0,0,503,37,1,0,0,0,504,506,3,64,32,0,505,504,1,0,0,0,506,509,
      1,0,0,0,507,505,1,0,0,0,507,508,1,0,0,0,508,513,1,0,0,0,509,507,1,
      0,0,0,510,512,3,26,13,0,511,510,1,0,0,0,512,515,1,0,0,0,513,511,1,
      0,0,0,513,514,1,0,0,0,514,518,1,0,0,0,515,513,1,0,0,0,516,519,3,46,
      23,0,517,519,5,49,0,0,518,516,1,0,0,0,518,517,1,0,0,0,519,520,1,0,
      0,0,520,521,3,282,141,0,521,522,3,54,27,0,522,523,5,201,0,0,523,39,
      1,0,0,0,524,529,3,42,21,0,525,526,5,202,0,0,526,528,3,42,21,0,527,
      525,1,0,0,0,528,531,1,0,0,0,529,527,1,0,0,0,529,530,1,0,0,0,530,41,
      1,0,0,0,531,529,1,0,0,0,532,535,3,282,141,0,533,534,5,204,0,0,534,
      536,3,148,74,0,535,533,1,0,0,0,535,536,1,0,0,0,536,43,1,0,0,0,537,
      549,5,197,0,0,538,543,3,148,74,0,539,540,5,202,0,0,540,542,3,148,74,
      0,541,539,1,0,0,0,542,545,1,0,0,0,543,541,1,0,0,0,543,544,1,0,0,0,
      544,547,1,0,0,0,545,543,1,0,0,0,546,548,5,202,0,0,547,546,1,0,0,0,
      547,548,1,0,0,0,548,550,1,0,0,0,549,538,1,0,0,0,549,550,1,0,0,0,550,
      551,1,0,0,0,551,552,5,198,0,0,552,45,1,0,0,0,553,558,3,50,25,0,554,
      555,5,203,0,0,555,557,3,50,25,0,556,554,1,0,0,0,557,560,1,0,0,0,558,
      556,1,0,0,0,558,559,1,0,0,0,559,561,1,0,0,0,560,558,1,0,0,0,561,562,
      3,48,24,0,562,47,1,0,0,0,563,564,5,199,0,0,564,566,5,200,0,0,565,563,
      1,0,0,0,566,569,1,0,0,0,567,565,1,0,0,0,567,568,1,0,0,0,568,49,1,0,
      0,0,569,567,1,0,0,0,570,572,5,55,0,0,571,573,3,52,26,0,572,571,1,0,
      0,0,572,573,1,0,0,0,573,587,1,0,0,0,574,576,5,34,0,0,575,577,3,52,
      26,0,576,575,1,0,0,0,576,577,1,0,0,0,577,587,1,0,0,0,578,580,5,56,
      0,0,579,581,3,52,26,0,580,579,1,0,0,0,580,581,1,0,0,0,581,587,1,0,
      0,0,582,584,3,282,141,0,583,585,3,52,26,0,584,583,1,0,0,0,584,585,
      1,0,0,0,585,587,1,0,0,0,586,570,1,0,0,0,586,574,1,0,0,0,586,578,1,
      0,0,0,586,582,1,0,0,0,587,51,1,0,0,0,588,589,5,206,0,0,589,590,3,16,
      8,0,590,591,5,205,0,0,591,53,1,0,0,0,592,594,5,195,0,0,593,595,3,56,
      28,0,594,593,1,0,0,0,594,595,1,0,0,0,595,596,1,0,0,0,596,597,5,196,
      0,0,597,55,1,0,0,0,598,603,3,58,29,0,599,600,5,202,0,0,600,602,3,58,
      29,0,601,599,1,0,0,0,602,605,1,0,0,0,603,601,1,0,0,0,603,604,1,0,0,
      0,604,57,1,0,0,0,605,603,1,0,0,0,606,608,3,26,13,0,607,606,1,0,0,0,
      608,611,1,0,0,0,609,607,1,0,0,0,609,610,1,0,0,0,610,612,1,0,0,0,611,
      609,1,0,0,0,612,613,3,46,23,0,613,614,3,282,141,0,614,59,1,0,0,0,615,
      620,3,282,141,0,616,617,5,203,0,0,617,619,3,282,141,0,618,616,1,0,
      0,0,619,622,1,0,0,0,620,618,1,0,0,0,620,621,1,0,0,0,621,61,1,0,0,0,
      622,620,1,0,0,0,623,624,7,2,0,0,624,63,1,0,0,0,625,626,5,242,0,0,626,
      633,3,60,30,0,627,630,5,195,0,0,628,631,3,66,33,0,629,631,3,70,35,
      0,630,628,1,0,0,0,630,629,1,0,0,0,630,631,1,0,0,0,631,632,1,0,0,0,
      632,634,5,196,0,0,633,627,1,0,0,0,633,634,1,0,0,0,634,65,1,0,0,0,635,
      642,3,68,34,0,636,638,5,202,0,0,637,636,1,0,0,0,637,638,1,0,0,0,638,
      639,1,0,0,0,639,641,3,68,34,0,640,637,1,0,0,0,641,644,1,0,0,0,642,
      640,1,0,0,0,642,643,1,0,0,0,643,67,1,0,0,0,644,642,1,0,0,0,645,646,
      3,282,141,0,646,647,5,204,0,0,647,648,3,70,35,0,648,69,1,0,0,0,649,
      653,3,148,74,0,650,653,3,64,32,0,651,653,3,72,36,0,652,649,1,0,0,0,
      652,650,1,0,0,0,652,651,1,0,0,0,653,71,1,0,0,0,654,663,5,197,0,0,655,
      660,3,70,35,0,656,657,5,202,0,0,657,659,3,70,35,0,658,656,1,0,0,0,
      659,662,1,0,0,0,660,658,1,0,0,0,660,661,1,0,0,0,661,664,1,0,0,0,662,
      660,1,0,0,0,663,655,1,0,0,0,663,664,1,0,0,0,664,666,1,0,0,0,665,667,
      5,202,0,0,666,665,1,0,0,0,666,667,1,0,0,0,667,668,1,0,0,0,668,669,
      5,198,0,0,669,73,1,0,0,0,670,674,5,197,0,0,671,673,3,80,40,0,672,671,
      1,0,0,0,673,676,1,0,0,0,674,672,1,0,0,0,674,675,1,0,0,0,675,677,1,
      0,0,0,676,674,1,0,0,0,677,678,5,198,0,0,678,75,1,0,0,0,679,680,3,78,
      39,0,680,681,5,201,0,0,681,77,1,0,0,0,682,684,3,26,13,0,683,682,1,
      0,0,0,684,687,1,0,0,0,685,683,1,0,0,0,685,686,1,0,0,0,686,688,1,0,
      0,0,687,685,1,0,0,0,688,689,3,46,23,0,689,690,3,40,20,0,690,79,1,0,
      0,0,691,712,3,74,37,0,692,712,3,82,41,0,693,712,3,84,42,0,694,712,
      3,92,46,0,695,712,3,94,47,0,696,712,3,96,48,0,697,712,3,98,49,0,698,
      712,3,100,50,0,699,712,3,102,51,0,700,712,3,104,52,0,701,712,3,106,
      53,0,702,712,3,110,55,0,703,712,3,112,56,0,704,712,3,114,57,0,705,
      712,3,116,58,0,706,712,3,118,59,0,707,712,3,120,60,0,708,712,3,122,
      61,0,709,712,3,76,38,0,710,712,3,124,62,0,711,691,1,0,0,0,711,692,
      1,0,0,0,711,693,1,0,0,0,711,694,1,0,0,0,711,695,1,0,0,0,711,696,1,
      0,0,0,711,697,1,0,0,0,711,698,1,0,0,0,711,699,1,0,0,0,711,700,1,0,
      0,0,711,701,1,0,0,0,711,702,1,0,0,0,711,703,1,0,0,0,711,704,1,0,0,
      0,711,705,1,0,0,0,711,706,1,0,0,0,711,707,1,0,0,0,711,708,1,0,0,0,
      711,709,1,0,0,0,711,710,1,0,0,0,712,81,1,0,0,0,713,714,5,18,0,0,714,
      715,3,144,72,0,715,718,3,80,40,0,716,717,5,10,0,0,717,719,3,80,40,
      0,718,716,1,0,0,0,718,719,1,0,0,0,719,83,1,0,0,0,720,721,5,38,0,0,
      721,722,5,27,0,0,722,723,3,148,74,0,723,725,5,197,0,0,724,726,3,86,
      43,0,725,724,1,0,0,0,726,727,1,0,0,0,727,725,1,0,0,0,727,728,1,0,0,
      0,728,729,1,0,0,0,729,730,5,198,0,0,730,85,1,0,0,0,731,732,5,51,0,
      0,732,733,3,88,44,0,733,734,3,74,37,0,734,87,1,0,0,0,735,748,5,10,
      0,0,736,741,3,90,45,0,737,738,5,202,0,0,738,740,3,90,45,0,739,737,
      1,0,0,0,740,743,1,0,0,0,741,739,1,0,0,0,741,742,1,0,0,0,742,748,1,
      0,0,0,743,741,1,0,0,0,744,745,3,282,141,0,745,746,3,282,141,0,746,
      748,1,0,0,0,747,735,1,0,0,0,747,736,1,0,0,0,747,744,1,0,0,0,748,89,
      1,0,0,0,749,751,5,222,0,0,750,749,1,0,0,0,750,751,1,0,0,0,751,752,
      1,0,0,0,752,762,5,189,0,0,753,762,5,190,0,0,754,762,5,193,0,0,755,
      762,5,26,0,0,756,762,3,282,141,0,757,758,5,195,0,0,758,759,3,90,45,
      0,759,760,5,196,0,0,760,762,1,0,0,0,761,750,1,0,0,0,761,753,1,0,0,
      0,761,754,1,0,0,0,761,755,1,0,0,0,761,756,1,0,0,0,761,757,1,0,0,0,
      762,91,1,0,0,0,763,764,5,15,0,0,764,765,5,195,0,0,765,766,3,136,68,
      0,766,769,5,196,0,0,767,770,3,80,40,0,768,770,5,201,0,0,769,767,1,
      0,0,0,769,768,1,0,0,0,770,93,1,0,0,0,771,772,5,52,0,0,772,775,3,144,
      72,0,773,776,3,80,40,0,774,776,5,201,0,0,775,773,1,0,0,0,775,774,1,
      0,0,0,776,95,1,0,0,0,777,778,5,9,0,0,778,779,3,80,40,0,779,780,5,52,
      0,0,780,781,3,144,72,0,781,782,5,201,0,0,782,97,1,0,0,0,783,784,5,
      44,0,0,784,794,3,74,37,0,785,787,3,132,66,0,786,785,1,0,0,0,787,788,
      1,0,0,0,788,786,1,0,0,0,788,789,1,0,0,0,789,791,1,0,0,0,790,792,3,
      134,67,0,791,790,1,0,0,0,791,792,1,0,0,0,792,795,1,0,0,0,793,795,3,
      134,67,0,794,786,1,0,0,0,794,793,1,0,0,0,795,99,1,0,0,0,796,798,5,
      32,0,0,797,799,3,148,74,0,798,797,1,0,0,0,798,799,1,0,0,0,799,800,
      1,0,0,0,800,801,5,201,0,0,801,101,1,0,0,0,802,803,5,41,0,0,803,804,
      3,148,74,0,804,805,5,201,0,0,805,103,1,0,0,0,806,807,5,4,0,0,807,808,
      5,201,0,0,808,105,1,0,0,0,809,810,5,7,0,0,810,811,5,201,0,0,811,107,
      1,0,0,0,812,813,5,62,0,0,813,814,7,3,0,0,814,109,1,0,0,0,815,817,5,
      21,0,0,816,818,3,108,54,0,817,816,1,0,0,0,817,818,1,0,0,0,818,819,
      1,0,0,0,819,820,3,148,74,0,820,821,5,201,0,0,821,111,1,0,0,0,822,824,
      5,46,0,0,823,825,3,108,54,0,824,823,1,0,0,0,824,825,1,0,0,0,825,826,
      1,0,0,0,826,827,3,148,74,0,827,828,5,201,0,0,828,113,1,0,0,0,829,831,
      5,8,0,0,830,832,3,108,54,0,831,830,1,0,0,0,831,832,1,0,0,0,832,833,
      1,0,0,0,833,834,3,148,74,0,834,835,5,201,0,0,835,115,1,0,0,0,836,838,
      5,45,0,0,837,839,3,108,54,0,838,837,1,0,0,0,838,839,1,0,0,0,839,840,
      1,0,0,0,840,841,3,148,74,0,841,842,5,201,0,0,842,117,1,0,0,0,843,845,
      5,47,0,0,844,846,3,108,54,0,845,844,1,0,0,0,845,846,1,0,0,0,846,847,
      1,0,0,0,847,849,3,148,74,0,848,850,3,60,30,0,849,848,1,0,0,0,849,850,
      1,0,0,0,850,851,1,0,0,0,851,852,5,201,0,0,852,119,1,0,0,0,853,855,
      5,24,0,0,854,856,3,108,54,0,855,854,1,0,0,0,855,856,1,0,0,0,856,857,
      1,0,0,0,857,858,3,148,74,0,858,859,3,148,74,0,859,860,5,201,0,0,860,
      121,1,0,0,0,861,862,5,33,0,0,862,864,5,195,0,0,863,865,3,146,73,0,
      864,863,1,0,0,0,864,865,1,0,0,0,865,866,1,0,0,0,866,867,5,196,0,0,
      867,868,3,74,37,0,868,123,1,0,0,0,869,870,3,148,74,0,870,871,5,201,
      0,0,871,125,1,0,0,0,872,874,3,26,13,0,873,872,1,0,0,0,874,877,1,0,
      0,0,875,873,1,0,0,0,875,876,1,0,0,0,876,880,1,0,0,0,877,875,1,0,0,
      0,878,881,3,128,64,0,879,881,3,130,65,0,880,878,1,0,0,0,880,879,1,
      0,0,0,881,127,1,0,0,0,882,885,5,16,0,0,883,886,5,201,0,0,884,886,3,
      74,37,0,885,883,1,0,0,0,885,884,1,0,0,0,886,129,1,0,0,0,887,890,5,
      34,0,0,888,891,5,201,0,0,889,891,3,74,37,0,890,888,1,0,0,0,890,889,
      1,0,0,0,891,131,1,0,0,0,892,893,5,5,0,0,893,897,5,195,0,0,894,896,
      3,26,13,0,895,894,1,0,0,0,896,899,1,0,0,0,897,895,1,0,0,0,897,898,
      1,0,0,0,898,900,1,0,0,0,899,897,1,0,0,0,900,901,3,60,30,0,901,902,
      3,282,141,0,902,903,5,196,0,0,903,904,3,74,37,0,904,133,1,0,0,0,905,
      906,5,14,0,0,906,907,3,74,37,0,907,135,1,0,0,0,908,921,3,140,70,0,
      909,911,3,138,69,0,910,909,1,0,0,0,910,911,1,0,0,0,911,912,1,0,0,0,
      912,914,5,201,0,0,913,915,3,148,74,0,914,913,1,0,0,0,914,915,1,0,0,
      0,915,916,1,0,0,0,916,918,5,201,0,0,917,919,3,142,71,0,918,917,1,0,
      0,0,918,919,1,0,0,0,919,921,1,0,0,0,920,908,1,0,0,0,920,910,1,0,0,
      0,921,137,1,0,0,0,922,925,3,78,39,0,923,925,3,146,73,0,924,922,1,0,
      0,0,924,923,1,0,0,0,925,139,1,0,0,0,926,927,3,46,23,0,927,928,3,282,
      141,0,928,929,5,211,0,0,929,930,3,148,74,0,930,141,1,0,0,0,931,932,
      3,146,73,0,932,143,1,0,0,0,933,934,5,195,0,0,934,935,3,148,74,0,935,
      936,5,196,0,0,936,145,1,0,0,0,937,942,3,148,74,0,938,939,5,202,0,0,
      939,941,3,148,74,0,940,938,1,0,0,0,941,944,1,0,0,0,942,940,1,0,0,0,
      942,943,1,0,0,0,943,147,1,0,0,0,944,942,1,0,0,0,945,946,6,74,-1,0,
      946,964,3,150,75,0,947,964,3,152,76,0,948,949,5,25,0,0,949,964,3,156,
      78,0,950,951,5,195,0,0,951,952,3,46,23,0,952,953,5,196,0,0,953,954,
      3,148,74,19,954,964,1,0,0,0,955,956,5,195,0,0,956,957,3,148,74,0,957,
      958,5,196,0,0,958,964,1,0,0,0,959,960,7,4,0,0,960,964,3,148,74,16,
      961,962,7,5,0,0,962,964,3,148,74,15,963,945,1,0,0,0,963,947,1,0,0,
      0,963,948,1,0,0,0,963,950,1,0,0,0,963,955,1,0,0,0,963,959,1,0,0,0,
      963,961,1,0,0,0,964,1036,1,0,0,0,965,966,10,14,0,0,966,967,7,6,0,0,
      967,1035,3,148,74,15,968,969,10,13,0,0,969,970,7,7,0,0,970,1035,3,
      148,74,14,971,979,10,12,0,0,972,973,5,206,0,0,973,980,5,206,0,0,974,
      975,5,205,0,0,975,976,5,205,0,0,976,980,5,205,0,0,977,978,5,205,0,
      0,978,980,5,205,0,0,979,972,1,0,0,0,979,974,1,0,0,0,979,977,1,0,0,
      0,980,981,1,0,0,0,981,1035,3,148,74,13,982,983,10,11,0,0,983,985,7,
      8,0,0,984,986,5,204,0,0,985,984,1,0,0,0,985,986,1,0,0,0,986,987,1,
      0,0,0,987,1035,3,148,74,12,988,989,10,9,0,0,989,990,7,9,0,0,990,1035,
      3,148,74,10,991,992,10,8,0,0,992,993,5,225,0,0,993,1035,3,148,74,9,
      994,995,10,7,0,0,995,996,5,227,0,0,996,1035,3,148,74,8,997,998,10,
      6,0,0,998,999,5,226,0,0,999,1035,3,148,74,7,1000,1001,10,5,0,0,1001,
      1002,5,217,0,0,1002,1035,3,148,74,6,1003,1004,10,4,0,0,1004,1005,5,
      218,0,0,1005,1035,3,148,74,5,1006,1007,10,3,0,0,1007,1008,5,230,0,
      0,1008,1035,3,148,74,4,1009,1010,10,2,0,0,1010,1011,5,210,0,0,1011,
      1012,3,148,74,0,1012,1013,5,211,0,0,1013,1014,3,148,74,2,1014,1035,
      1,0,0,0,1015,1016,10,1,0,0,1016,1017,7,10,0,0,1017,1035,3,148,74,1,
      1018,1019,10,23,0,0,1019,1022,7,11,0,0,1020,1023,3,154,77,0,1021,1023,
      3,284,142,0,1022,1020,1,0,0,0,1022,1021,1,0,0,0,1023,1035,1,0,0,0,
      1024,1025,10,22,0,0,1025,1026,5,199,0,0,1026,1027,3,148,74,0,1027,
      1028,5,200,0,0,1028,1035,1,0,0,0,1029,1030,10,17,0,0,1030,1035,7,12,
      0,0,1031,1032,10,10,0,0,1032,1033,5,22,0,0,1033,1035,3,46,23,0,1034,
      965,1,0,0,0,1034,968,1,0,0,0,1034,971,1,0,0,0,1034,982,1,0,0,0,1034,
      988,1,0,0,0,1034,991,1,0,0,0,1034,994,1,0,0,0,1034,997,1,0,0,0,1034,
      1000,1,0,0,0,1034,1003,1,0,0,0,1034,1006,1,0,0,0,1034,1009,1,0,0,0,
      1034,1015,1,0,0,0,1034,1018,1,0,0,0,1034,1024,1,0,0,0,1034,1029,1,
      0,0,0,1034,1031,1,0,0,0,1035,1038,1,0,0,0,1036,1034,1,0,0,0,1036,1037,
      1,0,0,0,1037,149,1,0,0,0,1038,1036,1,0,0,0,1039,1053,5,40,0,0,1040,
      1053,5,37,0,0,1041,1053,3,62,31,0,1042,1043,3,46,23,0,1043,1044,5,
      203,0,0,1044,1045,5,6,0,0,1045,1053,1,0,0,0,1046,1047,5,49,0,0,1047,
      1048,5,203,0,0,1048,1053,5,6,0,0,1049,1053,3,282,141,0,1050,1053,3,
      176,88,0,1051,1053,3,260,130,0,1052,1039,1,0,0,0,1052,1040,1,0,0,0,
      1052,1041,1,0,0,0,1052,1042,1,0,0,0,1052,1046,1,0,0,0,1052,1049,1,
      0,0,0,1052,1050,1,0,0,0,1052,1051,1,0,0,0,1053,151,1,0,0,0,1054,1055,
      3,282,141,0,1055,1057,5,195,0,0,1056,1058,3,146,73,0,1057,1056,1,0,
      0,0,1057,1058,1,0,0,0,1058,1059,1,0,0,0,1059,1060,5,196,0,0,1060,1074,
      1,0,0,0,1061,1062,5,40,0,0,1062,1064,5,195,0,0,1063,1065,3,146,73,
      0,1064,1063,1,0,0,0,1064,1065,1,0,0,0,1065,1066,1,0,0,0,1066,1074,
      5,196,0,0,1067,1068,5,37,0,0,1068,1070,5,195,0,0,1069,1071,3,146,73,
      0,1070,1069,1,0,0,0,1070,1071,1,0,0,0,1071,1072,1,0,0,0,1072,1074,
      5,196,0,0,1073,1054,1,0,0,0,1073,1061,1,0,0,0,1073,1067,1,0,0,0,1074,
      153,1,0,0,0,1075,1076,3,284,142,0,1076,1078,5,195,0,0,1077,1079,3,
      146,73,0,1078,1077,1,0,0,0,1078,1079,1,0,0,0,1079,1080,1,0,0,0,1080,
      1081,5,196,0,0,1081,155,1,0,0,0,1082,1088,3,158,79,0,1083,1089,3,162,
      81,0,1084,1089,3,164,82,0,1085,1089,3,166,83,0,1086,1089,3,168,84,
      0,1087,1089,3,172,86,0,1088,1083,1,0,0,0,1088,1084,1,0,0,0,1088,1085,
      1,0,0,0,1088,1086,1,0,0,0,1088,1087,1,0,0,0,1089,157,1,0,0,0,1090,
      1095,3,160,80,0,1091,1092,5,203,0,0,1092,1094,3,160,80,0,1093,1091,
      1,0,0,0,1094,1097,1,0,0,0,1095,1093,1,0,0,0,1095,1096,1,0,0,0,1096,
      159,1,0,0,0,1097,1095,1,0,0,0,1098,1103,3,284,142,0,1099,1100,5,206,
      0,0,1100,1101,3,16,8,0,1101,1102,5,205,0,0,1102,1104,1,0,0,0,1103,
      1099,1,0,0,0,1103,1104,1,0,0,0,1104,161,1,0,0,0,1105,1106,5,197,0,
      0,1106,1107,5,198,0,0,1107,163,1,0,0,0,1108,1109,3,174,87,0,1109,165,
      1,0,0,0,1110,1111,5,199,0,0,1111,1112,3,148,74,0,1112,1113,5,200,0,
      0,1113,1120,1,0,0,0,1114,1115,5,199,0,0,1115,1117,5,200,0,0,1116,1118,
      3,44,22,0,1117,1116,1,0,0,0,1117,1118,1,0,0,0,1118,1120,1,0,0,0,1119,
      1110,1,0,0,0,1119,1114,1,0,0,0,1120,167,1,0,0,0,1121,1122,5,197,0,
      0,1122,1127,3,170,85,0,1123,1124,5,202,0,0,1124,1126,3,170,85,0,1125,
      1123,1,0,0,0,1126,1129,1,0,0,0,1127,1125,1,0,0,0,1127,1128,1,0,0,0,
      1128,1130,1,0,0,0,1129,1127,1,0,0,0,1130,1131,5,198,0,0,1131,169,1,
      0,0,0,1132,1133,3,148,74,0,1133,1134,5,229,0,0,1134,1135,3,148,74,
      0,1135,171,1,0,0,0,1136,1137,5,197,0,0,1137,1142,3,148,74,0,1138,1139,
      5,202,0,0,1139,1141,3,148,74,0,1140,1138,1,0,0,0,1141,1144,1,0,0,0,
      1142,1140,1,0,0,0,1142,1143,1,0,0,0,1143,1145,1,0,0,0,1144,1142,1,
      0,0,0,1145,1146,5,198,0,0,1146,173,1,0,0,0,1147,1149,5,195,0,0,1148,
      1150,3,146,73,0,1149,1148,1,0,0,0,1149,1150,1,0,0,0,1150,1151,1,0,
      0,0,1151,1152,5,196,0,0,1152,175,1,0,0,0,1153,1154,5,199,0,0,1154,
      1155,3,178,89,0,1155,1156,5,200,0,0,1156,177,1,0,0,0,1157,1158,5,59,
      0,0,1158,1159,3,182,91,0,1159,1160,5,61,0,0,1160,1162,3,188,94,0,1161,
      1163,3,208,104,0,1162,1161,1,0,0,0,1162,1163,1,0,0,0,1163,1165,1,0,
      0,0,1164,1166,3,210,105,0,1165,1164,1,0,0,0,1165,1166,1,0,0,0,1166,
      1168,1,0,0,0,1167,1169,3,226,113,0,1168,1167,1,0,0,0,1168,1169,1,0,
      0,0,1169,1171,1,0,0,0,1170,1172,3,236,118,0,1171,1170,1,0,0,0,1171,
      1172,1,0,0,0,1172,1174,1,0,0,0,1173,1175,3,238,119,0,1174,1173,1,0,
      0,0,1174,1175,1,0,0,0,1175,1177,1,0,0,0,1176,1178,3,244,122,0,1177,
      1176,1,0,0,0,1177,1178,1,0,0,0,1178,1180,1,0,0,0,1179,1181,3,246,123,
      0,1180,1179,1,0,0,0,1180,1181,1,0,0,0,1181,1183,1,0,0,0,1182,1184,
      3,248,124,0,1183,1182,1,0,0,0,1183,1184,1,0,0,0,1184,1185,1,0,0,0,
      1185,1188,3,250,125,0,1186,1187,5,46,0,0,1187,1189,3,274,137,0,1188,
      1186,1,0,0,0,1188,1189,1,0,0,0,1189,179,1,0,0,0,1190,1191,5,59,0,0,
      1191,1192,3,190,95,0,1192,1193,5,61,0,0,1193,1195,3,188,94,0,1194,
      1196,3,210,105,0,1195,1194,1,0,0,0,1195,1196,1,0,0,0,1196,1198,1,0,
      0,0,1197,1199,3,238,119,0,1198,1197,1,0,0,0,1198,1199,1,0,0,0,1199,
      1201,1,0,0,0,1200,1202,3,244,122,0,1201,1200,1,0,0,0,1201,1202,1,0,
      0,0,1202,1203,1,0,0,0,1203,1206,3,250,125,0,1204,1205,5,46,0,0,1205,
      1207,3,274,137,0,1206,1204,1,0,0,0,1206,1207,1,0,0,0,1207,181,1,0,
      0,0,1208,1213,3,184,92,0,1209,1210,5,202,0,0,1210,1212,3,184,92,0,
      1211,1209,1,0,0,0,1212,1215,1,0,0,0,1213,1211,1,0,0,0,1213,1214,1,
      0,0,0,1214,183,1,0,0,0,1215,1213,1,0,0,0,1216,1218,3,186,93,0,1217,
      1219,3,258,129,0,1218,1217,1,0,0,0,1218,1219,1,0,0,0,1219,1232,1,0,
      0,0,1220,1222,3,196,98,0,1221,1223,3,258,129,0,1222,1221,1,0,0,0,1222,
      1223,1,0,0,0,1223,1232,1,0,0,0,1224,1225,5,195,0,0,1225,1226,3,180,
      90,0,1226,1228,5,196,0,0,1227,1229,3,258,129,0,1228,1227,1,0,0,0,1228,
      1229,1,0,0,0,1229,1232,1,0,0,0,1230,1232,3,200,100,0,1231,1216,1,0,
      0,0,1231,1220,1,0,0,0,1231,1224,1,0,0,0,1231,1230,1,0,0,0,1232,185,
      1,0,0,0,1233,1238,3,258,129,0,1234,1235,5,203,0,0,1235,1237,3,258,
      129,0,1236,1234,1,0,0,0,1237,1240,1,0,0,0,1238,1236,1,0,0,0,1238,1239,
      1,0,0,0,1239,187,1,0,0,0,1240,1238,1,0,0,0,1241,1243,3,186,93,0,1242,
      1244,3,258,129,0,1243,1242,1,0,0,0,1243,1244,1,0,0,0,1244,1252,1,0,
      0,0,1245,1246,5,202,0,0,1246,1248,3,186,93,0,1247,1249,3,258,129,0,
      1248,1247,1,0,0,0,1248,1249,1,0,0,0,1249,1251,1,0,0,0,1250,1245,1,
      0,0,0,1251,1254,1,0,0,0,1252,1250,1,0,0,0,1252,1253,1,0,0,0,1253,189,
      1,0,0,0,1254,1252,1,0,0,0,1255,1260,3,192,96,0,1256,1257,5,202,0,0,
      1257,1259,3,192,96,0,1258,1256,1,0,0,0,1259,1262,1,0,0,0,1260,1258,
      1,0,0,0,1260,1261,1,0,0,0,1261,191,1,0,0,0,1262,1260,1,0,0,0,1263,
      1265,3,186,93,0,1264,1266,3,258,129,0,1265,1264,1,0,0,0,1265,1266,
      1,0,0,0,1266,1273,1,0,0,0,1267,1269,3,196,98,0,1268,1270,3,258,129,
      0,1269,1268,1,0,0,0,1269,1270,1,0,0,0,1270,1273,1,0,0,0,1271,1273,
      3,200,100,0,1272,1263,1,0,0,0,1272,1267,1,0,0,0,1272,1271,1,0,0,0,
      1273,193,1,0,0,0,1274,1275,7,13,0,0,1275,195,1,0,0,0,1276,1277,5,72,
      0,0,1277,1278,5,195,0,0,1278,1279,3,186,93,0,1279,1280,5,196,0,0,1280,
      1390,1,0,0,0,1281,1282,5,60,0,0,1282,1283,5,195,0,0,1283,1390,5,196,
      0,0,1284,1285,5,60,0,0,1285,1286,5,195,0,0,1286,1287,3,186,93,0,1287,
      1288,5,196,0,0,1288,1390,1,0,0,0,1289,1290,5,73,0,0,1290,1291,5,195,
      0,0,1291,1292,3,186,93,0,1292,1293,5,196,0,0,1293,1390,1,0,0,0,1294,
      1295,5,74,0,0,1295,1296,5,195,0,0,1296,1297,3,186,93,0,1297,1298,5,
      196,0,0,1298,1390,1,0,0,0,1299,1300,5,75,0,0,1300,1301,5,195,0,0,1301,
      1302,3,186,93,0,1302,1303,5,196,0,0,1303,1390,1,0,0,0,1304,1305,5,
      76,0,0,1305,1306,5,195,0,0,1306,1307,3,186,93,0,1307,1308,5,196,0,
      0,1308,1390,1,0,0,0,1309,1310,5,95,0,0,1310,1311,5,195,0,0,1311,1312,
      3,186,93,0,1312,1313,5,196,0,0,1313,1390,1,0,0,0,1314,1315,5,108,0,
      0,1315,1316,5,195,0,0,1316,1317,3,186,93,0,1317,1318,5,196,0,0,1318,
      1390,1,0,0,0,1319,1320,5,113,0,0,1320,1321,5,195,0,0,1321,1322,3,198,
      99,0,1322,1323,5,196,0,0,1323,1390,1,0,0,0,1324,1325,5,114,0,0,1325,
      1326,5,195,0,0,1326,1327,3,198,99,0,1327,1328,5,196,0,0,1328,1390,
      1,0,0,0,1329,1330,5,115,0,0,1330,1331,5,195,0,0,1331,1332,3,198,99,
      0,1332,1333,5,196,0,0,1333,1390,1,0,0,0,1334,1335,5,116,0,0,1335,1336,
      5,195,0,0,1336,1337,3,198,99,0,1337,1338,5,196,0,0,1338,1390,1,0,0,
      0,1339,1340,5,117,0,0,1340,1341,5,195,0,0,1341,1342,3,198,99,0,1342,
      1343,5,196,0,0,1343,1390,1,0,0,0,1344,1345,5,118,0,0,1345,1346,5,195,
      0,0,1346,1347,3,198,99,0,1347,1348,5,196,0,0,1348,1390,1,0,0,0,1349,
      1350,5,119,0,0,1350,1351,5,195,0,0,1351,1352,3,198,99,0,1352,1353,
      5,196,0,0,1353,1390,1,0,0,0,1354,1355,5,120,0,0,1355,1356,5,195,0,
      0,1356,1357,3,198,99,0,1357,1358,5,196,0,0,1358,1390,1,0,0,0,1359,
      1360,5,121,0,0,1360,1361,5,195,0,0,1361,1362,3,198,99,0,1362,1363,
      5,196,0,0,1363,1390,1,0,0,0,1364,1365,5,122,0,0,1365,1366,5,195,0,
      0,1366,1367,3,198,99,0,1367,1368,5,196,0,0,1368,1390,1,0,0,0,1369,
      1370,5,123,0,0,1370,1371,5,195,0,0,1371,1372,3,198,99,0,1372,1373,
      5,196,0,0,1373,1390,1,0,0,0,1374,1375,5,124,0,0,1375,1376,5,195,0,
      0,1376,1377,3,198,99,0,1377,1378,5,196,0,0,1378,1390,1,0,0,0,1379,
      1380,5,125,0,0,1380,1381,5,195,0,0,1381,1382,3,198,99,0,1382,1383,
      5,196,0,0,1383,1390,1,0,0,0,1384,1385,5,179,0,0,1385,1386,5,195,0,
      0,1386,1387,3,194,97,0,1387,1388,5,196,0,0,1388,1390,1,0,0,0,1389,
      1276,1,0,0,0,1389,1281,1,0,0,0,1389,1284,1,0,0,0,1389,1289,1,0,0,0,
      1389,1294,1,0,0,0,1389,1299,1,0,0,0,1389,1304,1,0,0,0,1389,1309,1,
      0,0,0,1389,1314,1,0,0,0,1389,1319,1,0,0,0,1389,1324,1,0,0,0,1389,1329,
      1,0,0,0,1389,1334,1,0,0,0,1389,1339,1,0,0,0,1389,1344,1,0,0,0,1389,
      1349,1,0,0,0,1389,1354,1,0,0,0,1389,1359,1,0,0,0,1389,1364,1,0,0,0,
      1389,1369,1,0,0,0,1389,1374,1,0,0,0,1389,1379,1,0,0,0,1389,1384,1,
      0,0,0,1390,197,1,0,0,0,1391,1392,5,126,0,0,1392,1393,5,195,0,0,1393,
      1394,3,186,93,0,1394,1395,5,196,0,0,1395,1398,1,0,0,0,1396,1398,3,
      186,93,0,1397,1391,1,0,0,0,1397,1396,1,0,0,0,1398,199,1,0,0,0,1399,
      1400,5,77,0,0,1400,1402,3,186,93,0,1401,1403,3,202,101,0,1402,1401,
      1,0,0,0,1403,1404,1,0,0,0,1404,1402,1,0,0,0,1404,1405,1,0,0,0,1405,
      1407,1,0,0,0,1406,1408,3,204,102,0,1407,1406,1,0,0,0,1407,1408,1,0,
      0,0,1408,1409,1,0,0,0,1409,1410,5,78,0,0,1410,201,1,0,0,0,1411,1412,
      5,51,0,0,1412,1413,3,186,93,0,1413,1414,5,79,0,0,1414,1415,3,206,103,
      0,1415,203,1,0,0,0,1416,1417,5,10,0,0,1417,1418,3,206,103,0,1418,205,
      1,0,0,0,1419,1424,3,186,93,0,1420,1421,5,202,0,0,1421,1423,3,186,93,
      0,1422,1420,1,0,0,0,1423,1426,1,0,0,0,1424,1422,1,0,0,0,1424,1425,
      1,0,0,0,1425,207,1,0,0,0,1426,1424,1,0,0,0,1427,1428,5,63,0,0,1428,
      1429,5,64,0,0,1429,1430,3,258,129,0,1430,209,1,0,0,0,1431,1432,5,65,
      0,0,1432,1433,3,212,106,0,1433,211,1,0,0,0,1434,1439,3,214,107,0,1435,
      1436,5,69,0,0,1436,1438,3,214,107,0,1437,1435,1,0,0,0,1438,1441,1,
      0,0,0,1439,1437,1,0,0,0,1439,1440,1,0,0,0,1440,1453,1,0,0,0,1441,1439,
      1,0,0,0,1442,1447,3,214,107,0,1443,1444,5,70,0,0,1444,1446,3,214,107,
      0,1445,1443,1,0,0,0,1446,1449,1,0,0,0,1447,1445,1,0,0,0,1447,1448,
      1,0,0,0,1448,1453,1,0,0,0,1449,1447,1,0,0,0,1450,1451,5,71,0,0,1451,
      1453,3,214,107,0,1452,1434,1,0,0,0,1452,1442,1,0,0,0,1452,1450,1,0,
      0,0,1453,213,1,0,0,0,1454,1455,5,195,0,0,1455,1456,3,212,106,0,1456,
      1457,5,196,0,0,1457,1460,1,0,0,0,1458,1460,3,216,108,0,1459,1454,1,
      0,0,0,1459,1458,1,0,0,0,1460,215,1,0,0,0,1461,1462,3,186,93,0,1462,
      1463,3,218,109,0,1463,1464,3,220,110,0,1464,1470,1,0,0,0,1465,1466,
      3,196,98,0,1466,1467,3,218,109,0,1467,1468,3,220,110,0,1468,1470,1,
      0,0,0,1469,1461,1,0,0,0,1469,1465,1,0,0,0,1470,217,1,0,0,0,1471,1487,
      5,204,0,0,1472,1487,5,214,0,0,1473,1487,5,206,0,0,1474,1487,5,205,
      0,0,1475,1476,5,206,0,0,1476,1487,5,204,0,0,1477,1478,5,205,0,0,1478,
      1487,5,204,0,0,1479,1487,5,215,0,0,1480,1487,5,80,0,0,1481,1487,5,
      81,0,0,1482,1483,5,71,0,0,1483,1487,5,81,0,0,1484,1487,5,82,0,0,1485,
      1487,5,83,0,0,1486,1471,1,0,0,0,1486,1472,1,0,0,0,1486,1473,1,0,0,
      0,1486,1474,1,0,0,0,1486,1475,1,0,0,0,1486,1477,1,0,0,0,1486,1479,
      1,0,0,0,1486,1480,1,0,0,0,1486,1481,1,0,0,0,1486,1482,1,0,0,0,1486,
      1484,1,0,0,0,1486,1485,1,0,0,0,1487,219,1,0,0,0,1488,1509,5,26,0,0,
      1489,1509,5,192,0,0,1490,1509,3,224,112,0,1491,1509,5,193,0,0,1492,
      1509,5,171,0,0,1493,1509,5,172,0,0,1494,1509,3,254,127,0,1495,1500,
      5,173,0,0,1496,1498,5,203,0,0,1497,1499,5,189,0,0,1498,1497,1,0,0,
      0,1498,1499,1,0,0,0,1499,1501,1,0,0,0,1500,1496,1,0,0,0,1500,1501,
      1,0,0,0,1501,1509,1,0,0,0,1502,1503,5,195,0,0,1503,1504,3,180,90,0,
      1504,1505,5,196,0,0,1505,1509,1,0,0,0,1506,1509,3,222,111,0,1507,1509,
      3,252,126,0,1508,1488,1,0,0,0,1508,1489,1,0,0,0,1508,1490,1,0,0,0,
      1508,1491,1,0,0,0,1508,1492,1,0,0,0,1508,1493,1,0,0,0,1508,1494,1,
      0,0,0,1508,1495,1,0,0,0,1508,1502,1,0,0,0,1508,1506,1,0,0,0,1508,1507,
      1,0,0,0,1509,221,1,0,0,0,1510,1511,5,195,0,0,1511,1516,3,220,110,0,
      1512,1513,5,202,0,0,1513,1515,3,220,110,0,1514,1512,1,0,0,0,1515,1518,
      1,0,0,0,1516,1514,1,0,0,0,1516,1517,1,0,0,0,1517,1519,1,0,0,0,1518,
      1516,1,0,0,0,1519,1520,5,196,0,0,1520,223,1,0,0,0,1521,1523,7,7,0,
      0,1522,1521,1,0,0,0,1522,1523,1,0,0,0,1523,1524,1,0,0,0,1524,1525,
      7,14,0,0,1525,225,1,0,0,0,1526,1527,5,53,0,0,1527,1528,5,97,0,0,1528,
      1529,5,98,0,0,1529,1539,3,228,114,0,1530,1531,5,53,0,0,1531,1539,5,
      103,0,0,1532,1533,5,53,0,0,1533,1539,5,104,0,0,1534,1535,5,53,0,0,
      1535,1539,5,105,0,0,1536,1537,5,53,0,0,1537,1539,3,212,106,0,1538,
      1526,1,0,0,0,1538,1530,1,0,0,0,1538,1532,1,0,0,0,1538,1534,1,0,0,0,
      1538,1536,1,0,0,0,1539,227,1,0,0,0,1540,1545,3,230,115,0,1541,1542,
      5,217,0,0,1542,1544,3,230,115,0,1543,1541,1,0,0,0,1544,1547,1,0,0,
      0,1545,1543,1,0,0,0,1545,1546,1,0,0,0,1546,229,1,0,0,0,1547,1545,1,
      0,0,0,1548,1549,3,258,129,0,1549,1550,3,234,117,0,1550,1551,3,232,
      116,0,1551,231,1,0,0,0,1552,1565,3,258,129,0,1553,1554,5,195,0,0,1554,
      1559,3,258,129,0,1555,1556,5,202,0,0,1556,1558,3,258,129,0,1557,1555,
      1,0,0,0,1558,1561,1,0,0,0,1559,1557,1,0,0,0,1559,1560,1,0,0,0,1560,
      1562,1,0,0,0,1561,1559,1,0,0,0,1562,1563,5,195,0,0,1563,1565,1,0,0,
      0,1564,1552,1,0,0,0,1564,1553,1,0,0,0,1565,233,1,0,0,0,1566,1567,7,
      15,0,0,1567,235,1,0,0,0,1568,1569,5,89,0,0,1569,1570,5,67,0,0,1570,
      1573,3,182,91,0,1571,1572,5,93,0,0,1572,1574,3,212,106,0,1573,1571,
      1,0,0,0,1573,1574,1,0,0,0,1574,1604,1,0,0,0,1575,1576,5,89,0,0,1576,
      1577,5,67,0,0,1577,1578,5,94,0,0,1578,1579,5,195,0,0,1579,1584,3,186,
      93,0,1580,1581,5,202,0,0,1581,1583,3,186,93,0,1582,1580,1,0,0,0,1583,
      1586,1,0,0,0,1584,1582,1,0,0,0,1584,1585,1,0,0,0,1585,1587,1,0,0,0,
      1586,1584,1,0,0,0,1587,1588,5,196,0,0,1588,1604,1,0,0,0,1589,1590,
      5,89,0,0,1590,1591,5,67,0,0,1591,1592,5,107,0,0,1592,1593,5,195,0,
      0,1593,1598,3,186,93,0,1594,1595,5,202,0,0,1595,1597,3,186,93,0,1596,
      1594,1,0,0,0,1597,1600,1,0,0,0,1598,1596,1,0,0,0,1598,1599,1,0,0,0,
      1599,1601,1,0,0,0,1600,1598,1,0,0,0,1601,1602,5,196,0,0,1602,1604,
      1,0,0,0,1603,1568,1,0,0,0,1603,1575,1,0,0,0,1603,1589,1,0,0,0,1604,
      237,1,0,0,0,1605,1606,5,66,0,0,1606,1607,5,67,0,0,1607,1608,3,240,
      120,0,1608,239,1,0,0,0,1609,1614,3,242,121,0,1610,1611,5,202,0,0,1611,
      1613,3,242,121,0,1612,1610,1,0,0,0,1613,1616,1,0,0,0,1614,1612,1,0,
      0,0,1614,1615,1,0,0,0,1615,241,1,0,0,0,1616,1614,1,0,0,0,1617,1619,
      3,186,93,0,1618,1620,7,16,0,0,1619,1618,1,0,0,0,1619,1620,1,0,0,0,
      1620,1623,1,0,0,0,1621,1622,5,86,0,0,1622,1624,7,17,0,0,1623,1621,
      1,0,0,0,1623,1624,1,0,0,0,1624,1634,1,0,0,0,1625,1627,3,196,98,0,1626,
      1628,7,16,0,0,1627,1626,1,0,0,0,1627,1628,1,0,0,0,1628,1631,1,0,0,
      0,1629,1630,5,86,0,0,1630,1632,7,17,0,0,1631,1629,1,0,0,0,1631,1632,
      1,0,0,0,1632,1634,1,0,0,0,1633,1617,1,0,0,0,1633,1625,1,0,0,0,1634,
      243,1,0,0,0,1635,1636,5,68,0,0,1636,1640,5,189,0,0,1637,1638,5,68,
      0,0,1638,1640,3,252,126,0,1639,1635,1,0,0,0,1639,1637,1,0,0,0,1640,
      245,1,0,0,0,1641,1642,5,96,0,0,1642,1646,5,189,0,0,1643,1644,5,96,
      0,0,1644,1646,3,252,126,0,1645,1641,1,0,0,0,1645,1643,1,0,0,0,1646,
      247,1,0,0,0,1647,1648,5,90,0,0,1648,1649,5,91,0,0,1649,249,1,0,0,0,
      1650,1651,5,15,0,0,1651,1653,7,18,0,0,1652,1650,1,0,0,0,1653,1656,
      1,0,0,0,1654,1652,1,0,0,0,1654,1655,1,0,0,0,1655,251,1,0,0,0,1656,
      1654,1,0,0,0,1657,1658,5,211,0,0,1658,1659,3,148,74,0,1659,253,1,0,
      0,0,1660,1747,5,127,0,0,1661,1747,5,128,0,0,1662,1747,5,129,0,0,1663,
      1747,5,130,0,0,1664,1747,5,131,0,0,1665,1747,5,132,0,0,1666,1747,5,
      133,0,0,1667,1747,5,134,0,0,1668,1747,5,135,0,0,1669,1747,5,136,0,
      0,1670,1747,5,137,0,0,1671,1672,5,138,0,0,1672,1673,5,211,0,0,1673,
      1747,3,256,128,0,1674,1675,5,139,0,0,1675,1676,5,211,0,0,1676,1747,
      3,256,128,0,1677,1678,5,140,0,0,1678,1679,5,211,0,0,1679,1747,3,256,
      128,0,1680,1681,5,141,0,0,1681,1682,5,211,0,0,1682,1747,3,256,128,
      0,1683,1684,5,142,0,0,1684,1685,5,211,0,0,1685,1747,3,256,128,0,1686,
      1687,5,143,0,0,1687,1688,5,211,0,0,1688,1747,3,256,128,0,1689,1690,
      5,144,0,0,1690,1691,5,211,0,0,1691,1747,3,256,128,0,1692,1693,5,145,
      0,0,1693,1694,5,211,0,0,1694,1747,3,256,128,0,1695,1696,5,146,0,0,
      1696,1697,5,211,0,0,1697,1747,3,256,128,0,1698,1747,5,147,0,0,1699,
      1747,5,148,0,0,1700,1747,5,149,0,0,1701,1702,5,150,0,0,1702,1703,5,
      211,0,0,1703,1747,3,256,128,0,1704,1705,5,151,0,0,1705,1706,5,211,
      0,0,1706,1747,3,256,128,0,1707,1708,5,152,0,0,1708,1709,5,211,0,0,
      1709,1747,3,256,128,0,1710,1747,5,153,0,0,1711,1747,5,154,0,0,1712,
      1747,5,155,0,0,1713,1714,5,156,0,0,1714,1715,5,211,0,0,1715,1747,3,
      256,128,0,1716,1717,5,157,0,0,1717,1718,5,211,0,0,1718,1747,3,256,
      128,0,1719,1720,5,158,0,0,1720,1721,5,211,0,0,1721,1747,3,256,128,
      0,1722,1747,5,159,0,0,1723,1747,5,160,0,0,1724,1747,5,161,0,0,1725,
      1726,5,162,0,0,1726,1727,5,211,0,0,1727,1747,3,256,128,0,1728,1729,
      5,163,0,0,1729,1730,5,211,0,0,1730,1747,3,256,128,0,1731,1732,5,164,
      0,0,1732,1733,5,211,0,0,1733,1747,3,256,128,0,1734,1747,5,165,0,0,
      1735,1747,5,166,0,0,1736,1747,5,167,0,0,1737,1738,5,168,0,0,1738,1739,
      5,211,0,0,1739,1747,3,256,128,0,1740,1741,5,169,0,0,1741,1742,5,211,
      0,0,1742,1747,3,256,128,0,1743,1744,5,170,0,0,1744,1745,5,211,0,0,
      1745,1747,3,256,128,0,1746,1660,1,0,0,0,1746,1661,1,0,0,0,1746,1662,
      1,0,0,0,1746,1663,1,0,0,0,1746,1664,1,0,0,0,1746,1665,1,0,0,0,1746,
      1666,1,0,0,0,1746,1667,1,0,0,0,1746,1668,1,0,0,0,1746,1669,1,0,0,0,
      1746,1670,1,0,0,0,1746,1671,1,0,0,0,1746,1674,1,0,0,0,1746,1677,1,
      0,0,0,1746,1680,1,0,0,0,1746,1683,1,0,0,0,1746,1686,1,0,0,0,1746,1689,
      1,0,0,0,1746,1692,1,0,0,0,1746,1695,1,0,0,0,1746,1698,1,0,0,0,1746,
      1699,1,0,0,0,1746,1700,1,0,0,0,1746,1701,1,0,0,0,1746,1704,1,0,0,0,
      1746,1707,1,0,0,0,1746,1710,1,0,0,0,1746,1711,1,0,0,0,1746,1712,1,
      0,0,0,1746,1713,1,0,0,0,1746,1716,1,0,0,0,1746,1719,1,0,0,0,1746,1722,
      1,0,0,0,1746,1723,1,0,0,0,1746,1724,1,0,0,0,1746,1725,1,0,0,0,1746,
      1728,1,0,0,0,1746,1731,1,0,0,0,1746,1734,1,0,0,0,1746,1735,1,0,0,0,
      1746,1736,1,0,0,0,1746,1737,1,0,0,0,1746,1740,1,0,0,0,1746,1743,1,
      0,0,0,1747,255,1,0,0,0,1748,1750,7,7,0,0,1749,1748,1,0,0,0,1749,1750,
      1,0,0,0,1750,1751,1,0,0,0,1751,1752,5,189,0,0,1752,257,1,0,0,0,1753,
      1754,3,282,141,0,1754,259,1,0,0,0,1755,1756,5,188,0,0,1756,1757,3,
      262,131,0,1757,1758,5,200,0,0,1758,1766,1,0,0,0,1759,1760,5,199,0,
      0,1760,1761,5,174,0,0,1761,1762,3,252,126,0,1762,1763,3,262,131,0,
      1763,1764,5,200,0,0,1764,1766,1,0,0,0,1765,1755,1,0,0,0,1765,1759,
      1,0,0,0,1766,261,1,0,0,0,1767,1768,5,81,0,0,1768,1770,3,266,133,0,
      1769,1767,1,0,0,0,1769,1770,1,0,0,0,1770,1773,1,0,0,0,1771,1772,5,
      186,0,0,1772,1774,3,268,134,0,1773,1771,1,0,0,0,1773,1774,1,0,0,0,
      1774,1778,1,0,0,0,1775,1777,3,264,132,0,1776,1775,1,0,0,0,1777,1780,
      1,0,0,0,1778,1776,1,0,0,0,1778,1779,1,0,0,0,1779,1782,1,0,0,0,1780,
      1778,1,0,0,0,1781,1783,3,244,122,0,1782,1781,1,0,0,0,1782,1783,1,0,
      0,0,1783,1786,1,0,0,0,1784,1785,5,46,0,0,1785,1787,3,274,137,0,1786,
      1784,1,0,0,0,1786,1787,1,0,0,0,1787,263,1,0,0,0,1788,1789,5,53,0,0,
      1789,1790,5,185,0,0,1790,1791,5,204,0,0,1791,1829,5,193,0,0,1792,1793,
      5,53,0,0,1793,1794,5,97,0,0,1794,1795,5,98,0,0,1795,1829,3,228,114,
      0,1796,1797,5,53,0,0,1797,1803,5,183,0,0,1798,1799,5,195,0,0,1799,
      1800,5,184,0,0,1800,1801,5,204,0,0,1801,1802,5,189,0,0,1802,1804,5,
      196,0,0,1803,1798,1,0,0,0,1803,1804,1,0,0,0,1804,1829,1,0,0,0,1805,
      1806,5,53,0,0,1806,1807,5,182,0,0,1807,1808,5,81,0,0,1808,1809,5,195,
      0,0,1809,1810,3,278,139,0,1810,1811,5,196,0,0,1811,1829,1,0,0,0,1812,
      1813,5,53,0,0,1813,1814,5,182,0,0,1814,1815,5,204,0,0,1815,1829,5,
      193,0,0,1816,1817,5,53,0,0,1817,1818,5,181,0,0,1818,1819,5,204,0,0,
      1819,1829,5,193,0,0,1820,1821,5,53,0,0,1821,1822,5,180,0,0,1822,1823,
      5,204,0,0,1823,1829,5,193,0,0,1824,1825,5,53,0,0,1825,1829,5,105,0,
      0,1826,1827,5,53,0,0,1827,1829,5,104,0,0,1828,1788,1,0,0,0,1828,1792,
      1,0,0,0,1828,1796,1,0,0,0,1828,1805,1,0,0,0,1828,1812,1,0,0,0,1828,
      1816,1,0,0,0,1828,1820,1,0,0,0,1828,1824,1,0,0,0,1828,1826,1,0,0,0,
      1829,265,1,0,0,0,1830,1831,7,19,0,0,1831,1832,5,179,0,0,1832,267,1,
      0,0,0,1833,1838,3,270,135,0,1834,1835,5,202,0,0,1835,1837,3,268,134,
      0,1836,1834,1,0,0,0,1837,1840,1,0,0,0,1838,1836,1,0,0,0,1838,1839,
      1,0,0,0,1839,269,1,0,0,0,1840,1838,1,0,0,0,1841,1867,3,280,140,0,1842,
      1843,5,195,0,0,1843,1846,3,272,136,0,1844,1845,5,65,0,0,1845,1847,
      3,212,106,0,1846,1844,1,0,0,0,1846,1847,1,0,0,0,1847,1852,1,0,0,0,
      1848,1849,5,63,0,0,1849,1850,5,187,0,0,1850,1851,5,204,0,0,1851,1853,
      3,280,140,0,1852,1848,1,0,0,0,1852,1853,1,0,0,0,1853,1857,1,0,0,0,
      1854,1855,5,66,0,0,1855,1856,5,67,0,0,1856,1858,3,240,120,0,1857,1854,
      1,0,0,0,1857,1858,1,0,0,0,1858,1860,1,0,0,0,1859,1861,3,244,122,0,
      1860,1859,1,0,0,0,1860,1861,1,0,0,0,1861,1863,1,0,0,0,1862,1864,3,
      246,123,0,1863,1862,1,0,0,0,1863,1864,1,0,0,0,1864,1865,1,0,0,0,1865,
      1866,5,196,0,0,1866,1868,1,0,0,0,1867,1842,1,0,0,0,1867,1868,1,0,0,
      0,1868,271,1,0,0,0,1869,1874,3,280,140,0,1870,1871,5,202,0,0,1871,
      1873,3,272,136,0,1872,1870,1,0,0,0,1873,1876,1,0,0,0,1874,1872,1,0,
      0,0,1874,1875,1,0,0,0,1875,273,1,0,0,0,1876,1874,1,0,0,0,1877,1880,
      3,276,138,0,1878,1879,5,202,0,0,1879,1881,3,274,137,0,1880,1878,1,
      0,0,0,1880,1881,1,0,0,0,1881,275,1,0,0,0,1882,1883,7,20,0,0,1883,277,
      1,0,0,0,1884,1887,5,193,0,0,1885,1886,5,202,0,0,1886,1888,3,278,139,
      0,1887,1885,1,0,0,0,1887,1888,1,0,0,0,1888,279,1,0,0,0,1889,1894,3,
      282,141,0,1890,1891,5,203,0,0,1891,1893,3,280,140,0,1892,1890,1,0,
      0,0,1893,1896,1,0,0,0,1894,1892,1,0,0,0,1894,1895,1,0,0,0,1895,281,
      1,0,0,0,1896,1894,1,0,0,0,1897,1898,7,21,0,0,1898,283,1,0,0,0,1899,
      1900,7,22,0,0,1900,285,1,0,0,0,189,296,312,318,325,331,338,344,348,
      354,358,366,375,382,391,397,399,408,417,424,430,436,441,443,464,473,
      477,483,499,507,513,518,529,535,543,547,549,558,567,572,576,580,584,
      586,594,603,609,620,630,633,637,642,652,660,663,666,674,685,711,718,
      727,741,747,750,761,769,775,788,791,794,798,817,824,831,838,845,849,
      855,864,875,880,885,890,897,910,914,918,920,924,942,963,979,985,1022,
      1034,1036,1052,1057,1064,1070,1073,1078,1088,1095,1103,1117,1119,1127,
      1142,1149,1162,1165,1168,1171,1174,1177,1180,1183,1188,1195,1198,1201,
      1206,1213,1218,1222,1228,1231,1238,1243,1248,1252,1260,1265,1269,1272,
      1389,1397,1404,1407,1424,1439,1447,1452,1459,1469,1486,1498,1500,1508,
      1516,1522,1538,1545,1559,1564,1573,1584,1598,1603,1614,1619,1623,1627,
      1631,1633,1639,1645,1654,1746,1749,1765,1769,1773,1778,1782,1786,1803,
      1828,1838,1846,1852,1857,1860,1863,1867,1874,1880,1887,1894
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
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
  List<AnnotationContext> annotations() => getRuleContexts<AnnotationContext>();
  AnnotationContext? annotation(int i) => getRuleContext<AnnotationContext>(i);
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
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  WhenLiteralContext? whenLiteral() => getRuleContext<WhenLiteralContext>(0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
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
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
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
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
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

class AccessLevelContext extends ParserRuleContext {
  TerminalNode? AS() => getToken(ApexParser.TOKEN_AS, 0);
  TerminalNode? SYSTEM() => getToken(ApexParser.TOKEN_SYSTEM, 0);
  TerminalNode? USER() => getToken(ApexParser.TOKEN_USER, 0);
  AccessLevelContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_accessLevel;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterAccessLevel(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitAccessLevel(this);
  }
}

class InsertStatementContext extends ParserRuleContext {
  TerminalNode? INSERT() => getToken(ApexParser.TOKEN_INSERT, 0);
  ExpressionContext? expression() => getRuleContext<ExpressionContext>(0);
  TerminalNode? SEMI() => getToken(ApexParser.TOKEN_SEMI, 0);
  AccessLevelContext? accessLevel() => getRuleContext<AccessLevelContext>(0);
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
  AccessLevelContext? accessLevel() => getRuleContext<AccessLevelContext>(0);
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
  AccessLevelContext? accessLevel() => getRuleContext<AccessLevelContext>(0);
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
  AccessLevelContext? accessLevel() => getRuleContext<AccessLevelContext>(0);
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
  AccessLevelContext? accessLevel() => getRuleContext<AccessLevelContext>(0);
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
  AccessLevelContext? accessLevel() => getRuleContext<AccessLevelContext>(0);
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
  TypeOfContext? typeOf() => getRuleContext<TypeOfContext>(0);
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
  TerminalNode? SYSTEM_MODE() => getToken(ApexParser.TOKEN_SYSTEM_MODE, 0);
  TerminalNode? USER_MODE() => getToken(ApexParser.TOKEN_USER_MODE, 0);
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
  TerminalNode? N_DAYS_AGO_N() => getToken(ApexParser.TOKEN_N_DAYS_AGO_N, 0);
  TerminalNode? NEXT_N_WEEKS_N() => getToken(ApexParser.TOKEN_NEXT_N_WEEKS_N, 0);
  TerminalNode? LAST_N_WEEKS_N() => getToken(ApexParser.TOKEN_LAST_N_WEEKS_N, 0);
  TerminalNode? N_WEEKS_AGO_N() => getToken(ApexParser.TOKEN_N_WEEKS_AGO_N, 0);
  TerminalNode? NEXT_N_MONTHS_N() => getToken(ApexParser.TOKEN_NEXT_N_MONTHS_N, 0);
  TerminalNode? LAST_N_MONTHS_N() => getToken(ApexParser.TOKEN_LAST_N_MONTHS_N, 0);
  TerminalNode? N_MONTHS_AGO_N() => getToken(ApexParser.TOKEN_N_MONTHS_AGO_N, 0);
  TerminalNode? THIS_QUARTER() => getToken(ApexParser.TOKEN_THIS_QUARTER, 0);
  TerminalNode? LAST_QUARTER() => getToken(ApexParser.TOKEN_LAST_QUARTER, 0);
  TerminalNode? NEXT_QUARTER() => getToken(ApexParser.TOKEN_NEXT_QUARTER, 0);
  TerminalNode? NEXT_N_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_QUARTERS_N, 0);
  TerminalNode? LAST_N_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_QUARTERS_N, 0);
  TerminalNode? N_QUARTERS_AGO_N() => getToken(ApexParser.TOKEN_N_QUARTERS_AGO_N, 0);
  TerminalNode? THIS_YEAR() => getToken(ApexParser.TOKEN_THIS_YEAR, 0);
  TerminalNode? LAST_YEAR() => getToken(ApexParser.TOKEN_LAST_YEAR, 0);
  TerminalNode? NEXT_YEAR() => getToken(ApexParser.TOKEN_NEXT_YEAR, 0);
  TerminalNode? NEXT_N_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_YEARS_N, 0);
  TerminalNode? LAST_N_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_YEARS_N, 0);
  TerminalNode? N_YEARS_AGO_N() => getToken(ApexParser.TOKEN_N_YEARS_AGO_N, 0);
  TerminalNode? THIS_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_THIS_FISCAL_QUARTER, 0);
  TerminalNode? LAST_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_LAST_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_NEXT_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? LAST_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? N_FISCAL_QUARTERS_AGO_N() => getToken(ApexParser.TOKEN_N_FISCAL_QUARTERS_AGO_N, 0);
  TerminalNode? THIS_FISCAL_YEAR() => getToken(ApexParser.TOKEN_THIS_FISCAL_YEAR, 0);
  TerminalNode? LAST_FISCAL_YEAR() => getToken(ApexParser.TOKEN_LAST_FISCAL_YEAR, 0);
  TerminalNode? NEXT_FISCAL_YEAR() => getToken(ApexParser.TOKEN_NEXT_FISCAL_YEAR, 0);
  TerminalNode? NEXT_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_YEARS_N, 0);
  TerminalNode? LAST_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_YEARS_N, 0);
  TerminalNode? N_FISCAL_YEARS_AGO_N() => getToken(ApexParser.TOKEN_N_FISCAL_YEARS_AGO_N, 0);
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
  TerminalNode? IN() => getToken(ApexParser.TOKEN_IN, 0);
  SearchGroupContext? searchGroup() => getRuleContext<SearchGroupContext>(0);
  TerminalNode? RETURNING() => getToken(ApexParser.TOKEN_RETURNING, 0);
  FieldSpecListContext? fieldSpecList() => getRuleContext<FieldSpecListContext>(0);
  List<SoslWithClauseContext> soslWithClauses() => getRuleContexts<SoslWithClauseContext>();
  SoslWithClauseContext? soslWithClause(int i) => getRuleContext<SoslWithClauseContext>(i);
  LimitClauseContext? limitClause() => getRuleContext<LimitClauseContext>(0);
  TerminalNode? UPDATE() => getToken(ApexParser.TOKEN_UPDATE, 0);
  UpdateListContext? updateList() => getRuleContext<UpdateListContext>(0);
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

class SoslWithClauseContext extends ParserRuleContext {
  TerminalNode? WITH() => getToken(ApexParser.TOKEN_WITH, 0);
  TerminalNode? DIVISION() => getToken(ApexParser.TOKEN_DIVISION, 0);
  TerminalNode? ASSIGN() => getToken(ApexParser.TOKEN_ASSIGN, 0);
  TerminalNode? StringLiteral() => getToken(ApexParser.TOKEN_StringLiteral, 0);
  TerminalNode? DATA() => getToken(ApexParser.TOKEN_DATA, 0);
  TerminalNode? CATEGORY() => getToken(ApexParser.TOKEN_CATEGORY, 0);
  FilteringExpressionContext? filteringExpression() => getRuleContext<FilteringExpressionContext>(0);
  TerminalNode? SNIPPET() => getToken(ApexParser.TOKEN_SNIPPET, 0);
  TerminalNode? LPAREN() => getToken(ApexParser.TOKEN_LPAREN, 0);
  TerminalNode? TARGET_LENGTH() => getToken(ApexParser.TOKEN_TARGET_LENGTH, 0);
  TerminalNode? IntegerLiteral() => getToken(ApexParser.TOKEN_IntegerLiteral, 0);
  TerminalNode? RPAREN() => getToken(ApexParser.TOKEN_RPAREN, 0);
  TerminalNode? NETWORK() => getToken(ApexParser.TOKEN_NETWORK, 0);
  TerminalNode? IN() => getToken(ApexParser.TOKEN_IN, 0);
  NetworkListContext? networkList() => getRuleContext<NetworkListContext>(0);
  TerminalNode? PRICEBOOKID() => getToken(ApexParser.TOKEN_PRICEBOOKID, 0);
  TerminalNode? METADATA() => getToken(ApexParser.TOKEN_METADATA, 0);
  TerminalNode? USER_MODE() => getToken(ApexParser.TOKEN_USER_MODE, 0);
  TerminalNode? SYSTEM_MODE() => getToken(ApexParser.TOKEN_SYSTEM_MODE, 0);
  SoslWithClauseContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_soslWithClause;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterSoslWithClause(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitSoslWithClause(this);
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
  TerminalNode? VOID() => getToken(ApexParser.TOKEN_VOID, 0);
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
  TerminalNode? USER() => getToken(ApexParser.TOKEN_USER, 0);
  TerminalNode? SYSTEM() => getToken(ApexParser.TOKEN_SYSTEM, 0);
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
  TerminalNode? USER_MODE() => getToken(ApexParser.TOKEN_USER_MODE, 0);
  TerminalNode? SYSTEM_MODE() => getToken(ApexParser.TOKEN_SYSTEM_MODE, 0);
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
  TerminalNode? N_DAYS_AGO_N() => getToken(ApexParser.TOKEN_N_DAYS_AGO_N, 0);
  TerminalNode? NEXT_N_WEEKS_N() => getToken(ApexParser.TOKEN_NEXT_N_WEEKS_N, 0);
  TerminalNode? LAST_N_WEEKS_N() => getToken(ApexParser.TOKEN_LAST_N_WEEKS_N, 0);
  TerminalNode? N_WEEKS_AGO_N() => getToken(ApexParser.TOKEN_N_WEEKS_AGO_N, 0);
  TerminalNode? NEXT_N_MONTHS_N() => getToken(ApexParser.TOKEN_NEXT_N_MONTHS_N, 0);
  TerminalNode? LAST_N_MONTHS_N() => getToken(ApexParser.TOKEN_LAST_N_MONTHS_N, 0);
  TerminalNode? N_MONTHS_AGO_N() => getToken(ApexParser.TOKEN_N_MONTHS_AGO_N, 0);
  TerminalNode? THIS_QUARTER() => getToken(ApexParser.TOKEN_THIS_QUARTER, 0);
  TerminalNode? LAST_QUARTER() => getToken(ApexParser.TOKEN_LAST_QUARTER, 0);
  TerminalNode? NEXT_QUARTER() => getToken(ApexParser.TOKEN_NEXT_QUARTER, 0);
  TerminalNode? NEXT_N_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_QUARTERS_N, 0);
  TerminalNode? LAST_N_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_QUARTERS_N, 0);
  TerminalNode? N_QUARTERS_AGO_N() => getToken(ApexParser.TOKEN_N_QUARTERS_AGO_N, 0);
  TerminalNode? THIS_YEAR() => getToken(ApexParser.TOKEN_THIS_YEAR, 0);
  TerminalNode? LAST_YEAR() => getToken(ApexParser.TOKEN_LAST_YEAR, 0);
  TerminalNode? NEXT_YEAR() => getToken(ApexParser.TOKEN_NEXT_YEAR, 0);
  TerminalNode? NEXT_N_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_YEARS_N, 0);
  TerminalNode? LAST_N_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_YEARS_N, 0);
  TerminalNode? N_YEARS_AGO_N() => getToken(ApexParser.TOKEN_N_YEARS_AGO_N, 0);
  TerminalNode? THIS_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_THIS_FISCAL_QUARTER, 0);
  TerminalNode? LAST_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_LAST_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_NEXT_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? LAST_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? N_FISCAL_QUARTERS_AGO_N() => getToken(ApexParser.TOKEN_N_FISCAL_QUARTERS_AGO_N, 0);
  TerminalNode? THIS_FISCAL_YEAR() => getToken(ApexParser.TOKEN_THIS_FISCAL_YEAR, 0);
  TerminalNode? LAST_FISCAL_YEAR() => getToken(ApexParser.TOKEN_LAST_FISCAL_YEAR, 0);
  TerminalNode? NEXT_FISCAL_YEAR() => getToken(ApexParser.TOKEN_NEXT_FISCAL_YEAR, 0);
  TerminalNode? NEXT_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_YEARS_N, 0);
  TerminalNode? LAST_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_YEARS_N, 0);
  TerminalNode? N_FISCAL_YEARS_AGO_N() => getToken(ApexParser.TOKEN_N_FISCAL_YEARS_AGO_N, 0);
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
  TerminalNode? VOID() => getToken(ApexParser.TOKEN_VOID, 0);
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
  TerminalNode? USER() => getToken(ApexParser.TOKEN_USER, 0);
  TerminalNode? SYSTEM() => getToken(ApexParser.TOKEN_SYSTEM, 0);
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
  TerminalNode? SYSTEM_MODE() => getToken(ApexParser.TOKEN_SYSTEM_MODE, 0);
  TerminalNode? USER_MODE() => getToken(ApexParser.TOKEN_USER_MODE, 0);
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
  TerminalNode? N_DAYS_AGO_N() => getToken(ApexParser.TOKEN_N_DAYS_AGO_N, 0);
  TerminalNode? NEXT_N_WEEKS_N() => getToken(ApexParser.TOKEN_NEXT_N_WEEKS_N, 0);
  TerminalNode? LAST_N_WEEKS_N() => getToken(ApexParser.TOKEN_LAST_N_WEEKS_N, 0);
  TerminalNode? N_WEEKS_AGO_N() => getToken(ApexParser.TOKEN_N_WEEKS_AGO_N, 0);
  TerminalNode? NEXT_N_MONTHS_N() => getToken(ApexParser.TOKEN_NEXT_N_MONTHS_N, 0);
  TerminalNode? LAST_N_MONTHS_N() => getToken(ApexParser.TOKEN_LAST_N_MONTHS_N, 0);
  TerminalNode? N_MONTHS_AGO_N() => getToken(ApexParser.TOKEN_N_MONTHS_AGO_N, 0);
  TerminalNode? THIS_QUARTER() => getToken(ApexParser.TOKEN_THIS_QUARTER, 0);
  TerminalNode? LAST_QUARTER() => getToken(ApexParser.TOKEN_LAST_QUARTER, 0);
  TerminalNode? NEXT_QUARTER() => getToken(ApexParser.TOKEN_NEXT_QUARTER, 0);
  TerminalNode? NEXT_N_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_QUARTERS_N, 0);
  TerminalNode? LAST_N_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_QUARTERS_N, 0);
  TerminalNode? N_QUARTERS_AGO_N() => getToken(ApexParser.TOKEN_N_QUARTERS_AGO_N, 0);
  TerminalNode? THIS_YEAR() => getToken(ApexParser.TOKEN_THIS_YEAR, 0);
  TerminalNode? LAST_YEAR() => getToken(ApexParser.TOKEN_LAST_YEAR, 0);
  TerminalNode? NEXT_YEAR() => getToken(ApexParser.TOKEN_NEXT_YEAR, 0);
  TerminalNode? NEXT_N_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_YEARS_N, 0);
  TerminalNode? LAST_N_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_YEARS_N, 0);
  TerminalNode? N_YEARS_AGO_N() => getToken(ApexParser.TOKEN_N_YEARS_AGO_N, 0);
  TerminalNode? THIS_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_THIS_FISCAL_QUARTER, 0);
  TerminalNode? LAST_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_LAST_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_FISCAL_QUARTER() => getToken(ApexParser.TOKEN_NEXT_FISCAL_QUARTER, 0);
  TerminalNode? NEXT_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? LAST_N_FISCAL_QUARTERS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_QUARTERS_N, 0);
  TerminalNode? N_FISCAL_QUARTERS_AGO_N() => getToken(ApexParser.TOKEN_N_FISCAL_QUARTERS_AGO_N, 0);
  TerminalNode? THIS_FISCAL_YEAR() => getToken(ApexParser.TOKEN_THIS_FISCAL_YEAR, 0);
  TerminalNode? LAST_FISCAL_YEAR() => getToken(ApexParser.TOKEN_LAST_FISCAL_YEAR, 0);
  TerminalNode? NEXT_FISCAL_YEAR() => getToken(ApexParser.TOKEN_NEXT_FISCAL_YEAR, 0);
  TerminalNode? NEXT_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_NEXT_N_FISCAL_YEARS_N, 0);
  TerminalNode? LAST_N_FISCAL_YEARS_N() => getToken(ApexParser.TOKEN_LAST_N_FISCAL_YEARS_N, 0);
  TerminalNode? N_FISCAL_YEARS_AGO_N() => getToken(ApexParser.TOKEN_N_FISCAL_YEARS_AGO_N, 0);
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
  List<AnnotationContext> annotations() => getRuleContexts<AnnotationContext>();
  AnnotationContext? annotation(int i) => getRuleContext<AnnotationContext>(i);
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
  List<AnnotationContext> annotations() => getRuleContexts<AnnotationContext>();
  AnnotationContext? annotation(int i) => getRuleContext<AnnotationContext>(i);
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
  List<AnnotationContext> annotations() => getRuleContexts<AnnotationContext>();
  AnnotationContext? annotation(int i) => getRuleContext<AnnotationContext>(i);
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
  List<AnnotationContext> annotations() => getRuleContexts<AnnotationContext>();
  AnnotationContext? annotation(int i) => getRuleContext<AnnotationContext>(i);
  List<ModifierContext> modifiers() => getRuleContexts<ModifierContext>();
  ModifierContext? modifier(int i) => getRuleContext<ModifierContext>(i);
  TerminalNode? END_GROUP_COMMENT() => getToken(ApexParser.TOKEN_END_GROUP_COMMENT, 0);
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

class NullCoalesceExpressionContext extends ExpressionContext {
  List<ExpressionContext> expressions() => getRuleContexts<ExpressionContext>();
  ExpressionContext? expression(int i) => getRuleContext<ExpressionContext>(i);
  TerminalNode? NULL_COALESCE() => getToken(ApexParser.TOKEN_NULL_COALESCE, 0);
  NullCoalesceExpressionContext(ExpressionContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterNullCoalesceExpression(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitNullCoalesceExpression(this);
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

class VoidPrimaryContext extends PrimaryContext {
  TerminalNode? VOID() => getToken(ApexParser.TOKEN_VOID, 0);
  TerminalNode? DOT() => getToken(ApexParser.TOKEN_DOT, 0);
  TerminalNode? CLASS() => getToken(ApexParser.TOKEN_CLASS, 0);
  VoidPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.enterVoidPrimary(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is ApexParserListener) listener.exitVoidPrimary(this);
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