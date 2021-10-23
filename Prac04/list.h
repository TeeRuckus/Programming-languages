#define YYSTYPE char *
int yylex();
void yyerror(char *s);
int* makeArray(char * inList);
int getSize(char *inList);
void displayArrray(int inIntArr[], int arrayLen);
