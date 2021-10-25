#include <iostream>
#include <string>
#include <cstdlib>
#include "Book.h"
#include "quickSort.h"

int main()
{
    int size = 10;
    //creating some objects so we can perform a quick sort on them
    Book* book1 = new Book();
    Book* book2 = new Book();
    Book* book3 = new Book();
    Book* book4 = new Book(102800, std::string("Seven habits of highly "
    "effecitve people - Stephen R. Covey"));
    Book* book5 = new Book(21000, std::string("Poor Charlie's Almanack:"
    "The wit and wisdom of Charles T"));
    Book* book6 = new Book(999,  std::string("Sam Walton "
    "- Sam Walton"));
    Book* book7 = new Book(10, std::string("Tao of Munger - David Clark")
    );
    Book* book8 = new Book(2, std::string("Principles - Ray Dailo"));
    Book* book9 = new Book(5, std::string("Meditations - Marcus Aurelius"));
    Book* book10 = new Book(10, std::string("Man's search Meaning - Victor E. "
    " Frankl"));

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

    std::cout << "SORTING BOOKS BY BOOK ID, USING QUICK SORT" << std::endl;
    std::cout << "The original books collection" <<std::endl;
    printElements(bookCollection, size);


    std::cout << "EXECUTING QUICK SORT ... " << std::endl <<std::endl;
    quickSort(bookCollection, size);

    std::cout << "The sorted books collection" <<std::endl;
    printElements(bookCollection, size);


    //making sure that all the created objects are going to be deleted from
    //the heap which we're going to be using
    delete book1;
    delete book2;
    delete book3;
    delete book4;
    delete book5;
    delete book6;
    delete book7;
    delete book8;
    delete book9;
    delete book10;
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
    //arrays are going to be 0 indexed hence, subtract one
    int rightIndx = inSize -1;

    quickSortRec(inBooks, leftIndx, rightIndx);
}

void quickSortRec(Book *inBooks[], int leftIndx, int rightIndx)
{
    //some validation to make sure that we;re going to be doing quick sort on
    //the right part of the array which was prvided by the user

    if (rightIndx > leftIndx)
    {
        //middle selection pivot strategy 
        int midIndx  = (leftIndx + rightIndx) / 2;
        int newPivotIndx = doPartition(inBooks , leftIndx, rightIndx, midIndx);

        //seperately sort elements before, and after partioning had occured
        quickSortRec(inBooks, leftIndx, newPivotIndx - 1);
        quickSortRec(inBooks, newPivotIndx + 1, rightIndx);
    }
}

//ASSERTS: will bookOne with bookTwo in the current books of arrays
void swap(Book* bookOne, Book* bookTwo)
{
    Book temp = *bookOne;
    *bookOne = *bookTwo;
    *bookTwo = temp;
}


/*PURPOSE: this is going to be represent the partioning process in the quick
sort algorithm. Whereby it's going to all the elements which are less than
the selected pivot on the right of the pivot, and all elements bigger than
the pivot on the right side of the array. Additionally, this function is going
to partion the data based on the in books bookID.Lastly the function is going
to export the new pivot index*/
int  doPartition(Book* inBooks[], int leftIndx, int rightIndx, int pivotIndx)
{
    Book temp = *(inBooks[pivotIndx]);
    //int pivotValue = inBooks[pivotIndx] -> getBookID();
    swap(inBooks[rightIndx], inBooks[pivotIndx]);
    int currIndx = leftIndx;


    for(int ii = leftIndx; ii < rightIndx; ii++)
    {
        if ((inBooks[ii] -> getBookID()) <= (temp.getBookID()))
        {
            swap(inBooks[ii], inBooks[currIndx]);
            currIndx++;
        }
    }

    //swap(inBooks[pivotIndx], inBooks[rightIndx]);

    //putting the pivot back into it's right ful place
    *(inBooks[rightIndx]) = *(inBooks[currIndx]);
    *(inBooks[currIndx]) = temp;

    return currIndx;
}


