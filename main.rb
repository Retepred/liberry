require 'pry-byebug'

#object code
require_relative 'liberry'
require_relative 'book'
require_relative 'person'

#Methods functional code
require_relative 'methods'

liberry=Liberry.new name: "Peter's Liberry of Adult Books"

response = menu

while response != 0
  case response
  when 1  
    create_book(liberry)
  when 2
    #TODO "2. Create Person"
  when 3
    list_books(liberry)
  when 4
    #TODO "4. List all People"
  when 5
    #TODO "5. Lend Book"
  when 6
    #TODO "6. Return Book"
  when 7
    #TODO "7. List borrowed Books"
  else
    puts "invalid option"
  end

  puts "press enter to continue"
  gets
  response = menu

end



binding.pry;""