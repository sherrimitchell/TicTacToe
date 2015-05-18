## May 14 Homework Assignment
## Tic Tac Toe - The Return
## The game allows 2 players to play tic tac toe from the console
## Players can take turns playing without having to choose a spot
## At the end of the game, the board is displayed (Win, Lose, Draw)
## When the game ends, the player can select to play again or exit
## You win by getting 3 of the same letters in a row horizontally, vertically, or diagonally
## A draw happens if the board gets filled without either player getting 3 of the same letters in a row
## A player chooses which letter they will play with, and they only enter that letter during their turn
## Each player gets one turn to enter a letter into a space.
## A space only holds one letter, and after a letter is entered it can't be deleted from that space
## The next player's turn starts after the previous player has entered their letter into a space.
## The game ends when one player wins or there is a draw

# require 'pry'

# binding.pry

require './board'
require './player'
# require './game'

class Tictactoe

  def initialize
    @board = Board.new
    puts "Player 1"
    @player1 = Player.new
    puts "Player 2"
    @player2 = Player.new 
    @letter = get_letter 
  end

  def play
    current_player = @player1
    until game_over?
      turn(current_player)
      if current_player == @player1
        current_player = @player2
      else
        current_player = @player1
      end
    end
    @board.display
    puts "Game Over!"
  end

  def turn(player)
    @board.display
    index = player.choose_move(@board)
    letter = player.letter
    @board.add_move(index, letter)
  end

  def get_letter
    puts """
    Welcome to Tic Tac Toe.
    Please enter an X or O:
    """
    letter = gets.chomp
    until letter =~ /^[xo]$/i
      puts """
      Sorry. Invalid entry. 
      You must enter an X or an O: 
      """
    letter = gets.chomp
    end
    letter.upcase
    @player1.letter = letter.upcase
    @player1.letter == 'X' ? @player2.letter = 'O' : @player2.letter = 'X'
  end

  # def tic_tac_toe
  #   current_player = @letter == @player1.letter ? @player1 : @player2
  #   until game_over?
  #     puts "Next player. Make a move. '#{current_player}'!"
  #     move = current_player.choose_move(board)
  #     board[move] = current_player
  #     current_player = current_player == @player1 ? @player2 : @player1
  #   end
  #   puts "Game Over!"
  #   @board.display
  # end

  def game_over?
    @board.win? || @board.draw?
  end

  
end


