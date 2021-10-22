#File Created: Friday 9th of August 10:14
#AUTHOR: Tawana Kwaramba
#LAST MODIFIED: 
#MODIFIED BY:
#PURPOSE: A make file to run all the download relateded programmes 

# Makefile Variables
CC = gcc 
ll = lex
EXEC = lex.yy.c
CFLAGS = -g
OBJ = rules

$(EXEC) : $(OBJ)
	$(CC) $(EXEC) -o $(OBJ) -ll

rules : rules.l
	$(ll)  rules.l

clean:
	rm -f $(EXEC) $(OBJ) 
