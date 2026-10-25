%{
#include <stdio.h>
%}

%%
hello { printf("Found hello!\n"); }
.|\n  ;
%%

int main() {
    printf("Enter a String: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
