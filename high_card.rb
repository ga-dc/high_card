# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []
cards_dealt = []


# this makes the deck
ranks.each do |rank|
	suits.each do |suit|
		deck << [rank, suit]
	end
end

#shuffle the deck
deck = deck.shuffle


#create prompt
loop do
  puts "There are #{players.length} players so far. Enter a player name, or type 'play.'"
	player = gets.chomp
	players.push(:name => player)
	break if player == "play"
end



#assign a card to each player. Store the card value in their object
players.each do |player|
	card = deck.pop
	puts card
	players.push(:dealt => card)
end

#convert face cards to number
players.each do |player|
	if player[:dealt].first == "J"
		player[:dealt].first = 11
	elsif player[:dealt].first == "Q"
		player[:dealt].first = 12
	elsif [:dealt].first == "K"
		player[:dealt].first = 13
	elsif player[:dealt].first == "A"
		player[:dealt].first = 14
	end
end

#find winner
winner = players.max_by {|player| player[:dealt].first}

puts "The winner is: #{winner}!!!!!"

#find out who has the highest card
#highest_card = cards_dealt.max
#puts highest_card
