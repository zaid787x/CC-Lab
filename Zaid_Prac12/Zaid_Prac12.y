%{
#include <stdio.h>
#include <stdlib.h>
int yylex(void);
int yyerror(char *);
int num1, num2;
%}

%token NUM1 NUM2 PLUS

%%
E: E PLUS E
    {
        printf("Addition: %d\n", num1 + num2);
    }
  | NUM1
  ;
%%

int main(void) {
    printf("Enter two numbers: ");
    scanf("%d %d", &num1, &num2);
    return 0;
}

int yyerror(char *s) {
    printf("Error: %s\n", s);
    return 1;
}