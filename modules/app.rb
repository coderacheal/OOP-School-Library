require_relative './book'
require_relative './rental'
require_relative './student'
require_relative './teacher'
require_relative './storage'
require 'json'

class App
  def initialize
    @books = read_from_file('./database/books.json')
    @rentals = read_from_file('./database/rentals.json')
    @people = read_from_file('./database/people.json')
  end

  def app_title
    puts '==================SCHOOL LIBRARY======================'
    puts ''
    puts 'Welcome to the School Library App!'
    puts ''
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
    puts '----------------------------'
    @books = read_from_file('./database/books.json')
    puts 'No Books Available' if @books.empty?
    @books.each { |book| puts "Title: #{book['title']}, Author: #{book['author']}" }
    puts '----------------------------'
  end

  def list_all_people
    puts '----------------------------'
    @people = read_from_file('./database/people.json')
    puts 'No person registered yet' if @people.empty?
    @people.each do |person|
      puts "#{[person['rank']]} Name: #{person['name']}, Age: #{person['age']}, ID: #{person['id']}"
    end
    puts '----------------------------'
  end

  def create_student
    print 'Name: '
    name = gets.chomp.capitalize
    print 'Age: '
    age = gets.chomp.to_i
    print 'Do you have parental permission? [Y/N]: '
    parental_permission = gets.downcase == 'y'
    @people << Student.new(age, name, parental_permission)
    save_to_file(@people, './database/people.json')
    puts 'Student created successfully!'
  end

  def create_teacher
    print 'Name: '
    name = gets.chomp.capitalize
    print 'Age: '
    age = gets.chomp.to_i
    print 'What is your specialization? '
    specialization = gets.chomp.capitalize
    @people << Teacher.new(age, name, specialization)
    save_to_file(@people, './database/people.json')
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
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp.capitalize
    @books << Book.new(title, author)
    save_to_file(@books, './database/books.json')
    puts 'Book created successfully!'
  end

  def create_rental
    if @books.empty? || @people.empty?
      puts 'There are no people to rent out to'
      return
    end

    @books = read_from_file('./database/books.json')
    puts 'Select a book from the following list by number (not by id)'
    @books.each_with_index { |book, index| puts "#{index}. Title: #{book['title']}, Author: #{book['author']}" }
    book_index = gets.chomp.to_i

    @people = read_from_file('./database/people.json')
    puts 'Select a person from the following list by number (not by id)'
    @people.each_with_index do |person, index|
      puts "#{index}. Name: #{person['name']}, Age: #{person['age']}, ID: #{person['id']}"
    end
    person_index = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp
    @rentals << Rental.new(date, @books[book_index], @people[person_index])
    save_to_file(@rentals, './database/rentals.json')
    puts 'Rental created successfully'
  end

  def list_rentals
    @rentals = read_from_file('./database/rentals.json')
    print 'Enter ID of Person: '
    id = gets.chomp.to_i
    puts 'All rentals of this users'
    @rentals.each do |rental|
      if rental['person']['id'] == id
        puts "Date: #{rental['date']}, Book: \"#{rental['book']['title']}\" by #{rental['book']['author']}"
      end
    end
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
      list_rentals
    else
      puts 'You have entered an invalide value. Options range from 1 - 7'
    end
  end
end


def