%{
#include <stdio.h>
#include <string.h>
#include "y.tab.h"
%}

%%
[0-9]+ {
    strcpy(yylval.str, yytext);
    return NUMBER;
}

[+*/()-] {
    return yytext[0];
}

[ \t] ;

\n {
    return '\n';
}

. {
    printf("Invalid character: %s\n", yytext);
    return yytext[0];
}

%%

int yywrap(void) {
    return 1;
}