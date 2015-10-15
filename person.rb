class Person

  attr_reader :name, :books

  def initialize(options={})
    @name=options[:name]
    @books={}
    @people={}
  end

  def list_books
    if books.empty?
      "This Person is empty, please burn me down"
    else
      book_titles = books.map do |key, book|
        book.pretty_string
      end
      book_titles.join("\n")
    end
  end

  def borrow(book)
    books[book.title] = book
  end

  def return(book_title)
    book = books.delete(book_title)
  end

  def pretty_string
    "#{name} is an idiot and has stolen #{books.size} book#{'s' unless books.size ==1} from the liberry."
  end

end