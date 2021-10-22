class Book
{
    private:
        int bookID;
        std::string bookName;
        std::string ISBN;
        bool validateIntegerInput(int);
        bool validateName(std::string);

    public:
        Book();
        Book(int, std::string);
        int getBookID();
        std::string getBookName();
        std::string getISBN();

        void setBookID(int);
        void setBookName(std::string);
        void setBookISBN(std::string);
        ~Book();
};
