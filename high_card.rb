# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck =ranks.product(suits).shuffle

puts players.legnth.to_s + "Players so far"
puts "Enter a player name, or type 'play':"

players = []
