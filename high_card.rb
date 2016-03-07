require "pry"
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#building the deck by getting every combination of ranks and suits arrays
ranks.each do |value|
  suits.each {
    |suit| players << "#{value.to_s} of #{suit}"
  }
end














































binding.pry
