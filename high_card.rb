require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# Create deck
deck = []
ranks.each { |rank| suits.each{ |suit| deck << ["#{rank}", "#{suit}"] } }
deck.shuffle!


players = []
winnerList = []

def fromFace(val)
	if val[0] == "A"
		val[0] = "14"
	end
	if val[0] == "K"
		val[0] = "13"
	end
	if val[0] == "Q"
		val[0] = "12"
	end
	if val[0] == "J"
		val[0] = "11"
	end
end

def toFace(val)
	if val[0] == "14"
		val[0] = "A"
	end
	if val[0] == "13"
		val[0] = "K"
	end
	if val[0] == "12"
		val[0] = "Q"
	end
	if val[0] == "11"
		val[0] = "J"
	end
end



# Play game
def play players, deck, winnerList
	# Deal cards
	players.each_with_index { |player, i| player[:card] = deck[i]}
	players.each { |player| fromFace(player[:card])}

	# Game logic
	highCard = players.max { |a, b| a[:card][0].to_i <=> b[:card][0].to_i }
	winners = players.find_all { |player| player[:card][0] == highCard[:card][0] }

	puts "\nPlayers:"
	players.each { |p| puts "#{p[:name]}, card dealt: #{p[:card][0]} of #{p[:card][1]}" }

	puts "\nHigh card: #{highCard[:card][0]}"

	puts "\nWinner(s):"
	winners.each { |w| puts "#{w[:name]}" }


	# Redraw if tie
	if winners.length > 1
		puts "\nThere's been a tie. Redraw!"
		deck.shuffle!
		play players, deck, winners
	end

end

# Collect player names
until players.length > 52
	player = {}
	puts "#{players.length} players so far. Enter a player name, or type 'play': "
	player[:name] = gets.chomp

	break if player[:name] == "quit"
	if player[:name] == "play"
		play players, deck, winnerList
		break
	end

	players << player
end
