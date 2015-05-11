## May 7 Homework Assignment
## Tic Tac Toe
## Features:
## Allow 2 player to enter an 'x' or 'o' marker into a space
## When a player has entered 3 markers of the same type in a row, end the game

require 'pry'

# Remove/comment require.pry/ binding.pry before sending file to Github

# Print a board for Tic Tac Toe

# binding.pry

board = [
  [ "b1", "b2", "b3" ],
  [ "b4", "b5", "b6" ],
  [ "b7", "b8", "b9" ]
]

# binding pry
  

  def print_board(board)
    puts " 
      #{board[0][0]} | #{board[0][1]} | #{board[0][2]}
      ---+----+----
      #{board[1][0]} | #{board[1][1]} | #{board[1][2]}
      ---+----+----
      #{board[2][0]} | #{board[2][1]} | #{board[2][2]} "

  end
  
  # Test for print_board function: print_board board

# A player may select one Player option: Player 1, Player 2, or Play against the computer.
def player_option(player)
  player = ""
  player = gets.chomp.to_i

  if player_option == 1
    player == player_1
  elsif player_option == 2
    player == player_2
  else player_option == 3
    player == 3
  end
puts player 
end

def valid_player?(player)
is_number = (1..3).include?(player)
  end

def get_player(player)
  puts "Please enter a Player option:"
  puts "Enter 1 for Player 1, Enter 2 for Player 2, or Enter 3 to Play Against the Computer."
 until valid_player?(player)
  puts "Please enter 1 for Player 1, Enter 2 for Player 2, or Enter 3 to Play Against the Computer."
  player = gets.chomp.to_i
end
  player
end

def display_board(board)
  print_board(board)
end

def start_game(player, board)
  get_player(player)
  display_board(board)
end

def turn_complete(player, turn, entry, board)
  get_player
  get_entry
  turn.each do |letter|
    if is_letter.include?(letter)
      print entry
    else get_entry
    end
  
end
def row_complete(entry, board)
  
  entry.each do |entry|
    if 
  
end
def game_finished?(entry, board, turn_count)
  turn_count.zero? || row_complete?(entry, board) || row_complete?
end
  
end
def valid_entry(entry)
  is_letter = ("x" || "y").include?(entry.downcase)
  new_letter = !entry.include?(entry.downcase)
  is_letter && new_letter
end

def get_entry(entry, space)
  turn_count = 9
  puts "Please enter an X or O:"
  entry = gets.chomp.to_i
  puts "Please enter the space number that you would like to enter your selection."
  space_number = ""
  space = gets.chomp.to_i
  until valid_entry?(entry)
    puts "Please enter an X or O."
  entry = gets.chomp
  until game_finished?(entry, space, turn_count)
    if entry == "x" || board[i][j] == board[0]

        

    entry.each do |entry|
      board.entry.map! { |entry| }

  end
end
entry
end

def play_game(game)
  
  until game_finished?(entry, board, turn_count)
    game_status(game, entry)
    entry = get_entry()
    
  end

  puts "Guess who's a winner?"
  puts "YOU ARE!"
  puts "Tic Tac Toe. Three in a row."



  




