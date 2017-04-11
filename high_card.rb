# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks2 = []
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
# winners = players.find_all{|player| player[:card][0] = values.max}
