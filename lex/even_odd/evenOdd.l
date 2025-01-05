%{
#include <stdio.h>
#include <stdlib.h>
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    if (num % 2 == 0) {
        printf("EVEN\n");
    } else {
        printf("ODD\n");
    }
}

%%
int main() {
    printf("Enter a number: ");
    yylex();
    return 0;
}
