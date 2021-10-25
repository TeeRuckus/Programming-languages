%{
/* C declaration used in actions*/
#include "list.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

%}

/*YACC definition*/
%token TOKLIST TOKENSORT PRINT EXIT_COMMAND EMPTY_LIST ONE_NUMBER

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
        char* copyStr;
        int sizeStr = strlen($2) + 1;
        copyStr = (char*)malloc(sizeStr * sizeof(char));
        strcpy(copyStr, $2);

        int size = getSize(copyStr);

        printf("Sorting: %s ...\n", $2);
        arrayToSort = makeArray($2, size);
        bubbleSort(arrayToSort, size);

        printf("sorted array: ");
        displayArrray(arrayToSort, size);
        printf("\n");

        free(arrayToSort);
        free(copyStr);
	}
    |
    TOKENSORT EMPTY_LIST
    {
        printf("empty list TvT\n");
    }
    |
    TOKENSORT ONE_NUMBER
    {
        printf("already sorted: %s", $2);
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

/*PURPOSE: to be sort an integer array in ascending order using the ebubble
sort method*/
void bubbleSort(int* inArr, int size)
{
    int sorted = FALSE;

    while(!sorted)
    {
        sorted = TRUE;
        for (int ii = 0; ii < size - 1; ii++)
        {
            if (inArr[ii] > inArr[ii+1])
            {
                swap(&inArr[ii], &inArr[ii+1]);
                sorted = FALSE;
            }
        }
    }
}

/*PURPOSE: to swap two integer memory locations around */
void swap(int* memOne, int* memTwo)
{
    int temp  = *memOne;
    *memOne = *memTwo;
    *memTwo = temp;
}


/*PURPOSE: to take in a list as a string, tokenize the string, and extract all
the numbers from the string */

int* makeArray(char * inList, int size)
{
    char* delimiter = ",[]";
    int ii = 0;


    int* outArr = (int*)malloc((size) * sizeof(int));

    char* token = strtok(inList, delimiter);
    while (token != NULL)
    {
        outArr[ii] = atoi(token);
        token = strtok(NULL, delimiter);
        ii++;
    }


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
        token = strtok(NULL, delimiter);
        count++;
    }

    return count;
}

/*PURPOSE: to take an array and display them onto the screen, and the displayed
numbers will be surrounded with '{' and '}' brackets

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

