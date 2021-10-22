%{
#include <stdio.h>
#include <string.h>

void yyerror (const char *str)
{
	fprintf(stderr, "error: %s\n", str);
}

int yywrap()
{
	return 1;
}

int main()
{
	yyparse();
	return 0;
}

%}


%token TOKLIST
%%
lists: /* empty */
	 | lists list
	 ;

list:
	sort;

sort:
	TOKLIST
	{
		if($1)
			printf("YES\n");
		else
			printf("NO\n");
	}
	;
%%
