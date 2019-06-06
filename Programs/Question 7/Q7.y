%{
	#include <stdio.h>
	#include <stdlib.h>	
	int res;
%}

%token id num type

%%
stmt:expr {res=1;}
	;
expr:type ' ' id ex2
	|type ' ' id arr
	;
ex2:',' id ex2
	|';'
	;
arr:'[' num ']' arr
	|'[' num {printf("Array bracket not closed!");exit(0);}
	|';'
	;
%%

int main()
{
	printf("Enter a declaration statement : ");
	yyparse();
	printf("Success!");
	return 0;
}

void yyerror()
{
	printf("Error!!");
	exit(0);
}