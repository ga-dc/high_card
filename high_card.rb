require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

the_deck = ranks.product(suits).shuffle

puts "Player1 whats your name?"
player1 = {
	name: gets.chomp!
}
puts "player2 whats your name"
player2 = {
	name: gets.chomp
}
players = players.push(player1,player2)

binding.pry