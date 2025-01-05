%{
#include <stdio.h>
#include <string.h>
%}

%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6} {
    printf("Valid email: %s\n", yytext);
}
. {
    printf("Invalid email: %s\n", yytext);
}

%%
int main() {
    printf("Enter a string to check if it's a valid email:\n");
    yylex();  // Call the lexer to process the input
    return 0;
}

