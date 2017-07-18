# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks = ranks.rotate(1)


deck = []

ranks.each_with_index do |r, i|
  suits.each{ |s| deck.push({ index: i, rank: r, suit: s, }) }
end

deck = deck.shuffle

player = nil
players = []

while player != 'play'
  n = players.length
  puts "#{n} players so far. Enter a player name, or type play:"
  player = gets.chomp
  if player != 'play'
    players.push({name: player})
  end
end


l = players.length
hands = deck.slice(0, l)

player_hands = players.zip(hands)

winning_index = player_hands.max_by{|k| k[1][:index] }
winning_player = winning_index.map{ |winners| winners[:name] }

puts winning_player
