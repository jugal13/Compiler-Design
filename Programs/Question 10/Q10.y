%{
	#include <stdio.h>
	#include <stdlib.h>	
%}

%token id

%%
stmt:expr {printf("\nValid!\n");}
	;
expr:expr expr '+'
	|expr expr '*'
	|'(' expr ')'
	|id
	;
%%

int main()
{
	printf("Enter a string as input : ");
	yyparse();
	return 0;
}

void yyerror()
{
	printf("\nInvalid");
	exit(0);
}