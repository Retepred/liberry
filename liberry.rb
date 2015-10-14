class Liberry
  attr_reader :name, :books, :people
  def initialize(options={})
    @name = options[:name]
    @books = {}
    @people = {}
  end

end