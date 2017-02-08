# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = ranks.product(suits)
deck.shuffle!

players = {
	name: []
}

player_count = hash.new 0
decks[:name].each do |names|
	counts[names] +=1
end

while true
	input = gets.chomp
	break if input.empty
	players << input
end

puts "#{player_count} players so far. Enter a player name, or type 'play':"

	answer = gets.chomo
	if answer != "play" 
		players[:name] << answer

		if players[:name].length == 2
			puts play
		end

	elsif answer == "play"
		puts play
	end

def play
	player_one_card = deck.sample
	player_two_card = deck.sample

	puts "#{players:[name][1] + 's card is #[player_one_card]'}"

	if player_one_card < player_two_card

