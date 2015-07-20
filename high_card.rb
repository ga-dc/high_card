ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# Use these two arrays to generate a deck of cards.
cards = []
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    cards.push([index, rank, suit])
  end
end
