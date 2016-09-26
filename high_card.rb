# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = suits.map do |suit|
  set = ranks.map do |rank|
    [rank, suit]
  end
end

deck.flatten!(1)

p deck
