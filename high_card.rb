# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = ["spades", "clubs", "diamonds", "hearts"]
deck = []

for rank in ranks do
  for suit in suits do
    deck.push [rank, suit]
  end
end

deck.shuffle!

players = []

while true
  puts "#{players.length} players so far. Enter player name or type 'play'"
  player = gets.chomp
  break if player == "play"
  players << {name: player}
end

for player in players do
  player[:card] = deck.pop
end

players_index = players.map {|player| ranks.find_index(player[:card][0])}

highest_index = players_index.max

winners = players.select {|player| ranks.find_index(player[:card][0] == highest_index)}

winners_name = winners.map {|winner| winner[:name]}.join(" and ")

puts "Winner(s): #{winners_name}"
