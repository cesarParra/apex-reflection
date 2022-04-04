lexer grammar ApexLexer;

channels {
    WHITESPACE_CHANNEL,
    COMMENT_CHANNEL
}

// Keywords
ABSTRACT      : A B S T R A C T;
AFTER         : A F T E R;
BEFORE        : B E F O R E;
BREAK         : B R E A K;
CATCH         : C A T C H;
CLASS         : C L A S S;
CONTINUE      : C O N T I N U E;
DELETE        : 'delete';
DO            : 'do';
ELSE          : 'else';
ENUM          : 'enum';
EXTENDS       : 'extends';
FINAL         : 'final';
FINALLY       : 'finally';
FOR           : 'for';
GET           : 'get';
GLOBAL	      : 'global';
IF            : 'if';
IMPLEMENTS    : 'implements';
INHERITED     : 'inherited';
INSERT        : 'insert';
INSTANCEOF    : I N S T A N C E O F;
INTERFACE     : 'interface';
MERGE         : 'merge';
NEW           : 'new';
NULL          : 'null';
ON            : 'on';
OVERRIDE      : 'override';
PRIVATE       : 'private';
PROTECTED     : 'protected';
PUBLIC        : 'public';
RETURN        : 'return';
SYSTEMRUNAS   : S Y S T E M DOT R U N A S;
SET           : 'set';
SHARING       : 'sharing';
STATIC        : 'static';
SUPER         : 'super';
SWITCH        : S W I T C H;
TESTMETHOD    : T E S T M E T H O D;
THIS          : 'this';
THROW         : 'throw';
TRANSIENT     : 'transient';
TRIGGER       : 'trigger';
TRY           : 'try';
UNDELETE      : 'undelete';
UPDATE        : 'update';
UPSERT        : 'upsert';
VIRTUAL       : 'virtual';
VOID          : 'void';
WEBSERVICE    : 'webservice';
WHEN          : 'when';
WHILE         : 'while';
WITH          : 'with';
WITHOUT       : 'without';

// Apex generic types, Set is defined above for properties
LIST          : L I S T;
MAP           : M A P;

// Soql specific keywords
SELECT          : S E L E C T;
COUNT           : C O U N T;
FROM            : F R O M;
AS              : A S;
USING           : U S I N G;
SCOPE           : S C O P E;
WHERE           : W H E R E;
ORDER           : O R D E R;
BY              : B Y;
LIMIT           : L I M I T;
SOQLAND         : A N D;
SOQLOR          : O R;
NOT             : N O T;
AVG             : A V G;
COUNT_DISTINCT  : C O U N T UNDERSCORE D I S T I N C T;
MIN             : M I N;
MAX             : M A X;
SUM             : S U M;
TYPEOF          : T Y P E O F;
END             : E N D;
THEN            : T H E N;
LIKE            : L I K E;
IN              : I N;
INCLUDES        : I N C L U D E S;
EXCLUDES        : E X C L U D E S;
ASC             : A S C;
DESC            : D E S C;
NULLS           : N U L L S;
FIRST           : F I R S T;
LAST            : L A S T;
GROUP           : G R O U P;
ALL             : A L L;
ROWS            : R O W S;
VIEW            : V I E W;
HAVING          : H A V I N G;
ROLLUP          : R O L L U P;
TOLABEL         : T O L A B E L;
OFFSET          : O F F S E T;
DATA            : D A T A;
CATEGORY        : C A T E G O R Y;
AT              : A T;
ABOVE           : A B O V E;
BELOW           : B E L O W;
ABOVE_OR_BELOW  : A B O V E UNDERSCORE O R UNDERSCORE B E L O W;
SECURITY_ENFORCED : S E C U R I T Y UNDERSCORE E N F O R C E D;
REFERENCE       : R E F E R E N C E;
CUBE            : C U B E;
FORMAT          : F O R M A T;
TRACKING        : T R A C K I N G;
VIEWSTAT        : V I E W S T A T;
CUSTOM          : C U S T O M;
STANDARD        : S T A N D A R D;

// SOQL Date functions
CALENDAR_MONTH      : C A L E N D A R UNDERSCORE M O N T H;
CALENDAR_QUARTER    : C A L E N D A R UNDERSCORE Q U A R T E R;
CALENDAR_YEAR       : C A L E N D A R UNDERSCORE Y E A R;
DAY_IN_MONTH        : D A Y UNDERSCORE I N UNDERSCORE M O N T H;
DAY_IN_WEEK         : D A Y UNDERSCORE I N UNDERSCORE W E E K;
DAY_IN_YEAR         : D A Y UNDERSCORE I N UNDERSCORE Y E A R;
DAY_ONLY            : D A Y UNDERSCORE O N L Y;
FISCAL_MONTH        : F I S C A L UNDERSCORE M O N T H;
FISCAL_QUARTER      : F I S C A L UNDERSCORE Q U A R T E R;
FISCAL_YEAR         : F I S C A L UNDERSCORE Y E A R;
HOUR_IN_DAY         : H O U R UNDERSCORE I N UNDERSCORE D A Y;
WEEK_IN_MONTH       : W E E K UNDERSCORE I N UNDERSCORE M O N T H;
WEEK_IN_YEAR        : W E E K UNDERSCORE I N UNDERSCORE Y E A R;
CONVERT_TIMEZONE    : C O N V E R T UNDERSCORE T I M E Z O N E;

// SOQL Date formulas
YESTERDAY                 : Y E S T E R D A Y;
TODAY                     : T O D A Y;
TOMORROW                  : T O M O R R O W;
LAST_WEEK                 : L A S T UNDERSCORE W E E K;
THIS_WEEK                 : T H I S UNDERSCORE W E E K;
NEXT_WEEK                 : N E X T UNDERSCORE W E E K;
LAST_MONTH                : L A S T UNDERSCORE M O N T H;
THIS_MONTH                : T H I S UNDERSCORE M O N T H;
NEXT_MONTH                : N E X T UNDERSCORE M O N T H;
LAST_90_DAYS              : L A S T UNDERSCORE '90' UNDERSCORE D A Y S;
NEXT_90_DAYS              : N E X T UNDERSCORE '90' UNDERSCORE D A Y S;
LAST_N_DAYS_N             : L A S T UNDERSCORE N UNDERSCORE D A Y S;
NEXT_N_DAYS_N             : N E X T UNDERSCORE N UNDERSCORE D A Y S;
NEXT_N_WEEKS_N            : N E X T UNDERSCORE N UNDERSCORE W E E K S;
LAST_N_WEEKS_N            : L A S T UNDERSCORE N UNDERSCORE W E E K S;
NEXT_N_MONTHS_N           : N E X T UNDERSCORE N UNDERSCORE M O N T H S;
LAST_N_MONTHS_N           : L A S T UNDERSCORE N UNDERSCORE M O N T H S;
THIS_QUARTER              : T H I S UNDERSCORE Q U A R T E R;
LAST_QUARTER              : L A S T UNDERSCORE Q U A R T E R;
NEXT_QUARTER              : N E X T UNDERSCORE Q U A R T E R;
NEXT_N_QUARTERS_N         : N E X T UNDERSCORE N UNDERSCORE Q U A R T E R S;
LAST_N_QUARTERS_N         : L A S T UNDERSCORE N UNDERSCORE Q U A R T E R S;
THIS_YEAR                 : T H I S UNDERSCORE Y E A R;
LAST_YEAR                 : L A S T UNDERSCORE Y E A R;
NEXT_YEAR                 : N E X T UNDERSCORE Y E A R;
NEXT_N_YEARS_N            : N E X T UNDERSCORE N UNDERSCORE Y E A R S;
LAST_N_YEARS_N            : L A S T UNDERSCORE N UNDERSCORE Y E A R S;
THIS_FISCAL_QUARTER       : T H I S UNDERSCORE F I S C A L UNDERSCORE Q U A R T E R;
LAST_FISCAL_QUARTER       : L A S T UNDERSCORE F I S C A L UNDERSCORE Q U A R T E R;
NEXT_FISCAL_QUARTER       : N E X T UNDERSCORE F I S C A L UNDERSCORE Q U A R T E R;
NEXT_N_FISCAL_QUARTERS_N  : N E X T UNDERSCORE N UNDERSCORE F I S C A L UNDERSCORE Q U A R T E R S;
LAST_N_FISCAL_QUARTERS_N  : L A S T UNDERSCORE N UNDERSCORE F I S C A L UNDERSCORE Q U A R T E R S;
THIS_FISCAL_YEAR          : T H I S UNDERSCORE F I S C A L UNDERSCORE Y E A R;
LAST_FISCAL_YEAR          : L A S T UNDERSCORE F I S C A L UNDERSCORE Y E A R;
NEXT_FISCAL_YEAR          : N E X T UNDERSCORE F I S C A L UNDERSCORE Y E A R;
NEXT_N_FISCAL_YEARS_N     : N E X T UNDERSCORE N UNDERSCORE F I S C A L UNDERSCORE Y E A R S;
LAST_N_FISCAL_YEARS_N     : L A S T UNDERSCORE N UNDERSCORE F I S C A L UNDERSCORE Y E A R S;

// SOQL Date literal
DateLiteral: Digit Digit Digit Digit '-' Digit Digit '-' Digit Digit;
DateTimeLiteral: DateLiteral 't' Digit Digit ':' Digit Digit ':' Digit Digit ('z' | (('+' | '-') Digit+ ( ':' Digit+)? ));

// SOQL Currency literal
// (NOTE: this is also a valid Identifier)
IntegralCurrencyLiteral: [a-z] [a-z] [a-z] Digit+;

// SOSL Keywords
FIND                      : F I N D;
EMAIL                     : E M A I L;
NAME                      : N A M E;
PHONE                     : P H O N E;
SIDEBAR                   : S I D E B A R;
FIELDS                    : F I E L D S;
METADATA                  : M E T A D A T A;
PRICEBOOKID               : P R I C E B O O K I D;
NETWORK                   : N E T W O R K;
SNIPPET                   : S N I P P E T;
TARGET_LENGTH             : T A R G E T UNDERSCORE L E N G T H;
DIVISION                  : D I V I S I O N;
RETURNING                 : R E T U R N I N G;
LISTVIEW                  : L I S T V I E W;

FindLiteral
    :   '[' WS? F I N D WS '{' FindCharacters? '}'
    ;

fragment
FindCharacters
    :   FindCharacter+
    ;

fragment
FindCharacter
    :   ~[}\\]
    |   FindEscapeSequence
    ;

fragment
FindEscapeSequence
    :   '\\' [+\-&|!(){}^"~*?:'\\]
    ;

// §3.10.1 Integer Literals

IntegerLiteral
    :   Digit Digit*
    ;

LongLiteral
    : Digit Digit* [lL]
    ;

NumberLiteral
    :   Digit* '.' Digit Digit* [dD]?
    ;

fragment
HexCharacter
    :   Digit | 'a' | 'b' | 'c' | 'd' | 'e' | 'f'
    ;

fragment
Digit
    :   [0-9]
    ;

// §3.10.3 Boolean Literals

BooleanLiteral
    :   T R U E
    |   F A L S E
    ;

// §3.10.5 String Literals

StringLiteral
    :   '\'' StringCharacters? '\''
    ;

fragment
StringCharacters
    :   StringCharacter+
    ;

fragment
StringCharacter
    :   ~['\\]
    |   EscapeSequence
    ;

// §3.10.6 Escape Sequences for Character and String Literals

fragment
EscapeSequence
    :   '\\' [btnfr"'\\]
    |   '\\u' HexCharacter HexCharacter HexCharacter HexCharacter
    ;

// §3.10.7 The Null Literal

NullLiteral
    :   NULL
    ;


// §3.11 Separators

LPAREN          : '(';
RPAREN          : ')';
LBRACE          : '{';
RBRACE          : '}';
LBRACK          : '[';
RBRACK          : ']';
SEMI            : ';';
COMMA           : ',';
DOT             : '.';

// §3.12 Operators

ASSIGN          : '=';
GT              : '>';
LT              : '<';
BANG            : '!';
TILDE           : '~';
QUESTIONDOT     : '?.';
QUESTION        : '?';
COLON           : ':';
EQUAL           : '==';
TRIPLEEQUAL     : '===';
NOTEQUAL        : '!=';
LESSANDGREATER  : '<>';
TRIPLENOTEQUAL  : '!==';
AND             : '&&';
OR              : '||';
INC             : '++';
DEC             : '--';
ADD             : '+';
SUB             : '-';
MUL             : '*';
DIV             : '/';
BITAND          : '&';
BITOR           : '|';
CARET           : '^';
MOD             : '%';
MAPTO           : '=>';

ADD_ASSIGN      : '+=';
SUB_ASSIGN      : '-=';
MUL_ASSIGN      : '*=';
DIV_ASSIGN      : '/=';
AND_ASSIGN      : '&=';
OR_ASSIGN       : '|=';
XOR_ASSIGN      : '^=';
MOD_ASSIGN      : '%=';
LSHIFT_ASSIGN   : '<<=';
RSHIFT_ASSIGN   : '>>=';
URSHIFT_ASSIGN  : '>>>=';

//
// Additional symbols not defined in the lexical specification
//

ATSIGN : '@';
UNDERSCORE : '_';

// §3.8 Identifiers (must appear after all keywords in the grammar)

Identifier
    :   JavaLetter JavaLetterOrDigit*
    ;

// Apex identifiers don't support non-ascii but we maintain Java rules here and post-validate
// so we can give better error messages
fragment
JavaLetter
    :   [a-zA-Z$_] // these are the "java letters" below 0xFF
    |   // covers all characters above 0xFF which are not a surrogate
        ~[\u0000-\u00FF\uD800-\uDBFF]
    |   // covers UTF-16 surrogate pairs encodings for U+10000 to U+10FFFF
        [\uD800-\uDBFF] [\uDC00-\uDFFF]
    ;

fragment
JavaLetterOrDigit
    :   [a-zA-Z0-9$_] // these are the "java letters or digits" below 0xFF
    |   // covers all characters above 0xFF which are not a surrogate
        ~[\u0000-\u00FF\uD800-\uDBFF]
    |   // covers UTF-16 surrogate pairs encodings for U+10000 to U+10FFFF
        [\uD800-\uDBFF] [\uDC00-\uDFFF]
    ;

//
// Whitespace and comments
//

START_GROUP_COMMENT
	  :   '//' WS* ATSIGN  S T A R T SUB G R O U P WS* Identifier ~[\r\n]*
	  ;

END_GROUP_COMMENT
	  :   '//' WS* ATSIGN  E N D SUB G R O U P ~[\r\n]*
	  ;

DOC_COMMENT
    :   '/**' WS* [\r\n] .*? '*/'
    ;

WS  :  [ \t\r\n\u000C]+ -> channel(WHITESPACE_CHANNEL)
    ;

COMMENT
    :   '/*' .*? '*/' -> channel(COMMENT_CHANNEL)
    ;

LINE_COMMENT
    :   '//' ~[\r\n]* -> channel(COMMENT_CHANNEL)
    ;

fragment A:('a'|'A');
fragment B:('b'|'B');
fragment C:('c'|'C');
fragment D:('d'|'D');
fragment E:('e'|'E');
fragment F:('f'|'F');
fragment G:('g'|'G');
fragment H:('h'|'H');
fragment I:('i'|'I');
fragment J:('j'|'J');
fragment K:('k'|'K');
fragment L:('l'|'L');
fragment M:('m'|'M');
fragment N:('n'|'N');
fragment O:('o'|'O');
fragment P:('p'|'P');
fragment Q:('q'|'Q');
fragment R:('r'|'R');
fragment S:('s'|'S');
fragment T:('t'|'T');
fragment U:('u'|'U');
fragment V:('v'|'V');
fragment W:('w'|'W');
fragment X:('x'|'X');
fragment Y:('y'|'Y');
fragment Z:('z'|'Z');
