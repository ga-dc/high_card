# # Use these two arrays to generate a deck of cards.
# require "pry"
#
# def build_deck
#
#   ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
#   suits = [ "hearts", "spades", "clubs", "diamonds" ]
#   deck = []
#   #take one from each rank and match with one from each sui
#       deck << { number: index, ranks: rank, suits: suit}
#     end
#   end
# end
#
#
# players = []
#
#
#
# binding.pry

#capitalize so they are constant and won't change
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]


#worth gives the index of the rank
deck = [
  {rank: "A", suit: "Hearts", worth: 12}
]


def build_deck(ranks, suits)
#build a deck
  #initialize an empty deck
  deck = []
  #loop through ranks
    #.each with index -> to pull the worth of the card
      #second block variable represents the index of each iteration
    ranks.each_with_index do |rank, index|

    end
    #loop suits
      #push each pair into the deck
    #shuffle the deck
    return deck
end
