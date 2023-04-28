require_relative './modules/app'

def main
  app = App.new
  app.app_title
  choice = ''

  exit_library = lambda {
    puts 'Sad to see you go'
    exit
  }

  while choice != '7'
    app.all_options
    choice = gets.chomp
    app.exceute_selected_option(choice) unless choice == '7'
  end
  exit_library.call
end

main
