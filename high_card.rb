
# Use these two arrays to generate a deck of cards.
def deck_o_cards
  ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  suits = ['hearts', 'diamonds', 'clubs', 'spades']
  deck = []

  ranks.each_with_index do |r, i|
    suits.each do |s|
      deck.push({
        score: i,
        rank: r,
        suit: s,
      })
    end
  end

  return deck.shuffle
end
# Use these two arrays to generate a deck of cards.

# I was unable to get past the first part without use of the solution guide.
