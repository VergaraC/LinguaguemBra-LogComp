# LinguaguemBr-LogComp

Por Victor Vergara

flex -l tokens.l

bison -dv parser.y

gcc -o pyrthon parser.tab.c lex.yy.c -lfl

## EBNF da Linguagem 


PROGRAM = {FUNCIONDECLARATOR} ;
RETURN = "retorna" , RELEXPRESSION ;
PROGRAM = {FUNCIONDECLARATOR} ;
FUNCTIONDECLARATOR = (λ | FTYPE, "(", ( (FTYPE , {"," , FTYPE } ) | λ ) , ")", STATEMENT);
FUNCTIONCALL = IDENTIFIER, "(", { IDENTIFIER } , {"," , IDENTIFIER } , ")" ;
FTYPE = ( "int" | "palavra" ) , IDENTIFIER ; 
DECLARATOR = ( "int" | "palavra" ) , IDENTIFIER , { "," , IDENTIFIER } ; 
BLOCK = "{" , { STATEMENT }, "}" ;
STATEMENT = ( λ | ASSIGNMENT | PRINT | BLOCK | WHILE | IF | DECLARATOR), ";" ;
FACTOR = INT | STRING | IDENTIFIER | FUNCTIONCALL | (("+" | "-" | "inverte") , FACTOR) | "(" , RELEXPRESSION , ")" | SCANF;
TERM = FACTOR, { ("*" | "/" | "eee"), FACTOR } ;
EXPRESSION = TERM, { ("+" | "-" | "ouu" ), TERM } ;
RELEXPRESSION = EXPRESSION , {("menor_que" | "maior_que" | "igual") , EXPRESSION } ;
WHILE = "enquanto", "(", RELEXPRESSION ,")", STATEMENT;
IF = "see", "(", RELEXPRESSION ,")", STATEMENT, (("se_nao", STATEMENT) | λ );
ASSIGNMENT = IDENTIFIER, "=" , EXPRESSION ;
PRINT = "escreve", "(" , EXPRESSION, ")" ;
SCANF = "lee", "(", ")" ;
IDENTIFIER = LETTER, { LETTER | DIGIT | "_" } ;
INT = DIGIT , { DIGIT } ;
LETTER = ( a | ... | z | A | ... | Z ) ;
STRING = '"', { LETTER | DIGIT }, '"' ;
DIGIT = ( 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ) ;