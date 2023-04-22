require_relative './app'

def main
  app = App.new
  app.app_title
  choice = ''

  while choice != '7'
    app.all_options
    choice = gets.chomp
    app.exceute_selected_option(choice) unless choice == '7'
  end
  app.exit_library
end

main
