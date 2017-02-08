require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

## creates all possible combo of the two arrays and shovels them in to deck
deck << ranks.product(suits).each do |combo|
end


binding.pry
