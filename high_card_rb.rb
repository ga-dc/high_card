require "pry"

# Use these two arrays to generate a deck of cards.
Ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
Suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#Deck = []

def deck_cards
  deck = []

  # Build deck
  Ranks.each_with_index do |rank, index|        #This only seems to work if I make ranks constant
    Suits.each do |suit|
      card = {
        rank: rank,
        suit: suit,
        worth: index
      }
      deck << card
    end
  end
   return deck.shuffle
end

shuffled_deck = deck_cards

binding.pry

puts "asdf"
