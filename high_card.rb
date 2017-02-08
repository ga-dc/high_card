# Use these two arrays to generate a deck of cards.
def deck_creation
	ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
	suits = [ "hearts", "spades", "clubs", "diamonds" ]
	deck = []
	players = []
# def deck_creation
	ranks.each_with_index do |value,index|
    # calls on the specified item (i.e. ranks) and it passes through
    # each item in the enum
	  suits.each do |suit|
	    deck.push([value,suit])
      # placing all the cards into a subarray with len 2 and pushing that into
      # the deck array
	  end
	end
	return deck.shuffle
  # returning a shuffled deck
end

deck_creation
