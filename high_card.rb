# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

# Create deck
deck = []

ranks.each{ |rank| suits.each{ |suit| deck << ["#{rank}", "#{suit}"] } }

deck.shuffle!

p deck
