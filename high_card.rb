# Use these two arrays to generate a deck of cards.

def make_deck
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]

  deck = []
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck.push([rank,suit])
    end
  end
  return deck.shuffle
end

deck = make_deck

players = []


# deck = cards.map do |card|
#   card.to_a
# end


# ranks.each do |rank|
#   card.push(rank)
# end
#
# suits.each do |suit|
#   cards.push(suit)
# end

# build array of cards
  # cards should be mini-array of individual cards
    # mini array should include one rank and one suit for all combinations.
# cards =

# card = []
# ranks.each_with_index do |rank, index|
#   suits.each do |suit|
#     card.push(rank,suit)
#   end
# end
# card.each do |c|
#   puts c
# end
