# Use these two arrays to generate a deck of cards.
def deck_of_cards
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

rank.each_with_index do |r, i|
  suits.each do |s|
    deck.push({
      score: i,
      ranks: r,
      suit: s,
      })
    end
  end
end

players = []
