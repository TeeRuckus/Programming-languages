using namespace std;

class Book
{
    private:
        int bookID;
        std::string bookName;
        std::string ISBN;

    public:
        int GetBookID();
        std::string GetBookName();
        std::string GetISBN();

        void SetBookID(int);
        void setBookName(std::string);
        void SetBookISBN(std::string);

        Book();
        ~Book();
};
