%{
#include<stdio.h>
int c=0;
FILE *fp;
%}
number [0-9]+
valid {number}[.]?{number}*
invalid {number}[.]({number}*)([.]{number}*)+

%%
\n {c++;}
{valid} {printf("Valid numerical constant, at line : %d ",c+1);ECHO;printf("\n");}
{invalid} {printf("INValid numerical constant, at line : %d ",c+1);ECHO;printf("\n");}
.|\n ;
%%

void main()
{
yyin=fopen("sample.c","r");
yylex();
fclose(yyin);
}
