%{
#include <stdio.h>
#include <stdlib.h>
void yyerror(const char *s);
int yylex(void);
%}

/* Tokens */
%token NUMBER

%left '+' '-'
%left '*' '/'
%left UMINUS
%left '(' ')'

%%
calc:
    | calc exp '\n'  { printf("Result: %d\n", $2); }
    ;

exp:
      NUMBER                      { $$ = $1; }
    | exp '+' exp                 { $$ = $1 + $3; }
    | exp '-' exp                 { $$ = $1 - $3; }
    | exp '*' exp                 { $$ = $1 * $3; }
    | exp '/' exp                 { $$ = $1 / $3; }
    | '-' exp %prec UMINUS        { $$ = -$2; }
    | '(' exp ')'                 { $$ = $2; }
    ;

%%
void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main(void) {
    return yyparse();
}
