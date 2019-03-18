%{
#include<stdio.h>
int c=0;
FILE *fp
%}
identifier [a-zA-Z][a-zA-Z0-9]*
%%
\n {c++}
(int|float|long|char) {printf("Valid decalaration in line number: %d",c++);}
%%
main()
{
    yyin=fopen("source.txt");
    yylex();
    fclose(yyin);
}