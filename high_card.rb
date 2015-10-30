# Use these two arrays to generate a deck of cards.


ranks = %i["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = %i[ "hearts", "spades", "clubs", "diamonds" ]


deck = ranks.product(suits).shuffle

puts deck

puts {n} players so far. Enter a player name, or type 'play'
