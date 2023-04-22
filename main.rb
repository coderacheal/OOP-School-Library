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
  # choice = gets.chomp
  # if choice == '7'
  #   app.exit_library
  # else
  #   app.exceute_selected_option(choice)
  # end
end

# def main
#   app = App.new
#   app.intro
#   option = ''
#   while option != '7'
#     app.display_options
#     option = gets.chomp
#     app.execute_option(option) unless option == '7'
#   end
#   app.exit_app
# end



main
