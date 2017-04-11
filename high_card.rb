# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]

replacements = {
	"A" => 14,
	"J" => 11, 
	"Q" => 12, 
	"K" => 13
}
ranks = ranks.map do |e|
	replacements.fetch(e, e)
end

suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits)
players = []
values = []

deck.shuffle!

loop do
	puts "#{players.length} players so far.  Enter a player name, or type 'play':"
	user_input = gets.chomp
	break if user_input == "play"
	name_hash = {name: user_input}
	players << name_hash

end

players.each do |player|
	player[:card] = deck.sample

	values << player[:card][0]
end

puts players
puts values.max
winner = players.find_all {|player| player[:card][0]. == values.max}
#this will only put the first winner
puts "Winner(s): #{winner[0][:name]}!"
# puts "Winner(s): #{winner[:name]}!"      throws an error "no implicit conversion of Symbol into Integer"

# this will list the players in order of highest card to lowest card...
# high_to_low = players.sort_by {|player| player[:card][0]}
# high_to_low.reverse!
# high_to_low.each do |player|
# puts player[:name]

# end


