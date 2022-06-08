%{
#include <string.h>
#include <stdio.h>
#include "parser.tab.h"

%}

%%

[ \t\n]  

[a-zA-Z0-9]             return STR;
[a-zA-Z_][_a-zA-Z0-9]   return IDEN;
[0-9]+                  return INT;
"="                     return EQUAL;
"igual_a"               return EQUAL_TO;
"menor_que"             return MINOR;
"maior_que"             return GREATER;
"("                     return OPEN_PAR;
")"                     return CLOSE_PAR;
"{"                     return OPEN_BRACKET;
"}"                     return CLOSE_BRACKET;
","                     return COMA;
"+"                     return PLUS;
"junta_palavras"                     return CONCAT;
"-"                     return MINUS;
"*"                     return MULT;
"/"                     return DIV;
";"                     return SEMI_COLON;
"inverte"               return NOT;
"eee"                   return AND;
"ouu"                   return OR;
"escreve"               return PRINT;
"lee"                    return SCANF;
"enquanto"              return WHILE;
"see"                    return IF;
"se_nao"                return ELSE;
"int"                   return VAR_TYPE;
"palavra"               return VAR_TYPE;
"sem_retorno"               return VAR_TYPE;
"retorna"                return RETURN;
.                       printf("Unknown token!n"); yyterminate();

%%