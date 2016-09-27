require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []


deck = []


suits.each do |suit|
  ranks.each do |rank|
    deck << [rank, suit]
  end
end

deck.shuffle!

binding.pry
