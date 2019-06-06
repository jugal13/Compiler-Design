%{
#include<stdio.h>
int c=0;
FILE *fp;
%}

data "int"|"float"|"char"
id [a-zA-Z][a-zA-Z0-9]*
ws [ ]
%%
\n {c++;}
{data}{ws}{id}(","{id})*";" {printf("Data type detected ");ECHO;printf("\n");}
.|\n ;
%%
void main()
{
yyin=fopen("sample.c","r");
yylex();
fclose(yyin);
}
