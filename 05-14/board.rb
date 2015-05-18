class Board

def initialize # When Board.new is called, the 3x3 board will print
  @spaces = (1 .. 9).to_a
end

  def to_s
    """
    #{spaces[0]} | #{spaces[1]} | #{spaces[2]}
    ---+----+----
    #{spaces[3]} | #{spaces[4]} | #{spaces[5]}
    ---+----+----
    #{spaces[6]} | #{spaces[7]} | #{spaces[8]}
    
    """ 
  end

  board = Board.new
  puts board.spaces 