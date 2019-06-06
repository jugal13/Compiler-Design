%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "y.tab.h"
%}

%%
("int"|"double"|"float"|"static int"|"long int"|"register int") {return type;}
[a-zA-Z][a-zA-Z0-9]* {return id;}
[\t] {;}
[\n] {return 0;}
. {return yytext[0];}
%%