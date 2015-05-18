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

require './board'

def tic_tac_toe
  board = board.new
  # current_player = get_entry
  # until game_over?(board)
  #   puts "Next player. Make a move. '#{current_player}'!"
  #   move = player_move(board)
  #   board[move] = current_player
  #   current_player = current_player == 'X' ? 'O' : 'X'
  # end
  # puts "Game Over!"
  display_board(board)
end

# tic_tac_toe