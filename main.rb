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
    puts 'Please choose an option by entering a number'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given persons id'
    puts '7 - Exit'
  end

  while choice != '7'
    app.all_options
    choice = gets.chomp
    app.exceute_selected_option(choice) unless choice == '7'
  end
  app.exit_library
end

main
