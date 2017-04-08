# Use these two arrays to generate a deck of cards.
ranks = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K']
suits = ['hearts', 'spades', 'clubs', 'diamonds']

deck_of_cards = []

suits.each do |suit|
  ranks.each do |rank|
    deck_of_cards.push([suit, rank])
  end
end

# players = []
deck_of_cards.shuffle
