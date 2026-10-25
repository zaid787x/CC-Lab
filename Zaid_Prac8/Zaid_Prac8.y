%{
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int yylex(void);
void yyerror(char *s);
%}

%token NUMBER

%%
stmt: expr '\n' { printf("Result: %d\n", $1); }
    |
    ;

expr: NUMBER          { $$ = $1; }
    | expr expr '+'   { $$ = $1 + $2; }
    | expr expr '-'   { $$ = $1 - $2; }
    | expr expr '*'   { $$ = $1 * $2; }
    | expr expr '/'   { $$ = $1 / $2; }
    | expr expr '%'   { $$ = $1 % $2; }
    | expr expr '^'   { $$ = (int)pow($1, $2); }
    ;

%%

void yyerror(char *s) {
    printf("Error: %s\n", s);
    exit(0);
}

int main() {
    printf("Enter Postfix Expression:\n");
    yyparse();
    return 0;
}
