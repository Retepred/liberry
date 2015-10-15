require 'pry-byebug'

#object code
require_relative 'liberry'
require_relative 'book'
require_relative 'person'

#Methods functional code
require_relative 'methods'

liberry=Liberry.new name: "Peter's Liberry of Adult Books"


liberry.add_person Person.new name:'nevster'
liberry.add_person Person.new name: 'michael'
liberry.add_person Person.new name: 'graeme'
liberry.add_person Person.new name: 'neil'
liberry.add_book Book.new title: "neil's naughty nibbles", genre: "nistorical"
liberry.add_book Book.new title: "graeme's gangreene", genre: "norror"
liberry.add_book Book.new title: "nevin's knob", genre: "science fiction"
liberry.add_book Book.new title: "to kill a mockingbird", genre: "fiction"
liberry.add_book Book.new title: "michaels misery", genre: "teen"


response = menu

while response != 0
  case response
  when 1  
    create_book(liberry)
  when 2
    create_person(liberry)
  when 3
    list_books(liberry)
  when 4
    list_people(liberry)
  when 5
    borrow_book(liberry)
  when 6
    return_book(liberry)
  when 7
    list_borrow_books(liberry)
  else
    puts "invalid option"
  end

  puts "press enter to continue"
  gets
  response = menu

end



binding.pry;""