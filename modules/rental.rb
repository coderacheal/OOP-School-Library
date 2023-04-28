class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @id = Random.rand(1..1000)
    @date = date
    @book = book
    @person = person
    @book.rentals << self if @book.is_a?(Book)
    @person.rentals << self if @person.is_a?(Person)
  end

  def to_hash()
    {
      id: @id,
      date: @date,
      book: @book,
      person: @person
    }
  end
end
