# def print_dashes(max_k, max_v)
  # 2 spaces for key and value, 3 spaces for pipes
#   total = max_k + max_v + 7
#   puts "-" * total
# end

# def print_kv_pairs(hash, max_k, max_v)
  # puts key # out of scope
  # hash.each do |key, value|
  #   print_line(key.to_s, value.to_s, max_k, max_v)
  #   puts key # in scope!
#   end
#   puts key # out of scope
# end

# def print_hash(hash)
#   longest_key = max_length(hash.keys)
# Remove/comment require.pry/ binding.pry before sending file to Github

# Print a board for Tic Tac Toe

# binding.pry

require pry

binding pry

board = [
  [ "b1", "b2", "b3" ],
  [ "b4", "b5", "b6" ],
  [ "b7", "b8", "b9" ]
]


def print_board(board) 
  # current_board = []
  # first_pos = ""
  # second_pos = ""
  string = ""
  count = 0
  3.times do |i|
    3.times do |j|
    string+= board[i][j] + " "
    end
  end
    string do |i|
      do |j|
        string+= board[0][0]+= " | "
        string+= board[0][1]+= " | "
        string+= board[0][2]+= " | "
        string+= board[1][0]+= " | "
        string+= board[2][1]+= " | "
        string+= board[0][2]+= " | "
        string+= board[0][0]+= " | "
        string+= board[0][1]+= " | "
        string+= board[0][2]+= " | "
        string+= board[0..2][1]+= " | "
        string+= board[0..2][2]+= " "\n"+ "---+----+----"
      end
    end
end
puts board
end




print_board (board)






