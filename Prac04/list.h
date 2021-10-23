#define YYSTYPE char *
#define FALSE 0
#define TRUE !FALSE
int yylex();
void yyerror(char *s);
int* makeArray(char * inList, int size);
int getSize(char *inList);
void displayArrray(int inIntArr[], int arrayLen);
void bubbleSort(int* inArr, int size);
void swap(int* memOne, int* memTwo);
