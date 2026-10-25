%{
#include <stdio.h>
%}

%%
.*"COM"$  { printf("line ends with COM\n"); }
.*"com"$  { printf("line ends with com\n"); }
.*        { printf("line does not end with com or COM\n"); }
\n        ;
%%

int main() {
    printf("Enter test lines : \n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
