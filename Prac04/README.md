# Yacc and lex programming read  me
##Author: Tawana Kwaramba 19476700 
##Last modified: 25/10/2021

###HOW TO RUN
    this project is going to contain **run.sh** script. Therefore, all the marker
    has to do is to type in the command **run.sh** to run the approrpiate 
    programme

###FILES IN PROJECT: 
    list.l
        this is going to be the lex file which is going to read the input
        from the interpreter to see if it matches with any provided rules in the
        programme

    list.y
        this is the yacc file which is going to actually take the inputted
        list, convert it into an array, and sort it using bubble sort

    list.h
        this is going to contain all the prototypes of the C code which was 
        used in the programme, and the definition of types in the programme

    test.file
        this is going to contain some lists for the comilier to sort over

###TESTING METHOD:
    The programme was tested by running the run.sh script which is going to 
    pipe a test file into the the yacc prgramme, and the orignal list and
    the sorted list are going to be outputted into the terminal. The sorted
    arrays were observed to check the validity of the sorting algorithm of the
    inputted arrays
