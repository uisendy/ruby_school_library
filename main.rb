require_relative './app'

def prompt
  loop do
    display_options
    option = take_input
    option_methods(option)

    break if option == 7
  end
end



def main()
  app = App.new
  app.run
end

main()