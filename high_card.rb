# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = [
  {rank: "A", suit: "hearts", worth: 12}
]

def build_deck (ranks, suits)
  # Build a deck
    # initialize an empty deck
    deck = []
    # loop through ranks
      # .each with index -> to pull the worth of a card
      # loop suits
        # push each pair into the deck
      # shuffle the deck
    return deck
end
