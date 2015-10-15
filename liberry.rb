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

  def add_person(person)
    people[person.name] = person
  end

  def borrow(person_name, book_title)
    person = people[person_name]
    book = books.delete(book_title)
    person.borrow(book)
  end

  def return(person_name, book_title)
    person = people[person_name]
    book = person.return(book_title)

    add_book(book)
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

  def list_borrowed_books
    #people - enumerated - find if books are missing. If they are - list book int people's posession.
    if people.books.empty?
      "This Liberry is empty, please burn it down"
    else
      book_titles = books.map do |key, book|
        book.pretty_string
      end
      book_titles.join("\n")
  end
  end

  def list_people
    if people.empty?
      "This Liberry has no living denizens. Watch out for the restless dead."
    else
      people.map { |key, personal| personal.pretty_string }.join("\n")
    end
  end
end