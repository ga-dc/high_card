# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# players = []

# heartsCards = []
# spadesCards = []
# clubsCards = []
# diamondsCards = []


# while i < suits.length
cardDeck = suits.each do |i|
    ranks.each do |j|
      cardDeck.push([suit[i], rank[j]])
    end
  end
# end


# fruits = ["apple", "banana", "grape"]
# moldyFruits = fruits.map do |fruit|
#   "#{fruit} moldy"
# end
