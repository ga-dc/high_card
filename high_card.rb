# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

#make the ranks ordered with A as the highest
1.times do
  ranks << ranks[0]
  ranks.shift
end

# makes and shuffles deck
ranks.product(suits).shuffle.each do |set|
   deck << set
end

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

# deals each player a card and deletes card from deck
index =0
until index == players.length
  players.map do |player|
    player[:card] = deck.sample
    index += 1
  end
end

puts players
# finding the highest card dealt by comparing card: 1st entry/index
