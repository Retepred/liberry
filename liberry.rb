class Liberry
  attr_reader :name, :books, :people
  def initialize(options={})
    @name = options[:name]
    @books = {}
    @people = {}
  end

  def add_book(book)
    books[book.title] = book
  end

  def list_books
    if books.empty?
      "This Liberry is empty, please burn it down"
    else
      book_titles = books.map do |key, book|
        book.pretty_string
      end
      book_titles.join("\n")
  end
end
end