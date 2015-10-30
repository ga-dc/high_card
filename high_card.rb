# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

# build a deck with ranks, suits, and values
deck = []
suits.each do |suit|
  ranks.each_with_index do |rank, index|
    deck.push({rank: rank, suit: suit, value: index+2})
  end
end
puts deck

# shuffle deck
