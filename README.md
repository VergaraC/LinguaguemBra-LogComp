# LinguaguemBr-LogComp

Por Victor Vergara

flex -l tokens.l

bison -dv parser.y

gcc -o pyrthon parser.tab.c lex.yy.c -lfl

## EBNF da Linguagem 

DECLARATION = ("int" | "palavra" | "sem_retorno"), IDENTIFIER, "(", { ("int" | "palavra"), IDENTIFIER, { "," | ("int" | "palavra"), IDENTIFIER} }, ")", BLOCK;

BLOCK = ("{", STATEMENT, "}" | "{", "}");

STATEMENT =  (((λ | ASSIGNMENT | PRINT  | VAR_TYPE | RETURN), ";") | (BLOCK | IF | WHILE));

FACTOR = INT | STRING | (IDENTIFIER, { "(", { RELEXPRESSION, { "," | RELEXPRESSION } } ")" }) | (("+" | "-" | "inverte" FACTOR) | "(", RELEXPRESSION, ")" | SCANF;

TERM = FACTOR, { ("*" | "/" | "eee"), FACTOR };

EXPRESSION = TERM, { ("+" | "-" | "ouu"), TERM } ;

RELEXPRESSION = EXPRESSION , {("menor_que" | "maior_que" | igual_a , EXPRESSION } ;

WHILE = "enquanto", "(", RELEXPRESSION ,")", STATEMENT;

IF = "se", "(", RELEXPRESSION ,")", STATEMENT, (("se_nao", STATEMENT) | λ );

ASSIGNMENT = (IDENTIFIER, "=", RELEXPRESSION) | ( "(", { RELEXPRESSION, { "," | RELEXPRESSION } }, ")" );

RETURN = "retorna" , "(", RELEXPRESSION, ")";

PRINT = "escreve", "(", RELEXPRESSION, ")";

SCANF = "lee", "(", ")";

IDENTIFIER = LETTER, { LETTER | DIGIT | "_" };

DIGIT = (0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9);

INT = DIGIT, { DIGIT };

VAR_TYPE = ("int" | "palavra") , IDENTIFIER , (λ | {"," , IDENTIFIER });

STRING = """, (LETTER | DIGIT), """;

LETTER = ( a | ... | z | A | ... | Z ) ;