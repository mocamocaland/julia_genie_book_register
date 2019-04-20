using Genie.Router
using BooksController


route("/") do
  serve_static_file("/welcome.html")
end

route("/hello") do
  "Hello, Genie!"
end

# 第一引数にURL,第二引数に対応コントローラーのメソッドを指定
route("/books", BooksController.show_books)