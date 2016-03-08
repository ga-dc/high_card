require "pry"

# Use these two arrays to generate a deck of cards.
RANKS  = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
# // might want to move the ace to the back?
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
#find out why capping these made them "Constant" - A. it's tradition, the all caps mean that these vals don't ever change. They are called constants
#dream deck =
  # {rank: "A", suit: "Hearts", worth 12} we pull the worth from the index. We'll get to that.

players = []

# build a deck
#   intialize an empty deck
#   loop through the ranks
# .each with index  - to pull the worth of a card
#   loop suits
#   push each pair into the deck
#shuffle the deck

def build_deck (ranks, suits)
    deck = []
      ranks.each_with_index do |rank, index |#just get used to this syntax. the i part is just part of it.
        suits.each do |suit|
          card = {
            suit: suit,
            rank: ranks,
            worth: index
          }
          binding.pry
          deck << card #push the card in the deck
        end
      end
          return deck.shuffle
end
deck = build_deck(RANKS, SUITS)

puts "done"
