# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

# create a deck array
deck = []

# an array of mini card arrays
deck = ranks.product(suits)

# shuffle deck
deck.shuffle

# collect an array of player names
player_name = []
puts "{Enter a player name:}"
user_input = "name: " + gets.chomp.to_s

# upon "play", deal each player a card
card = []
index = 0

players << {name:user_input, card:deck[index]}
  puts players
