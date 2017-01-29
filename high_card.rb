# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []
player_input = ""

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank,suit])
  end
end
deck = deck.shuffle

until(player_input=="play")
  puts("#{players.length} players so far. Enter a player name, or type 'play':")
  player_input = gets.chomp.to_s
  players.push(player_input)
end

players.pop


hand = []


players.each do |player|
  hand.push(deck[player.to_i])
  deck.shift
end
puts hand

players.each do |player|
puts hand
puts "#{players[player.to_i]} played: #{hand[player.to_i][0]}"
end

puts players.length
puts deck.length
