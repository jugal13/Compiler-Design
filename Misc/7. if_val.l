%{
#include<stdio.h>
int c=0;
FILE *fp;
%}
ws [ ]
id [a-z][a-zA-Z0-9]*
num [0-9]+
op "=="|"<="|">="|"<"|">"
%%
\n {c++;}
"if"{ws}*"("{ws}*({id}|{num}){ws}*{op}{ws}*({id}|{num}){ws}*")" {printf("Valid IF statement line : %d ",c+1);ECHO;printf("\n");}
"if"{ws}*"("{ws}*{op}{ws}*({id}|{num}){ws}*")" {printf("INValid IF statement Left operand missing line : %d ",c+1);ECHO;printf("\n");}
"if"{ws}*"("{ws}*({id}|{num}){ws}*{op}{ws}*")" {printf("INValid IF statement Right operand missing line : %d ",c+1);ECHO;printf("\n");}
.|\n ;
%%
void main()
{
yyin=fopen("sample.c","r");
yylex();
fclose(yyin);
}
