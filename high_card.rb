# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []

ranks.each_with_index do |ranks, index|
  suits.each do |suit|
    deck.push([ranks, suit])
  end
end
