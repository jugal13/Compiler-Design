%{
#include<stdio.h>
int c=0;
FILE *fp;
%}

str [a-zA-Z0-9\n\t]*

%%
\n {c++;}
"/*"{str}"*/" {printf("Valid multiline comment in line : %d ",c+1);ECHO;printf("\n");}
"/*"{str} {printf("Multiline comment not closed in line : %d ",c+1);ECHO;printf("\n");}
.|\n ;
%%
void main()
{
yyin=fopen("sample.c","r");
yylex();
fclose(yyin);
}
