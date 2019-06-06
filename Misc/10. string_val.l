%{
#include<stdio.h>
int c=0;
FILE *fp;
%}
ws [ \t\n]
q ["]
str [a-zA-Z0-9]+

%%
\n {c++;}
{q}({ws}|{str})*{q} {printf("Valid string in line : %d ",c+1);ECHO;printf("\n");}
{q}({ws}|{str})* {printf("Unterminated String in line : %d ",c+1);ECHO;printf("\n");}
.|\n ;
%%
int main()
{
yyin=fopen("sample.c","r");
yylex();
fclose(yyin);
}
