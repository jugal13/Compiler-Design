%{
#include<stdio.h>
%}
identifier [a-zA-Z][a-zA-Z0-9]*
number [0-9]+
operator [-+*/]
%%
{identifier}{operator}[=]({number}|{identifier})({operator}({identifier}|{number}))* {printf("Valid Expression");}
{identifier}[=]({number}|{identifier})({operator}({identifier}|{number}))* {printf("Not Valid Expression");}
%%