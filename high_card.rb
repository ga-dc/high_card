def shuffledeck
	ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
	suits = [ "hearts", "spades", "clubs", "diamonds" ]
	deck = []
	ranks.each_with_index {|rank| suits.each {|suit| deck.push([rank, suit])}}
	return deck.shuffle
end

deck = shuffledeck
players = []

while true
	puts "#{players.count} players so far. Enter a player name, or type 'play':"
	name = gets.chomp
	break if name == 'play'
	players.push(name)
end

hands = []

for person in players
	hands.push(deck.pop.unshift(person))
end