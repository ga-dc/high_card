# Use these two arrays to generate a deck of cards.
def cards
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do |r, i|
    suits.each do |s|
      deck.push({
        ranks: r,
        suit: s,
      })
    end
  end

return deck.shuffle
end




players = []
