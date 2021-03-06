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
Book::Book(int inBookID, std::string inBookName)
{
    bookID = inBookID;
    bookName = inBookName;
    ISBN = "NOT IN USE";
}


//defining that the behaviours of the class is going to be in
int Book::getBookID()
{
    return bookID;
}

std::string  Book::getBookName()
{
    return bookName;
}

std::string Book::getISBN()
{
    return ISBN;
}

void Book::setBookID(int inID)
{
    if(validateIntegerInput(inID))
    {
        bookID = inID;
    }
}

void Book::setBookName(std::string inName)
{
    if(validateName(inName))
    {
        bookName = inName;
    }
}

void Book::setBookISBN(std::string inBookISBN)
{
    if(validateName(inBookISBN))
    {
        ISBN = inBookISBN;
    }
}

Book::~Book()
{
	//freeing the memory which was allocated in its class memebers
}

//all the private methods which are going to be used for data validation
bool Book::validateIntegerInput(int inNum)
{
    bool valid = true;
    if (inNum < 0)
    {
        throw  std::invalid_argument("ERROR: ensure that the book ID is " 
        "going to be a positive number");
    }

    return true;
}


bool Book::validateName(std::string inName)
{
    bool valid = true;
    if (inName.length() == 0)
    {
        throw std::invalid_argument("ERROR: you can't have a blank string "
        "as a book name");
    }

    return valid;
}
