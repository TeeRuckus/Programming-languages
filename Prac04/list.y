%{
/* C declaration used in actions*/
#define YYSTYPE char *
int yylex();
void yyerror(char *s);
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}

/*YACC definition*/
%token TOKLIST TOKENSORT print exit_command

%%
commands: /* empty */
	 |commands command
	 ;

command:
	sort
    |
    exit
    ;

sort:
	TOKENSORT TOKLIST 
	{
        printf("hey I found a list %s\n", $2);
	};

exit:
    exit_command
    {
        printf("Goodbye, and take care\n");
        exit(1);
    }
    ;

%%
/* C functions */

/*where most of our code is going to be exectuted*/
int main()
{
	printf("Enter \"sort\" followed a list to sort \"[...]\"\n");

	//parsing in the rules and the grammar which was made by yacc
	yyparse();

	/*this is going to do your splitting of your code, and the sorting of your
	code as well*/
	return 0;
}

void yyerror  (char *str)
{
	fprintf(stderr, "error: %s\n", str);
}

/*
	so this is where you're going to have your sort, and this is where you're
	going to be parsing int he list, and turning each every single integer
	value into an integer
*/
