require_relative './library'
require_relative './student'
require_relative './teacher'

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
    puts 'No Books Available' if @books.empty?
    @books.each { |book| puts "Title: #{book.title}, Author: #{book.author}"}
  end

  def list_all_people
    puts 'No person registered yet' if @people.empty?
    @people.each { |person| puts "Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"}
  end

  def create_student
    print 'Age: '
    age = gets.chomp.to_i
    print "\nName: "
    name = gets.chomp.capitalize
    print "\nDo you have parental permission? [Y/N]: "
    parental_permission = gets.downcase == 'y'
    @people << Student.new(age, name, parental_permission)
    puts 'Student created successfully!'
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp.to_i
    print "\nName: "
    name = gets.chomp.capitalize
    print "\n What is your specialization? "
    specialization =  gets.chomp.capitalize
    @people << Student.new(age, name, specialization)
    puts 'Teacher created successfully!'
  end

  def create_person
    puts 'Do you want to create a student(1) or a teacher(2) account [input respective number]?'
    creating_user = gets.chomp
    if creating_user == '1'
      create_student
    elsif creating_user == '2'
      create_teacher
    else
      puts 'You did not make an accurate selection. Please enter  1 or 2'
    end
  end

  def create_book
    puts 'Book created successfully!'
  end

  def create_rental
    puts 'Rental created successfully!'
  end

  def list_rental
    puts 'These are all the books we have'
  end

  def exceute_selected_option(choice)
    case choice
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_rental
    else
      puts 'You have entered an invalide value. Options range from 1 - 7'
    end
  end

  def exit_library
    puts 'Sad to see you go'
    exit
  end
end
