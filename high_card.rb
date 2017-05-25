require "pry"

# Use these two arrays to generate a deck of shuffledecks.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

shuffledeck = ranks.product(suits).shuffle
$tempdeck = Array.new(shuffledeck)
$tempdeck = $tempdeck.sample(1)
# End of deck combination with arrays, and then shuffle.
$players = []

	$i = 0
	$max = 2 

	while $i < $max do
		puts "#{$players} of players so far. Enter $playersname to play."
		input = gets.chomp
		$players.push << input
		$i += 1
	end
# End of player addition for 2 players.

def game($players,shuffledeck)
	$players = $players.length
	$players.each[$tempdeck]
end



game($players,shuffledeck)

binding.pry






