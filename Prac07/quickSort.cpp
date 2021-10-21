#include <iostream>
#include <string>
#include <cstdlib>
#include "Book.h"
#include "quickSort.h"

int main()
{
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

    Book* elements[] = {
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

    return 0;
}
