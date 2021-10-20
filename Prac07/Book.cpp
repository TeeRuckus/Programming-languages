#include <string>
#include <cstdlib>
#include <iostream>
#include "Book.h"

//default constructors 
Book::Book()
{
    bookID  = 1;
    bookName = "Discourses and Selected - Epictectus";
    ISBN = "12345";
}

//alternate constructors
Book::Book(int inBookID, std::string inBookName, std::string inISBN)
{
    bookID = inBookID;
    bookName = inBookName;
    ISBN = inISBN;
}

//actually functions for this class
