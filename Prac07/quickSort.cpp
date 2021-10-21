#include <iostream>
#include <string>
#include <cstdlib>
#include "Book.h"
#include "quickSort.h"

int main()
{
    int size = 10;
    std::string placeHolder = "NOT IN USE";
    //creating some objects so we can perform a quick sort on them 
    Book* book1 = new Book();
    Book* book2 = new Book();
    Book* book3 = new Book();
    Book* book4 = new Book(102800, "Seven habits of highly effecitve people -"
    " Stephen R. Covey", placeHolder);
    Book* book5 = new Book(21000, "Poor Charlie's Almanack: The wit and "
    "wisdom of Charles T", placeHolder);
    Book* book6 = new Book(999,  "Sam Walton - Sam Walton", placeHolder);
    Book* book7 = new Book(10, "Tao of Munger - David Clark", placeHolder);
    Book* book8 = new Book(2, "Principles - Ray Dailo", placeHolder);
    Book* book9 = new Book(5, "Meditations - Marcus Aurelius", placeHolder);
    Book* book10 = new Book(10, "Man's search Meaning - Victor E. "
    " Frankl", placeHolder);

    Book* bookCollection[size] = {
    book5,
    book6,
    book7,
    book8,
    book9,
    book10,
    book1,
    book2,
    book3,
    book4,
    };

    //int num = elements[0] -> getBookID();

    std::cout << "Sorting books by Book ID, using quick sort" << std::endl;

    std::cout << "The original books collection" <<std::endl;

    printElements(bookCollection, size);

    std::cout << "testing out the swap function" << std::endl;
    swap(bookCollection[1], bookCollection[0]);
    printElements(bookCollection, size);

    std::cout << "The sorted books collection" <<std::endl;

    return 0;
}

void printElements(Book*  inBooks[], int inSize)
{


    for(int ii = 0 ; ii < inSize; ii++)
    {
        std::cout << "Book ID: " << inBooks[ii] -> getBookID() << "\n\tTITLE: "+
        inBooks[ii] -> getBookName() << std::endl << std::endl;
    }
}

void quickSort(Book* inBooks[], int inSize)
{
    int leftIndx = 0;
    int rightIndx = inSize;
}

void swap(Book* bookOne, Book* bookTwo)
{
    Book temp = *bookOne;
    *bookOne = *bookTwo;
    *bookTwo = temp;
}
