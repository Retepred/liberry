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