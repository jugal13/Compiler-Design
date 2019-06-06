%{
#include <stdio.h>
%}
%%
[-]*[0-9]*[.][0-9]*[e][-]*[0-9][0-9]* {printf("Valid Scientific number");}
[0-9]*[.]*[0-9]* {printf("Not Valid Number");}
%%
