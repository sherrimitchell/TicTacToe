# require 'pry'

# binding.pry

class Board
            
 WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]]
                                                         # When Board.new is called, the 3x3 board will print
    def initialize
      @spaces = (1..9).to_a
    end

    def display
      puts """ 
       #{@spaces[0]} | #{@spaces[1]} | #{@spaces[2]} 
  ----+----+----
       #{@spaces[3]} | #{@spaces[4]} | #{@spaces[5]}
  ----+----+----
       #{@spaces[6]} | #{@spaces[7]} | #{@spaces[8]} 
    """
    end 
    def available_moves
      @spaces.reject { |space| space.is_a? String}
    end

    def add_move(space, letter)
      @spaces[space-1] = letter
    end

    def win?
      WINS.any? do |a, b, c|
        @spaces[a] == @spaces[b] &&  @spaces[b] == @spaces[c]
      end
    end

    def draw?
      @spaces.all? { |x| x.is_a? String }
    end
end

board = Board.new
# binding.pry
# board.display_board
# display_board
# object.method