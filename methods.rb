@title = ">>>>>>>>>>>>Welcome to Peter's Liberry of Adult Books<<<<<<<<<<"
@title_picture = "( ͡° ͜ʖ ͡°)"
@title_picture_bookshelf = "
.-~~~~~~~~~-._       _.-~~~~~~~~~-.
__.'              ~.   .~              `.__
.'//                  \./                  \\`.
.'//                     |                     \\`.
.'// .-~'''''''~~~~-._     |     _,-~~~~'''''''~-. \\`. 
.'//.-'                 `-.  |  .-'                 '-.\\`.
.'//______.============-..   \ | /   ..-============.______\\`.
.'______________________________\|/______________________________`.
"

def menu
  puts `clear`
  puts @title.center(80)
  puts @title_picture.center(90)
  puts @title_picture_bookshelf.center(10)
  puts
  puts
  puts "1. Cre8 Book"
  puts "2. Cre8 Person"
  puts "3. List all Books"
  puts "4. List all People"
  puts "5. Lend Book"
  puts "6. Return Book"
  puts "7. List borrowed Books"
  puts
  puts "0. Quit"
  puts
  puts "-->"
  gets.to_i
end

def create_book(liberry)
  print "What is the title of the book? >> "
  title = gets.chomp

  print "\nWhat is the genre of the book? Please only type in the following genres: Science Fiction, Fantasy, Language, Horror, Drama, Historical, Romance, Teen or Thriller. >>  "
  genre = gets.chomp

  book = Book.new(title: title, genre: genre)
  liberry.add_book(book)
end

def list_books(liberry)
  puts liberry.list_books
end

def list_borrow_books(liberry)
  puts liberry.list_borrowed_books
end

def list_people(liberry)
  puts liberry.list_people
end

def create_person(liberry)
  print "what is the name of the person? "
  name = gets.chomp
  person = Person.new(name: name)
  liberry.add_person(person)
end

def borrow_book(liberry)
  puts liberry.list_books
  puts
  print "which book would you like to steal? "
  book_title = gets.chomp
  print "Which tool of a fook is trying to steal a book?: "
  person_name = gets.chomp

  liberry.borrow(person_name, book_title)
end

def return_book(liberry)
  puts
  print "Which idiot is trying to return a stolen book?: "
  person_name = gets.chomp
  person = liberry.people[person_name]
  puts

  puts person.list_books
  puts
  print "Which book is being returned?: "
  book_title = gets.chomp

  liberry.return(person_name, book_title)
end
