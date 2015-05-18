require './board.rb'

class Human

    def player_move(board)
      Board.to_s
      puts """
      Where would you like to move? 
      Please enter the number of the square: 
      """
      square = gets.chomp
      available = board.select { |x| x.is_a? Fixnum }
      until square =~ /^#{available}$/
        puts """
        Sorry. Not a valid square. 
        Please enter a numbered square.
        """
        square = gets.chomp
      end
      square.to_i - 1
    end
  end