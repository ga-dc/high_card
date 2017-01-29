# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits) # creates a deck from the ranks and suits arrays

players = []
puts "Player 1 enter your name..."
players[0] = gets
puts "Player 2 enter your name..."
players[1] = gets
# places the two player names in the players array

player1_card = "#{players[0].to_s + deck.shuffle[0].to_s}"
puts player1_card
player2_card = "#{players[1].to_s + deck.shuffle[0].to_s}"
puts player2_card
# draws a random card for each of the players

# add value to the cards
# state a winner
