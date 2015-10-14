@title = ">>>>>>>>>>>>Welcome to Peter's Liberry of Adult Books<<<<<<<<<<"

def menu
  puts `clear`
  puts @title.center(80)
  puts
  puts
  puts "1. Create Book"
  puts "2. Create Person"
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
  print "What is the title of the book?"
  title = gets.chomp

  print "What is the genre of the book?"
  title = gets.chomp

  Book.new(tite: title, genre: genre)
end