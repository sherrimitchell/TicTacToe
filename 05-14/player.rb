require './board.rb'
## I want to find a method to randomly pick 'X' or 'O' for a player
class Player

  attr_accessor :letter

    def choose_move(board)  #change to choose move
      puts """
      Where would you like to move? 
      Please enter the number of the square: 
      """
      square = gets.chomp
      available = board.available_moves
      until square =~ /^#{available}$/
        puts """
        Sorry. Not a valid square. 
        Please enter a numbered square.
        """
        square = gets.chomp
      end
      square.to_i
    end
  end