# This application will prompt the user to guess a number between 1 and 100.
# The game will pick a random number between 1 and 100
# If the user enters a number that is too low, they will be presented with a message that tells them that their guess is too low.
# If the user enters a number that is too high, they will be presented with a message that tells them that their guess is too high. 

rand_num = rand(1..100)
# puts rand_num
# I can include this line while I am testing to help it go faster 
puts "Guess a number:"
guess = gets.chomp.to_i

while guess != rand_num
	if guess > rand_num
	puts "You're too high. Pick a new number"
	elsif guess < rand_num
	puts "You're too low. Pick a new number"
	end
	puts "Enter another number."
	guess = gets.chomp.to_i
end
	puts "You're a winner!"

puts "Random number was:" + rand_num.to_s
puts "User guess was:" + guess.to_s
