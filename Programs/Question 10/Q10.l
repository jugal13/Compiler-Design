%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "y.tab.h"

%}

%%
[a] {return id;}
[\t] {;}
[\n] {return 0;}
. {return yytext[0];}
%%