%{
#include <stdio.h>
int hello_count = 0;
int world_count = 0;
int yywrap() {
    return 1; // Indicate that there is no more input
}
%}

%%
"hello"    { hello_count++; }
"Hello"    { hello_count++; }
"world"    { world_count++; }
"World"    { world_count++; }
.          { /* ignore other characters */ }
%%

int main() {
    yylex();
    printf("Occurrences of 'hello': %d\n", hello_count);
    printf("Occurrences of 'world': %d\n", world_count);
    return 0;
}
