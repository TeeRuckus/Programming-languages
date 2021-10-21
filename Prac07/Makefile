#File Created: Friday 9th of August 10:14
#AUTHOR: Tawana Kwaramba
#LAST MODIFIED: 
#MODIFIED BY:
#PURPOSE: A make file to run all the download relateded programmes 

# Makefile Variables
CC = g++
EXEC = quickSort
OBJ = Book.o quickSort.o

$(EXEC) : $(OBJ)
	$(CC) $(OBJ) -o $(EXEC) 

Book.o : Book.cpp Book.h
	$(CC) $(CFLAGS) -c Book.cpp

quickSort.o : quickSort.cpp
	$(CC) $(CFLAGS) -c quickSort.cpp

clean:
	rm -f $(EXEC) $(TEST) $(OBJ) $(TEST_OBJ) $(gameTest) $(game_OBJ)
