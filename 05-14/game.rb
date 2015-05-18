require './board.rb'

class Game

    WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
          [0, 3, 6], [1, 4, 7], [2, 5, 8],
          [0, 4, 8], [2, 4, 6]]

    board = Board
    
    def win_game?(board)
      WINS.any? do |a, b, c|
        board[a] == board[b] &&  board[b] == board[c]
      end
    end
      
    def draw_game?(board)
      board.all? { |x| x.is_a? String }
    end

    def game_over?(board)
      win_game?(board) || draw_game?(board)
    end

    def get_entry
      puts """
      Welcome to Tic Tac Toe.
      Please enter an X or O:
      """
      entry = gets.chomp
      until entry =~ /^[xo]$/i
        puts """
        Sorry. Invalid entry. 
        You must enter an X or an O: 
        """
      entry = gets.chomp
      end
      entry.upcase
    end
  end
end