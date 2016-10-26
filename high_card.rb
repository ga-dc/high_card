# Use these two arrays to generate a deck of cards.
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "clubs", "diamonds", "hearts", "spades"]

players = []

deck = RANKS.product(SUITS)
puts deck.inspect, deck.size

def get_card_value(deck, card)
  deck.find_index(card)+1
end
