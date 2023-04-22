require_relative './app'

def main
  app = App.new
  app.app_title
  app.all_options

  choice = gets.chomp
  if choice == '7'
    app.exit_library
  else
    exceute_selected_option
  end
end



main
