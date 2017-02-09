require "pry"

# Use these two arrays to generate a deck of cards.
value = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

#index is 0 - 51

card_deck = []

value.each do |value|
  suits.each do |suit|
    card_deck << [value, suit]
  end
end
card_deck.shuffle!
puts card_deck.inspect


binding.pry
