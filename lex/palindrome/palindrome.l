%{
#include <stdio.h>
#include <string.h>
char input_string[100];
int current_index = 0;
%}

%%
[a-zA-Z0-9] {
    input_string[current_index++] = yytext[0];
}
\n {
    input_string[current_index] = '\0';
    int length = strlen(input_string);
    int is_palindrome = 1;
    for (int i = 0; i < length / 2; i++) {
        if (input_string[i] != input_string[length - 1 - i]) {
            is_palindrome = 0;
            break;
        }
    }
    if (is_palindrome) {
        printf("palindrome.\n");
    } else {
        printf("NOT a palindrome.\n");
    }
    current_index = 0;
}
. { }
%%
int main() {
    printf("Enter a string to check if it's a palindrome:\n");
    yylex();
    return 0;
}

