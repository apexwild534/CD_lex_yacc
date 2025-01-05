%{
#include <stdio.h>
#include <ctype.h>
int vowel_count = 0;
int consonant_count = 0;
%}

%%
[aeiouAEIOU] {
    vowel_count++;
}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {
    consonant_count++;
}
[ \t\n]+ { }
. { }

%%
int main() {
    printf("Enter a string to count vowels and consonants(press enter then ctrl+d):\n");
    yylex();
    printf("\nTotal vowels: %d\n", vowel_count);
    printf("Total consonants: %d\n", consonant_count);
    return 0;
}
