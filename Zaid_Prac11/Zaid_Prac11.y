%{
#include <stdio.h>
#include <string.h>
int yylex(void);
void yyerror(char *);
int temp = 1;
%}

%union { char str[32]; }
%token <str> NUMBER
%type <str> expr
%left '+' '-'
%left '*' '/'

%%
input: | input stmt;

stmt: { temp = 1; } expr '\n';

expr: NUMBER { strcpy($$, $1); }
    | expr '+' expr {
        printf("\t%d = %s + %s\n", temp, $1, $3);
        sprintf($$, "%d", temp++);
    }
    | expr '-' expr {
        printf("\t%d = %s - %s\n", temp, $1, $3);
        sprintf($$, "%d", temp++);
    }
    | expr '*' expr {
        printf("\t%d = %s * %s\n", temp, $1, $3);
        sprintf($$, "%d", temp++);
    }
    | expr '/' expr {
        printf("\t%d = %s / %s\n", temp, $1, $3);
        sprintf($$, "%d", temp++);
    }
    | '(' expr ')' { strcpy($$, $2); }
    ;

%%

void yyerror(char *s) {
    printf("Error: %s\n", s);
}

int main(void) {
    return yyparse();
}