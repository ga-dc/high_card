# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
players = []

deck = ranks.product(suits)
deck.shuffle!

n = 0
until( $name == "play" ) do
  puts "#{n} players so far. Enter a player name, or type 'play':"
  $name = gets.chomp
  players.push($name)
  n += 1
end

players.each_with_index do |player, index|
  puts "#{player} has a #{deck[index][0]} of #{deck[index][1]}"
end
