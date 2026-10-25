%{
#include <stdio.h>
#include <stdlib.h>

int yylex(void);
void yyerror(char *s);

int power(int base, int exp) {
    int result = 1;
    for(int i = 0; i < exp; i++)
        result = result * base;
    return result;
}
%}

%token NUMBER INC DEC MOD

%left '+' '-'
%left '*' '/' MOD
%right '^'

%%

stmt: expr '\n'    { printf("Result: %d\n", $1); }
    | error '\n'   { printf("Invalid expression\n"); yyerrok; }
    ;

expr: NUMBER       { $$ = $1; }
    | expr '+' expr    { $$ = $1 + $3; }
    | expr '-' expr    { $$ = $1 - $3; }
    | expr '*' expr    { $$ = $1 * $3; }
    | expr '/' expr    { if($3 == 0)
                            yyerror("Division by zero");
                         else
                            $$ = $1 / $3;
                       }
    | expr MOD expr    { if($3 == 0)
                            yyerror("Modulo by zero");
                         else
                            $$ = $1 % $3;
                       }
    | expr '^' expr    { $$ = power($1, $3); }
    | '(' expr ')'     { $$ = $2; }
    | INC expr         { $$ = $2 + 1; }
    | DEC expr         { $$ = $2 - 1; }
    | expr INC         { $$ = $1 + 1; }
    | expr DEC         { $$ = $1 - 1; }
    ;

%%

void yyerror(char *s) {
    printf("Error: %s\n", s);
}

int main() {
    printf("Enter an arithmetic expression:\n");
    yyparse();
    return 0;
}
