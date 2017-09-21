grammar LibExpr;
import CommonLexerRules;

prog: stat+ ;

stat: declare                # declaration
    | expr NEWLINE           # printExpr
    | ID '=' expr NEWLINE    # assign
    | NEWLINE                # blank
    ;

declare:
    'Integer' ID             # intDeclation
    ;
    
expr:	expr op=('*'|'/') expr  # MulDiv
    |	expr op=('+'|'-') expr  # AddSub
    |	INT                  # int
    |	'(' expr ')'         # parens
    |   ID                   # id
    ;
    
MUL : '*' ;
ADD : '+' ;
SUB : '-' ;
DIV : '/' ;
 
ASN : '=' ;

