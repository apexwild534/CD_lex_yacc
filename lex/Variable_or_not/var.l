%{
#include <stdio.h>
%}

%%
[ _a-zA-Z ]+([_a-zA-Z0-9])*  {
    printf("Valid variable: %s\n", yytext);
}

. {
    printf("Invalid variable: %s\n", yytext);
}

%%
int main() {
    printf("Enter input to check if it's a valid variable name:\n");
    yylex();
    return 0;
}
