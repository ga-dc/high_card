require "pry"
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "♥", "♠", "♣", "♦" ]

# players = []


# Tasks:
#
# Build a deck of shuffled cards.
#
# The deck should be an array of cards.
# Each card should be a mini-array with a value and suit. Example: [8, "hearts"]
# Shuffle the deck. It would look something like this...
# deck = [
#     [8, "hearts"],
#     [2, "diamonds"],
#     ["J", "clubs"],
#     ...
# ]

# In order to build a SINGLE CARD, I need ONE item from the RANKS array and ONE
# item for the SUIT array. This action needs to be performed 52 TIMES
#
# While looping through the RANKS array
# Grab a RANK
# Then grab a suit
# Now you have ONE card



# # NOTE: do not hardcode the deck. Create it by performing methods on the two
# # arrays in the starter code.
#
  deck = []
def build_deck(ranks, suits)
  card = []
  shuffled_deck = []
  ranks.each do |rank|
    suits.each do |suit|
      card = [rank, suit]
      puts card
      deck << card
    end
  end
end

# # Shuffle deck
def shuffle_deck(deck)
  deck.shuffle
end
puts "=================="

build_deck(ranks,suits)
shuffle_deck(deck)




# # Get more players
# # Deal cards
# ***** FInd highest card *****
# Announce winners
# Play a new game
binding.pry

puts "Program Executed"
