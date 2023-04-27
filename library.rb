class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end

  def to_hash()
    {
      title: @title,
      author: @author,
      rentals: @rentals
    }
  end
end

class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    @book.rentals << self if @book.is_a?(Book)

    @person = person
    @person.rentals << self if @person.is_a?(Person)
  end

  # def to_hash()
  #   {
  #     title: @title
  #     author: @author,
  #     rentals: @rentals
  #   }
  # end
end
