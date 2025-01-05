%{#include <stdio.h>
#include <stdlib.h>
int balance_count = 0;
%}

%%
[(] {
    balance_count++;
}
[)] {
    balance_count--;
    if (balance_count < 0) {
        printf("Unbalanced\n");
        exit(1);
    }
}
[ \t\n]+ {
}
. {
}

%%
int main() {
    printf("Enter an expression with parentheses to check for balance:\n");
    yylex();
    if (balance_count == 0) {
        printf("Balanced\n");
    } else {
        printf("Unbalanced\n");
    }
    return 0;
}
