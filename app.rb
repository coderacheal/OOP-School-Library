require_relative './library'

class App
  def initialize
    @books = []
    @rentals = []
    @people = []
  end

  def app_title
    puts 'Welcome to School Library App!'
  end

  def all_options
    puts ''
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given persons id'
    puts '7 - Exit'
  end

  def list_all_books
    puts 'No Books Available' if books.empty?
    @books.each { |book| puts 'Title: #{book.title}, Author: #{book.author}'}
  end

  # def exceute_selected_option
  #   if 
  # end

  def exit_library
    puts 'Sad to see you go'
    exit
  end
end
