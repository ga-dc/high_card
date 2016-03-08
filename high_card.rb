require "pry"

# Use these two arrays to generate a deck of cards.
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
# @deck = []
# hands = []
@players = []

card = [
  {rank: "A", suit: "Hearts", worth: 12}
]
deck << card

def build_deck(ranks,suits)
  # start with empty deck
  deck = []
  # loop through ranks
  RANKS.each_with_index do |rank, index|
    # loop suits
    SUITS.each do |suit|
      # build card hash that's dynamically built after going through the loop
      card = {
        suit: suit,
        rank: rank,
        worth: index
      }
      #push each pair into the deck
      deck << card
    end
  end
  deck.shuffle
  return deck
end

def get_players
  player = prompt "#{@players.length} so far. Enter a player name, or type 'play':"
  @players << player
end

binding.pry

puts "whyyyy"
