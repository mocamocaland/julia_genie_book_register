# Book コントローラーを修正する
module BooksController
# Datesモジュールをimport
using Dates

    struct Book
      title::String
      publication_date::Date
    end

    books = [
    Book("すごい Julia", Date(2019, 3, 3)),
    Book("たのしい Julia", Date(2019, 2, 7)),
    Book("みんなの Julia", Date(2019, 1, 26)),
    Book("基礎からわかる Julia", Date(2018, 12, 15)),
    Book("スターティング Julia", Date(2018, 11, 28)),
    Book("やさしい Julia", Date(2018, 10, 18)),
    Book("苦しんで覚える Julia", Date(2018, 9, 24)),
    Book("はじめての Julia", Date(2018, 8, 19)),
    Book("ネコでもわかる Julia", Date(2018, 7, 7))
    ]

    # mapreduce関数を利用して本のリストを返す
    function show_books()
        response = "
           <h1>Julia Book</h1>
           <ul>
             $( mapreduce(book -> "<li>$(book.title) / $(book.publication_date)</li>", *, books) )
           </ul>
        "
        return response
    end
end