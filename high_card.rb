# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

def build_deck(ranks, suits)
  new_deck = []
  ranks.each do |rank|
    suits.each do |suit|
      card = { :rank => rank, :suit => suit}
      new_deck.push(card)
    end
  end
  return new_deck
end
