# Use these two arrays to generate a deck of cards.
ranks = ["A", "K", "Q", "J", 10, 9, 8, 7, 6, 5, 4, 3, 2]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits).shuffle

puts players.length.to_s + " players so far. Enter a player name, or type 'play':"

until  players.include? "play" do
    players << gets.chomp
end

players = players - ["play"]

hand = Hash.new

players.each do |player|
hand[player] = deck.sample
end

puts hand

lookup_ranks = {}
ranks.each_with_index do |item, index|
	puts lookup_ranks[item] = index
end
