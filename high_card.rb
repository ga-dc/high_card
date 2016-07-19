# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
def make_deck(ranks, suits, deck)
	suits.each do |suit|
		ranks.each do |rank|
			deck.push([suit, rank])
		end 
		deck.shuffle!
	end
end
# make_deck(ranks, suits, deck)

def get_players(players)
	puts "How many players are playing?"
	num_of_players = gets.chomp.to_i
	num = 1
	num_of_players.times do
		puts "What is the name of player #{num}?"
		name = gets.chomp
		players << name
		end
end 

# get_players(players)

current_hand ={} 
def deal_hand(players, deck, current_hand)
	ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
	players.each do |player|
		random_hand = deck[rand(deck.length)]
		deck.delete(random_hand)
		current_hand[player] = random_hand[1]
		puts "#{player} has been delt #{random_hand}"
	end
end

# deal_hand(players, deck, current_hand)

def get_winner(hand, rank)
	index_ranks = {}
	rank.each_with_index do |rank, index|
		index_ranks[rank] = index
	end
	hand.each do |key, value|
		index_value = index_ranks[value]
		hand[key] = index_value
	end
	high_card = nil
	hand.each do |key, value|
		if high_card == nil
			high_card = value
		elsif value == 0
			high_card = value
		elsif high_card < value
			high_card = value
		end
	end
		winners = []
		hand.each do |key, value|
			if hand.key(high_card) == nil
				next
			else
				winners << hand.key(high_card)
			end
		end
		puts winners
end

make_deck(ranks, suits, deck)
get_players(players)
deal_hand(players, deck, current_hand)
puts current_hand.inspect
get_winner(current_hand, ranks)
