%{
#include "y.tab.h"
%}

%%
"int"|"float"|"char" {
    return KEY;
}

[a-zA-Z_][a-zA-Z0-9]* {
    return ID;
}

[0-9]+ {
    return NUM;
}

";" {
    return SEMI;
}

[ \t\n] ;

. {
    return yytext[0];
}

%%

int yywrap(void) {
    return 1;
}