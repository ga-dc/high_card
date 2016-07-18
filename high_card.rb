# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each do |rank|
  suits.each do |suit|
    card = []
    card.push(rank)
    card.push(suit)
    deck.push(card)
  end
end

deck.shuffle!
