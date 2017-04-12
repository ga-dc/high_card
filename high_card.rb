

#1 build shullfed deck cards
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

ranks.each_with_index do |r, i|
  suits.each do |s|
    deck.push << ({
      score: i,
      ranks: r,
      suits: s
      })
  end
end

deck.shuffle

#2 collect array of players name

players = []

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp

  break if name == "play"
  players << {name: name}
end

#3 deal each player a card

deck = deck.shuffle
for player in players do
  player[:card] = deck.pop
end

#4 highest score

card_values = players.map do |player|
  ranks.index(player[:card][:ranks])
end

high_value = card_values.max

#5 find winning player

winners = []

players.each_with_index do |player, index|
puts player
  winners.push(player[:name]) if player[:card][:score] == high_value
end

puts "Winner is #{winners.join(", ")}"
