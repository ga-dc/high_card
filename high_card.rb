# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
# makes and shuffles deck
ranks.product(suits).shuffle.each do |set|
   deck << set
end
p deck

# creates players and puts them in array as hashes
loop do
  puts "#{players.length} players so far. Enter a player name or type 'play':"
  input_name = gets.strip
  # to add hashes into players array
  player= {:name => input_name}
  # players << player
  break if input_name == "play"
  players << player
end
p players

# deals each player a card and deletes card from deck
