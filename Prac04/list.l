%{
#define YYSTYPE char *
#include "y.tab.h"
#define YYSTYPE char *

%}

list \[[0-9]+(,[0-9]+)*\]

%%
sort	{return TOKENSORT;}
{list}	{yylval=strdup(yytext); return TOKLIST;}
exit	{return exit_command;}
print	{return print;}
\n		/*ignoring end of line*/;
%%

int yywrap()
{
	return 1;
}
