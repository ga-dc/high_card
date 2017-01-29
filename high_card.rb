# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
winners = []

# Shuffle Deck
deck = ranks.product(suits)
shuffled_deck = Array(deck.inspect)
shuffledCards = shuffled_deck.shuffle

# Get Names
while true
   puts "#{players.length} players so far. Enter a player name, or type 'play':"

   name = gets.chomp

   break if name == "play"
   players.push(name)
end

delt_cards = players.map do |player| 
   shuffled_deck.pop
end

