# LEX and YACC codes

## Installation

To set up Lex and Yacc (Flex and Bison), follow the instructions below:

   ```bash
   sudo apt-get update
   sudo apt-get upgrade
   sudo apt install flex
   sudo apt install bison
   ```
## To create and write in lex file

   ```bash
   nano file.l
   ```

## To create and write in yacc file

   ```bash
   nano file.y
   ```

## To execute lex code

   ```bash
   flex file.l
   gcc lex.yy.c -o file -lfl
   ./file
   ```
## To execute yacc code

   ```bash
   yacc -d file.y
   flex file.l
   gcc y.tab.c lex.yy.c -o file -lfl
   ./file
   ```
## To exit the Output
Press ctrl+d

## Lex Examples
- Even or Odd
  1. For code click [here](lex/even_odd/evenOdd.l)
  2. For output click [here](/outputs/lex/1.png)
- Average of N Numbers
  1. For code click [here](lex/average/average.l)
  2. For output click [here](/outputs/lex/2.png)
- Variable or Not
  1. For code click [here](lex/Variable_or_not/var.l)
  2. For output click [here](/outputs/lex/3.png)
- Count Words and Numbers
  1. For code click [here](lex/count_word_num/count.l)
  2. For output click [here](/outputs/lex/4.png)
- Email ID or Not
  1. For code click [here](lex/email/email.l)
  2. For output click [here](/outputs/lex/5.png)
- Palindrome or Not
  1. For code click [here](lex/palindrome/palindrome.l)
  2. For output click [here](/outputs/lex/6.png)
- Count Vowels and Consonants
  1. For code click [here](lex/vowel_consonat_count/count.l)
  2. For output click [here](/outputs/lex/7.png)
- Display Tokens in a Mathematical Expression
  1. For code click [here](lex/math_token/math.l)
  2. For output click [here](/outputs/lex/8.png)
- Balanced Parenthesis or Not
  1. For code click [here](lex/balanced_para/balanced.l)
  2. For output click [here](/outputs/lex/9.png)
- Count Digits and Spaces
  1. For code click [here](lex/digit_space_count/count.l)
  2. For output click [here](/outputs/lex/10.png)

## Yacc Example
- Calculator
  1. For yacc code click [here](/yacc/calc/calc.y)
  2. For lex code click [here](/yacc/calc/calc.l)
  3. For output click [here](/outputs/yaac/calc.png)
