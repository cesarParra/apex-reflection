lexer grammar ApexLexer;

channels {
    WHITESPACE_CHANNEL,
    COMMENT_CHANNEL
}

// Keywords
ABSTRACT      : 'abstract';
AFTER         : 'after';
BEFORE        : 'before';
BREAK         : 'break';
CATCH         : 'catch';
CLASS         : 'class';
CONTINUE      : 'continue';
DELETE        : 'delete';
DO            : 'do';
ELSE          : 'else';
ENUM          : E N U M;
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
SWITCH        : 'switch';
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
LIST          : 'list';
MAP           : 'map';

// §3.10.1 Integer Literals

IntegerLiteral
    :   Digit Digit* [lL]?
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
    :   'true'
    |   'false'
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

AT : '@';


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
	  :   '//' WS* AT  S T A R T SUB G R O U P WS* Identifier ~[\r\n]*
	  ;

END_GROUP_COMMENT
	  :   '//' WS* AT  E N D SUB G R O U P ~[\r\n]*
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
