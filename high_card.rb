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

# Collect an array of player names by prompting:
#
#"{n} players so far. Enter a player name, or type 'play':
#   " Should look like this: [{name:'Jesse'}, {name:'Jane'}]
#
puts `clear`
Last_User=""
until Last_User.upcase=="PLAY"
	puts "#{players.length} players so far. Enter a play name or type 'play'"
	Last_User = gets.chomp!
	if Last_User.upcase != "PLAY"
		players.push(Last_User)
	end
end
