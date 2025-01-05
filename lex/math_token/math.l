%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+ {
    printf("NUMBER: %s\n", yytext);
}
[+\-*/] {
    printf("OPERATOR: %s\n", yytext);
}
[(] {
    printf("LEFT PARENTHESIS: %s\n", yytext);
}
[)] {
    printf("RIGHT PARENTHESIS: %s\n", yytext);
}
[ \t\n]+ { }
. {
}

%%
int main() {
    printf("Enter a mathematical expression:\n");
    yylex();
    return 0;
}
