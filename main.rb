require_relative './app'

def main
  app = App.new
  choice = ''

  def app_title
    puts '==================SCHOOL LIBRARY======================'
    puts ''
    puts 'Welcome to the School Library App!'
    puts ''
  end

  app_title()

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

  def exit_library
    puts 'Sad to see you go'
    exit
  end

  while choice != '7'
    app.all_options
    choice = gets.chomp
    app.exceute_selected_option(choice) unless choice == '7'
  end
  app.exit_library
end

main
