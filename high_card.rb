# Use these two arrays to generate a deck of cards.
# not sure how non-numeric cards will be read for value, so:

# "J" = 11
# "Q" = 12
# "K" = 13
# "A" = 14

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

# build a deck of shuffled cards

deck = []
deck.shuffle

# Collect an array of player names by prompting:
#	***"{n} players so far. Enter a player name, or type 'play':"**

players = []
name = nil
puts "{players.length} players in the game so far. Enter your name or type 'play':"
name = gets.chomp
players.push(name)

# Upon *"play"*, deal each player a card.
