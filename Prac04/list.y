%{
/* C declaration used in actions*/
#include "list.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}

/*YACC definition*/
%token TOKLIST TOKENSORT PRINT EXIT_COMMAND EMPTY_LIST

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
        int* arrayToSort;
        printf("Sorting: %s ...\n", $2);
        arrayToSort = makeArray($2);

        free(arrayToSort);
	}
    |
    TOKENSORT EMPTY_LIST
    {
        printf("empty list TvT\n");
    }
    ;

exit:
    EXIT_COMMAND
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
    //you can throw your initialisation code for your data structures here

	//parsing in the rules and the grammar which was made by yacc
	return yyparse();

	/*this is going to do your splitting of your code, and the sorting of your
	code as well*/
}

void yyerror  (char *str)
{
	fprintf(stderr, "error: %s\n", str);
}

//all the helper functions
int* makeArray(char * inList)
{
    //char[strlen(inList) + 1] copyStr;
    char* copyStr;
    int sizeStr = strlen(inList) + 1;
    copyStr = (char*)malloc(sizeStr * sizeof(char));
    char* delimiter = ",[]";
    int ii = 0;

    strcpy(copyStr, inList);
    int size = getSize(copyStr);

    int* outArr = (int*)malloc((size) * sizeof(int));

    char* token = strtok(inList, delimiter);
    while (token != NULL)
    {
        printf("token: %s\n", token);
        outArr[ii] = atoi(token);
        token = strtok(NULL, delimiter);
        ii++;
    }

    printf("size: %d\n", size);
    free(copyStr);

    displayArrray(outArr, size);

    return outArr;
}

/*PURPOSE: a function to tokenize a string, and to count how many tokens 
were found*/
int getSize(char *inList)
{
    int count = 0;
    char* delimiter = ",[]";
    char* token = strtok(inList, delimiter);
    while (token != NULL)
    {
        printf("%s\n", token);
        token = strtok(NULL, delimiter);
        count++;
    }

    return count;
}

/*PURPOSE: to parse string formatted integers into integers */
void parseArrInt(char** inCharArr, int* inIntArr, int arrayLen)
{
    int ii;
   
    /*ii = 2: ignoring the first two arguments which are the programme name
    and the function been called from the command line */ 
    for(ii = 2; ii < arrayLen; ii++)
    {
        inIntArr[ii] = atoi(inCharArr[ii]);
    }
}

/*PURPOSE: to take an array and display them in the following format 
  {4, 14, 5, 8, 2}

  CODE ADAPTED: from my own UCP submission*/
void displayArrray(int inIntArr[], int arrayLen)
{
    int ii;
    printf("{%d, ",inIntArr[0]);

    /*printing all the middle elements of the array, and leaving the last 
    element of the array so it can be formatteded propely */
    for(ii = 1; ii < arrayLen -1; ii++)
    {
        printf("%d, ",inIntArr[ii]);
    }
    printf("%d}\n",inIntArr[arrayLen - 1]);
}

