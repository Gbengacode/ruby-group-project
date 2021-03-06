require_relative './app'

class Main
  def initialize
    @app = App.new
  end

  def options
    puts 'Please select 1 option below
        1 - List all books
        2 - List all music albums
        3 - List all games
        4 - List all genres
        5 - List all labels
        6 - List all authors
        7 - Add a book
        8 - Add music album
        9 - Add a game
        10 - Exit
        '
  end

  def start
    input = 0
    while input.to_i < 10
      options
      input = gets.chomp
      @app.options_cases(input)
    end
    @app.create_music_album
    @app.create_games
    @app.save_books
    puts 'Successfully exit app'
  end
end

main = Main.new
main.start
