%{
#include<stdio.h>
int c=0;
FILE *fp;
%}
operator [+-/*]
identifier [a-z][a-zA-Z0-9]*
number [0-9]+
expression ({identifier}|{number}){operator}({identifier}|{number})

%%
\n {c++;}
{identifier}[=]({expression}+[;]) {printf("Valid Expression at line : %d Expression : ",c+1);ECHO;printf("\n");}
{identifier}"="({identifier}|{number}){operator}+";" {printf("Invalid expression with no right operand at line : %d ",c+1);ECHO;printf("\n");}
{identifier}"="{operator}({identifier}|{number})+";" {printf("Invalid expression with no left operand at line : %d ",c+1);ECHO;printf("\n");}
{number}{identifier}*"=" {printf("Left Hand side is not a valid identifier, at line : %d ",c+1);ECHO;printf("\n");}
.|\n ;
%%
int main()
{
yyin=fopen("sample.c","r");
yylex();
fclose(yyin);
}
