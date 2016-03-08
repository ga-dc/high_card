# Use these two arrays to generate a deck of cards.
require "pry"

def build_a_deck

  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []
  #take one from each rank and match with one from each suit
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck << { number: index, ranks: rank, suits: suit}
    end
  end
end


players = []



binding.pry
