# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []

#Creates Deck with 52 cards and index values for comparing
ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck.push([rank,suit,i])
  end
end
puts deck
