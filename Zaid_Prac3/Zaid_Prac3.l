%{
#include <stdio.h>

int a_words = 0;
int numbers = 0;
%}

%%
[Aa][A-Za-z]*                        { a_words++; }
[0-9]+(\.[0-9]+)?([eE][+-]?[0-9]+)?  { numbers++; }
[\t\n ]+                             ;
.                                    ;
%%

int main() {
    printf("Enter input:\n");
    yylex();

    printf("\nNumber of words starting with 'a' = %d\n", a_words);
    printf("numbers = %d\n", numbers);

    return 0;
}

int yywrap() {
    return 1;
}
