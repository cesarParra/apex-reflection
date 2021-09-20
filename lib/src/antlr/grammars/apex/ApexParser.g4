parser grammar ApexParser;
options {tokenVocab=ApexLexer;}

//@parser::members {
//    public void clearCache() {
//        _interp.clearDFA();
//    }
//}

// entry point for Apex trigger files
triggerUnit
    : TRIGGER id ON id LPAREN triggerCase (COMMA triggerCase)* RPAREN block EOF
    ;

triggerCase
    : (BEFORE|AFTER) (INSERT|UPDATE|DELETE|UNDELETE)
    ;

// entry point for Apex class files
compilationUnit
    : typeDeclaration EOF
    ;

typeDeclaration
    : DOC_COMMENT? modifier* classDeclaration             # TypeClassDeclaration
    | DOC_COMMENT? modifier* enumDeclaration              # TypeEnumDeclaration
    | DOC_COMMENT? modifier* interfaceDeclaration         # TypeInterfaceDeclaration
    ;

classDeclaration
    : CLASS id
      (EXTENDS typeRef)?
      (IMPLEMENTS typeList)?
      classBody
    ;

enumDeclaration
    : ENUM id
      LBRACE enumConstants? RBRACE
    ;

enumConstants
 	: id (COMMA id)*
   	;

interfaceDeclaration
    : INTERFACE id (EXTENDS typeList)? interfaceBody
    ;

typeList
    : typeRef (COMMA typeRef)*
    ;

classBody
    : LBRACE classBodyDeclaration* RBRACE
    ;

interfaceBody
    : LBRACE interfaceMethodDeclaration* RBRACE
    ;

classBodyDeclaration
    : SEMI                                 # EmptyClassBodyDeclaration
    | STATIC? block                        # StaticBlockClassBodyDeclaration
    | modifier* memberDeclaration          # MemberClassBodyDeclaration
    ;

/* Unify all annotation & modifiers so we can give better error messages */
modifier
    : annotation
    | GLOBAL
    | PUBLIC
    | PROTECTED
    | PRIVATE
    | TRANSIENT
    | STATIC
    | ABSTRACT
    | FINAL
    | WEBSERVICE
    | OVERRIDE
    | VIRTUAL
    | TESTMETHOD
    | WITH SHARING
    | WITHOUT SHARING
    | INHERITED SHARING
    ;

memberDeclaration
    : methodDeclaration                   # MethodMemberDeclaration
    | fieldDeclaration                    # FieldMemberDeclaration
    | constructorDeclaration              # ConstructorMemberDeclaration
    | interfaceDeclaration                # InterfaceMemberDeclaration
    | classDeclaration                    # ClassMemberDeclaration
    | enumDeclaration                     # EnumMemberDeclaration
    | propertyDeclaration                 # PropertyMemberDeclaration
    ;

/* We use rule this even for void methods which cannot have [] after parameters.
   This simplifies grammar and we can consider void to be a type, which
   renders the [] matching as a context-sensitive issue or a semantic check
   for invalid return type after parsing.
 */


methodDeclaration
    : (typeRef|VOID) id formalParameters
      (   block
      |   SEMI
      )
    ;

constructorDeclaration
    : qualifiedName formalParameters block
    ;

fieldDeclaration
    : typeRef variableDeclarators SEMI
    ;

propertyDeclaration
    : typeRef id LBRACE propertyBlock* RBRACE
    ;

interfaceMethodDeclaration
    : modifier* (typeRef|VOID) id formalParameters SEMI
    ;

variableDeclarators
    : variableDeclarator (COMMA variableDeclarator)*
    ;

variableDeclarator
    : id (ASSIGN expression)?
    ;

arrayInitializer
    : LBRACE (expression (COMMA expression)* (COMMA)? )? RBRACE
    ;

typeRef
    : typeName (DOT typeName)* arraySubscripts
    ;

arraySubscripts
    : (LBRACK RBRACK)*
    ;

typeName
    : LIST typeArguments?
    | SET typeArguments?
    | MAP typeArguments?
    | id typeArguments?
    ;

typeArguments
    : LT typeList GT
    ;

formalParameters
    : LPAREN formalParameterList? RPAREN
    ;

formalParameterList
    : formalParameter (COMMA formalParameter)*
    ;

formalParameter
    : modifier* typeRef id
    ;

qualifiedName
    : id (DOT id)*
    ;

literal
    : IntegerLiteral
    | NumberLiteral
    | StringLiteral
    | BooleanLiteral
    | NULL
    ;

// ANNOTATIONS

annotation
    : AT qualifiedName ( LPAREN ( elementValuePairs | elementValue )? RPAREN )?
    ;

elementValuePairs
    : elementValuePair (COMMA? elementValuePair)*
    ;

elementValuePair
    : id ASSIGN elementValue
    ;

elementValue
    : expression
    | annotation
    | elementValueArrayInitializer
    ;

elementValueArrayInitializer
    : LBRACE (elementValue (COMMA elementValue)*)? (COMMA)? RBRACE
    ;


// STATEMENTS / BLOCKS

block
    : LBRACE statement* RBRACE
    ;

localVariableDeclarationStatement
    : localVariableDeclaration SEMI
    ;

localVariableDeclaration
    : modifier* typeRef variableDeclarators
    ;

statement
    : block
    | ifStatement
    | switchStatement
    | forStatement
    | whileStatement
    | doWhileStatement
    | tryStatement
    | returnStatement
    | throwStatement
    | breakStatement
    | continueStatement
    | insertStatement
    | updateStatement
    | deleteStatement
    | undeleteStatement
    | upsertStatement
    | mergeStatement
    | runAsStatement
    | localVariableDeclarationStatement
    | expressionStatement
    ;

ifStatement
    : IF parExpression statement (ELSE statement)?
    ;

switchStatement
    : SWITCH ON expression LBRACE whenControl+ RBRACE
    ;

whenControl
    : WHEN whenValue block
    ;

whenValue
    : ELSE
    | whenLiteral (COMMA whenLiteral)*
    | id id
    ;

whenLiteral
    : (SUB)? IntegerLiteral
    | StringLiteral
    | NULL
    | id
    ;

forStatement
    : FOR LPAREN forControl RPAREN statement
    ;

whileStatement
    : WHILE parExpression statement
    ;

doWhileStatement
    : DO statement WHILE parExpression SEMI
    ;

tryStatement
    : TRY block (catchClause+ finallyBlock? | finallyBlock)
    ;

returnStatement
    : RETURN expression? SEMI
    ;

throwStatement
    : THROW expression SEMI
    ;

breakStatement
    : BREAK SEMI
    ;

continueStatement
    : CONTINUE SEMI
    ;

insertStatement
    : INSERT expression SEMI
    ;

updateStatement
    : UPDATE expression SEMI
    ;

deleteStatement
    : DELETE expression SEMI
    ;

undeleteStatement
    : UNDELETE expression SEMI
    ;

upsertStatement
    : UPSERT expression qualifiedName? SEMI
    ;

mergeStatement
    : MERGE expression expression SEMI
    ;

runAsStatement
    : SYSTEMRUNAS LPAREN expressionList? RPAREN block
    ;

expressionStatement
    : expression SEMI
    ;

propertyBlock
    : modifier* (getter | setter)
    ;

getter
    : GET (SEMI | block)
    ;

setter
    : SET (SEMI | block)
    ;

catchClause
    : CATCH LPAREN modifier* qualifiedName id RPAREN block
    ;

finallyBlock
    : FINALLY block
    ;

forControl
    : enhancedForControl
    | forInit? SEMI expression? SEMI forUpdate?
    ;

forInit
    : localVariableDeclaration
    | expressionList
    ;

enhancedForControl
    : typeRef id COLON expression
    ;

forUpdate
    : expressionList
    ;

// EXPRESSIONS

parExpression
    : LPAREN expression RPAREN
    ;

expressionList
    : expression (COMMA expression)*
    ;

expression
    : primary                                                                                         # primaryExpression
    | expression (DOT | QUESTIONDOT)
        ( dotMethodCall
        | anyId
        )                                                                                             # dotExpression
    | expression LBRACK expression RBRACK                                                             # arrayExpression
    | methodCall                                                                                      # methodCallExpression
    | NEW creator                                                                                     # newExpression
    | LPAREN typeRef RPAREN expression                                                                # castExpression
    | expression (INC | DEC)                                                                          # postOpExpression
    | (ADD|SUB|INC|DEC) expression                                                                    # preOpExpression
    | (TILDE|BANG) expression                                                                         # negExpression
    | expression (MUL|DIV|MOD) expression                                                             # arth1Expression
    | expression (ADD|SUB) expression                                                                 # arth2Expression
    | expression (LT LT | GT GT GT | GT GT) expression                                                # bitExpression
    | expression (GT | LT) ASSIGN? expression                                                         # cmpExpression
    | expression INSTANCEOF typeRef                                                                   # instanceOfExpression
    | expression (TRIPLEEQUAL | TRIPLENOTEQUAL | EQUAL | NOTEQUAL | LESSANDGREATER ) expression       # equalityExpression
    | expression BITAND expression                                                                    # bitAndExpression
    | expression CARET expression                                                                     # bitNotExpression
    | expression BITOR expression                                                                     # bitOrExpression
    | expression AND expression                                                                       # logAndExpression
    | expression OR expression                                                                        # logOrExpression
    | <assoc=right> expression QUESTION expression COLON expression                                   # condExpression
    | <assoc=right> expression
      (   ASSIGN
      |   ADD_ASSIGN
      |   SUB_ASSIGN
      |   MUL_ASSIGN
      |   DIV_ASSIGN
      |   AND_ASSIGN
      |   OR_ASSIGN
      |   XOR_ASSIGN
      |   RSHIFT_ASSIGN
      |   URSHIFT_ASSIGN
      |   LSHIFT_ASSIGN
      |   MOD_ASSIGN
      )
      expression                                                                                     # assignExpression
    ;

primary
    : LPAREN expression RPAREN                                                                       # subPrimary
    | THIS                                                                                           # thisPrimary
    | SUPER                                                                                          # superPrimary
    | literal                                                                                        # literalPrimary
    | typeRef DOT CLASS                                                                              # typeRefPrimary
    | id                                                                                             # idPrimary
    | soqlLiteral                                                                                    # soqlPrimary
    ;

methodCall
    : id LPAREN expressionList? RPAREN
    | THIS LPAREN expressionList? RPAREN
    | SUPER LPAREN expressionList? RPAREN
    ;

dotMethodCall
    : anyId LPAREN expressionList? RPAREN
    ;

creator
    :  createdName (noRest | classCreatorRest | arrayCreatorRest | mapCreatorRest | setCreatorRest)
    ;

createdName
    : idCreatedNamePair (DOT idCreatedNamePair)*
    ;

idCreatedNamePair
    : anyId (LT typeList GT)?
    ;

noRest
    : LBRACE RBRACE
    ;

classCreatorRest
    : arguments
    ;

arrayCreatorRest
    : LBRACK expression RBRACK
    | LBRACK RBRACK arrayInitializer?
    ;

mapCreatorRest
    : LBRACE mapCreatorRestPair (COMMA mapCreatorRestPair )* RBRACE
    ;

mapCreatorRestPair
    : expression MAPTO expression
    ;

setCreatorRest
	: LBRACE expression (COMMA ( expression ))* RBRACE
	;

arguments
    : LPAREN expressionList? RPAREN
    ;

soqlLiteral
    : LBRACK (soqlLiteral|~RBRACK)*? RBRACK
    ;

// Some keywords can be used as general identifiers, this is likley an over simplification of the actual
// rules but devining them from playing with Apex is very difficult. We could let any be used but that
// can significantly impact the parser performance by creating ambiguities.
id
    : Identifier
    | AFTER
    | BEFORE
    | GET
    | INHERITED
    | INSTANCEOF
    | SET
    | SHARING
    | SWITCH
    | TRANSIENT
    | TRIGGER
    | WHEN
    | WITH
    | WITHOUT
    ;

// In dot expressions we, can use a wider set of of identifiers, apparently any of them althogh I have excluding VOID
// in the interests of reducing ambiguity
anyId
    : Identifier
    | ABSTRACT
    | AFTER
    | BEFORE
    | BREAK
    | CATCH
    | CLASS
    | CONTINUE
    | DELETE
    | DO
    | ELSE
    | ENUM
    | EXTENDS
    | FINAL
    | FINALLY
    | FOR
    | GET
    | GLOBAL
    | IF
    | IMPLEMENTS
    | INHERITED
    | INSERT
    | INSTANCEOF
    | INTERFACE
    | LIST
    | MAP
    | MERGE
    | NEW
    | NULL
    | ON
    | OVERRIDE
    | PRIVATE
    | PROTECTED
    | PUBLIC
    | RETURN
    | SET
    | SHARING
    | STATIC
    | SUPER
    | SWITCH
    | TESTMETHOD
    | THIS
    | THROW
    | TRANSIENT
    | TRIGGER
    | TRY
    | UNDELETE
    | UPDATE
    | UPSERT
    | VIRTUAL
    | WEBSERVICE
    | WHEN
    | WHILE
    | WITH
    | WITHOUT
    ;
