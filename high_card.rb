
# Build a deck of shuffled cards.
# Each card should be a mini-array with a value and suit. Example: [8, "hearts"]
# Shuffle the deck. It would look something like this...
	# deck = [[8, "hearts"], [2, "diamonds"], ["J", "clubs"]]
# Collect an array of player names by prompting:
	# "{n} players so far. Enter a player name, or type 'play':"
# "play": deal each player a card.
# Find the highest card score dealt (Aces high).
# find winning player
# print sequence of winners names: "Winner(s): {name1, name2, …}!"
# Print out one of the following outcomes:
	# "The winner is {name}!"
	# "It's a tie between {name1, name2, …}!"
# redraw cards for all players in the case of a tie.

# ======= deck of cards
# ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
values = [11, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
rankSuit = []
cards = []
cardValues = []

# ======= make deck array and values array
suits.each_with_index { 
	|nextSuit, index| 
	ranks.each {
		|nextRank|
		nextValue = values[index]
		rankSuit.push(nextSuit)
		rankSuit.push(nextRank)
		rankSuit.push(nextValue)
		# puts rankSuit[0] + " " + rankSuit[1].to_s
		cards.push(rankSuit)
		rankSuit.clear
	}
}
puts cards.length

# ======= shuffle cards
# puts cards.length
# puts cards
shuffleCards = cards.shuffle
# puts shuffleCards

# ======= get names
playerCount = 0
nameArray = []
while playerCount < 3
	puts "Enter a player name:"
	name = gets.chomp
	nameArray.push(name)
	if (nameArray.length == 1)
		puts "#{(nameArray.length).to_s} player so far"
	else
		puts "#{(nameArray.length).to_s} players so far"
	end
	playerCount = playerCount + 1
end

# puts nameArray

# ======= draw cards
index = 0
cardsArray = []
cardValuesArray = []
for player in nameArray
	index = index + 1
	nextCard = shuffleCards[index]
	nextValue = nextCard[2]
	cardsArray.push(nextCard)
	cardValuesArray.push(nextCard)
	# puts cardsArray.length
	# puts cardValuesArray.length
end

# ======= highest card
maxCardIndex = cardValuesArray.index(cardValuesArray.max)
# puts maxCardIndex

# ======= winner
winner = nameArray[maxCardIndex]
# puts winner
puts "The winner is #{winner}!"


