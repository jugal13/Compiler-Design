%{
	#include <stdio.h>
	#include <stdlib.h>
	int res=0;
%}

%token id type
%%
stmt:D {res=1;}
	;
D:T ' ' L
	;
T:type
	;
L:L ',' id
 |id
 ;
%%

int main()
{
	printf("\nEnter a string : ");
	yyparse();
	if(res==1)
	{
	printf("\nValid\n");
	}
	return 0;
}

void yyerror()
{
	printf("\nInvalid !!\n");
	exit(0);
}