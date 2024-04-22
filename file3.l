%{
#include <stdio.h>
%}

%option noyywrap

DIGIT       [0-9]
LETTER      [a-zA-Z]
ID          {LETTER}({LETTER}|{DIGIT})*
NUMBER      {DIGIT}+(\.{DIGIT}+)?
WS          [ \t\n]

%%

{ID}        { printf("IDENTIFIER: %s\n", yytext); }
{NUMBER}    { printf("NUMBER: %s\n", yytext); }
"+"         { printf("PLUS\n"); }
"-"         { printf("MINUS\n"); }
"*"         { printf("MULTIPLY\n"); }
"/"         { printf("DIVIDE\n"); }
"="         { printf("EQAUL TO\n"); }
";"         { printf("TERMINATION\n"); }
{WS}        ;  /* ignore whitespace */
.           { printf("ERROR: Invalid character '%s'\n", yytext); }

%%

int main() {
    yylex();
    return 0;
}
