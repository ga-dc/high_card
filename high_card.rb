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

current_hand = []
def deal_hand(players, deck, current_hand)
	ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
	players.each do |player|
		random_hand = deck[rand(deck.length)]
		deck.delete(random_hand)
		current_hand << [player, random_hand]
		puts "#{player} has been delt #{random_hand}"
	end
end

# deal_hand(players, deck, current_hand)

def get_winner(hand, rank)
	index_ranks = {}
	players_and_cards = []
	index = 0
	hand.each do |player|
		players_and_cards.push(player[1][1])
	end
	rank.each_with_index do |rank, index|
		index_ranks[rank] = index
	end
	index = 0
	cards_value = []
	high_card = nil
	puts index_ranks.inspect
	players_and_cards.each do |player|
		cards_value.push(index_ranks[players_and_cards[index]])
		index += 1
		end
		high_card = nil
		cards_value.each do |rank|
			if rank == 0 
				rank = 20 
			end
			if high_card == nil 
				high_card = rank
			elsif high_card == rank 
				puts "tie"
			elsif high_card < rank 
				high_card = rank
			end
		end
		rank_back = index_ranks.key(high_card)
		puts rank_back.class
		puts hand.class
			if hand.include? rank_back
				puts "check works"
		end
end

make_deck(ranks, suits, deck)
get_players(players)
deal_hand(players, deck, current_hand)
get_winner(current_hand, ranks)
