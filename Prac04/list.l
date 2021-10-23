%{
#define YYSTYPE char *
#include "y.tab.h"
#define YYSTYPE char *

%}

list \[[0-9]+(,[0-9]+)*\]

%%
sort	{return TOKENSORT;}
{list}	{yylval=strdup(yytext); return TOKLIST;}
exit	{return EXIT_COMMAND;}
print	{return PRINT;}
"[]"		{return EMPTY_LIST;}
 \t\n		/*ignoring end of line and empty spaces*/;
%%

int yywrap()
{
	return 1;
}
