# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits).shuffle

puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
players << gets.chomp
