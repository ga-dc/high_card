# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#each_with_index
#max
#shuffle

#create a deck!
def build (suits, ranks)
  deck= []
    suits.each_with_index do |suits|
      ranks.each_with_index do |rank, i|
        card = {
          suit: suit,
          rank: rank,
          worth: worth,
        }
    deck << card
  end
end

return deck.shuffle

end

deck = build(suits, ranks)
