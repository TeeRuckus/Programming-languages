%{
#include <stdio.h>
#include "y.tab.h"
%}

list \[[0-9]+(,[0-9]+)*\]  

%%
{list} yyval = "yes";return TOKLIST;
\n /* ignoring end of line*/
%%
