# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits)
players = []

deck.shuffle!

loop do
	puts "#{players.length} players so far.  Enter a player name, or type 'play':"
	user_input = gets.chomp
	break if user_input == "play"
	players << {name: user_input}

end

puts players