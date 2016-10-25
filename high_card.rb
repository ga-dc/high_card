# Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# suits = [ "hearts", "spades", "clubs", "diamonds" ]

# players = []

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

suits.each do |suit| #loop through the suits
  ranks.each do |rank| #loop through all ranks per suit
    deck << [suit, rank] #adds rank/suit object to deck array
  end
end
puts deck
puts deck.length
