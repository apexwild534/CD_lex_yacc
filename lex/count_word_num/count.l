%{
#include <stdio.h>
#include <ctype.h>
int word_count = 0;
int num_count = 0;
%}

%%
[0-9]+    { num_count++; }
[a-zA-Z_][a-zA-Z0-9_]* { word_count++; }
[ \t\n]+  { }
.         { }

%%
int main() {
    printf("Enter a string (press Enter then ctrl+D to count words and numbers):\n");
    yylex();
    printf("\nTotal words: %d\n", word_count);
    printf("Total numbers: %d\n", num_count);
    return 0;
}
