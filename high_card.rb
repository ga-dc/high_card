# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
puts "Player 1 enter your name..."
players[0] = gets
puts "Player 2 enter your name..."
players[1] = gets

player1_card = "#{players[0].to_s + deck.shuffle[0].to_s}"
puts player1_card
player2_card = "#{players[1].to_s + deck.shuffle[0].to_s}"
puts player2_card
