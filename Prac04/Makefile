#File Created: Friday 9th of August 10:14
#AUTHOR: Tawana Kwaramba
#LAST MODIFIED: 
#MODIFIED BY:
#PURPOSE: A make file to run all the download relateded programmes 

# Makefile Variables
CC = gcc 
YY = yacc
YFLAGS = -d 
ll = lex
EXEC = lex.yy.c y.tab.c y.tab.h
CFLAGS = -g
OBJ = list

$(OBJ): $(EXEC)
	$(CC) $(EXEC) -o $(OBJ) -ll



lex.yy.c: list.l
	$(ll)  list.l

y.tab.c: list.y
	$(YY) $(YFLAGS) list.y


clean:
	rm -f $(EXEC) $(OBJ) 
