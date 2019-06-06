%{
	#include <stdio.h>
	int c=0;
	FILE *fp;
%}
id [a-zA-Z][a-zA-Z0-9]*
num [0-9]+\
types "int"|"float"|"char"
dec {types}" "{id}(","{id})*
%%
\n {c++;}
"struct"" "{id}"{"({dec}";"|(\n))*"}"({id}(","{id})*)?";" {printf("TESTYING");ECHO;}
.|\n ;
%%
int main()
{
	yyin=fopen("sample.c","r");
	yylex();
	fclose(yyin);
}