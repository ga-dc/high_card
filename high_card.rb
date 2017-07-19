# Use these two arrays to generate a deck of cards.

#Build a deck of shuffle cards with mini-arrays with a rank and suits
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]#.shuffle.each_with_index do |value, index|
#  puts "#{index}: #{value}"
#end
suits = [ "hearts", "spades", "clubs", "diamonds" ].shuffle.each_with_index do |value, index|
  puts "#{index}: #{value}"
end

cards = ranks.product(suits)

#collect player name
player1 = {}
puts "Enter a player name"
player1[:name] = gets.chomp
puts "Welcome #{player1[:name]} to High Card"

#collect player2 name
player2 = {}
puts "Enter a player name"
player2[:name] = gets.chomp
puts "Welcome #{player2[:name]} to High Card"

#collect players name
players = [player1, player2]
puts "Welcome #{player1[:name]} and #{player2[:name]} to High Card"

#Build a deck of shuffle cards with mini-arrays with a rank and suite
#cards = ranks.product(suits).shuffle.each_with_index do |value, index|
#  puts "#{index}: #{value}"
#end
