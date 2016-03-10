require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck_cards = []

# class Cards

  def deck
    # It looks like we will need a nested for loop
    for rank in ranks do #we used an each loop in the hw review; "each is far more ubiquitous in Ruby"
      # use .each_with_index to pull worth of card
      for suit in suits do
        # combine every combination of indexes from ranks and suite arrays
        deck_cards << "#{rank} of #{suit}"  # the readme says this should be an array of arrays
      end
    end
    return deck.shuffle #Ruby has implicit return, which means you don't need the "return"
  end

  def shuffle_deck

  end
# end

#class Game

#end

# we should aim to have card = {
#     rank:
#     suite:
#     worth: (index)
#}
#  shovel each card to a deck array

def choose_players
#gets values are in string format
# $players - the $ makes this a global variable
end

binding.pry # this effectively pauses the code.  You can move it around

puts "asdf"
