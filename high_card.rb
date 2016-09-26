ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
# 1. Build a deck of shuffled cards.
#	* The deck should be an array of cards.
#	* Each card should be a mini-array with a value and suit.
#     Example: `[8"hearts"]`
#	* Shuffle the deck. It would look something like this...
ranks.each do |rank|
	suits.each do |suit|
		deck.push([rank,suit])
	end
end
deck.shuffle!
