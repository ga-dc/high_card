# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = ranks.product(suits)
deck.shuffle!

players = {
	name: ["Dealer"]
}

player_count = 0
players[:name].each do |names|
	player_count +=1
end

while player_count < 2 
puts "#{player_count} players so far. Enter a player name, or type 'play':"

	answer = gets.chomp
	if answer != "play" 
		players[:name] << answer

		if players[:name].length == 2

			return deal_cards
		end

	elsif answer == "play"
		puts deal_cards
	end

def deal_cards
	player_one = players[:name][0]
	player_two = players[:name][1]
	player_one_card = deck.pop
	player_two_card = deck.pop

	puts "#{players[:name][1] + 's card is #[player_one_card]'}"

	if player_one_card > player_two_card
		puts "'The winner is ' + player_one!"

	elsif player_two_card > player_one_card
		puts "'The winner is ' + player_one!"

	elsif player_two_card > player_one_card
		puts "It's a tie!"
	end
end
end
