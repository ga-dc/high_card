# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck.push([rank, suit])
  end
end

deck.shuffle!

entry = ""

until entry == "play" do
	puts "#{players.length} players so far. Enter a player name, or type 'play':"
	entry = gets.chomp
	if entry == "play"
		break
	end
	players.push(entry)
end

puts players.inspect

game = players.zip(deck).inspect

# winner = game[0][0].max.first


# players.each_with_index |player, i| do
# 	game[player] = i
# end








