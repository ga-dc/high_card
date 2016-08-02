ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "spades", "clubs", "diamonds", "hearts" ]
players = []

def new_deck ranks, suits
	deck = []
	ranks.each do |rank|
		suits.each do |suit|
			deck << [rank, suit]
		end
	end
	deck.shuffle
end

def set_players ranks, suits, players
	loop do
		puts "#{players.length} players so far. Enter a player name, or type 'play': "
		input = gets.chomp
		if input == "play"
			game(ranks, suits, players)
			players.each do |player|
				puts "#{player[:name]} has #{player[:hand].join(" of ")}"
			end
			puts "Winner(s): #{players.sort_by { |i| i[:score] }.last[:name]}!!"
			break
		else
			players << { name: input }
			str = "/ "
			players.each do |player|
				str += "#{player[:name]} / "
			end
			puts str
		end
	end
end

def score arr, ranks, suits
	count = 0
	ranks.each do |rank|
		suits.each do |suit|
			count += 1
			if arr == [rank, suit]
				return count
			end
		end
	end
end

def game ranks, suits, players
	deck = new_deck(ranks, suits)
	players.each do |player|
		player[:hand] = deck[rand(1..deck.length - 1)]
		player[:score] = score(player[:hand], ranks, suits)
	end
end

set_players(ranks, suits, players)

