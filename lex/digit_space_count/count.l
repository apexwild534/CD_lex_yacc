%{
#include <stdio.h>
int space_count = 0;
int digit_count = 0;
%}

%%
[0-9]    { digit_count++; }
[ ]      { space_count++; }
.        { }

%%

int main() {
    printf("Enter input (press enter then ctrl+d to execute): \n");
    yylex();
    printf("Number of spaces: %d\n", space_count);
    printf("Number of digits: %d\n", digit_count);
    return 0;
}
