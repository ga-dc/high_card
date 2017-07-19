# Use these two arrays to generate a deck of cards.

#Build a deck of shuffle cards with mini-arrays with a rank and suits
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"].rotate(1)

suits = [ "hearts", "spades", "clubs", "diamonds" ].shuffle.each_with_index do |value, index|
  puts "#{index}: #{value}"
end

cards = ranks.product(suits)

#collect player name
player1 = {}
puts "Enter a player name"
player1[:name] = gets.chomp
puts "Welcome #{player1[:name]} to High Card"
#shuffle cards and deal to player
player1[:card] = cards.shuffle.pop
#score add it base on the rank inde
player1[:score] = ranks.index(player1[:card][0])

#collect player2 name
player2 = {}
puts "Enter a player name"
player2[:name] = gets.chomp
puts "Welcome #{player2[:name]} to High Card"
#shuffle cards and deal to player
player2[:card] = cards.shuffle.pop
#score add it base on the rank index
player2[:score] = ranks.index(player2[:card][0])

#collect players name
players = [player1, player2]
puts "Welcome #{player1[:name]} and #{player2[:name]} to High Card"

#compare players cards
if (player1[:score] == player2[:score])
   puts "It's a tie between #{players1[:name]} and #{player2[:name]}"
else if (player1[:score] > player2[:score])
  puts "The winner is #{player1[:name]}"
else
puts "The winner is #{player2[:name]}"
end
end
