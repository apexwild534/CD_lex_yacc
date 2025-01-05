%{
#include <stdio.h>
#include <stdlib.h>
int sum = 0;
int count = 0;
%}

%%
[0-9]+ {
    int num = atoi(yytext);
    sum += num;
    count++;
}
\n {
    if (count > 0) {
        float average = (float)sum / count;
        printf("Average of %d numbers is: %.2f\n", count, average);
    }
    sum = 0;
    count = 0;
}
. {
}

%%
int main() {
    printf("Enter numbers (press Enter to calculate average):\n");
    yylex();
    return 0;
}

