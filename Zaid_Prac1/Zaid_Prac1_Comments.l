%{
#include <stdio.h>
int comments = 0;
%}

%%
"//".* { comments++; }
.|\n   ;
%%

int main() {
    printf("Enter a String: ");
    yylex();
    printf("Comments: %d\n", comments);
    return 0;
}

int yywrap() {
    return 1;
}
