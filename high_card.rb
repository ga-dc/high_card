# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do | rank, index |
  suits.each do |suit|
    deck.push( {
      rank: rank,
      value: index,
      suit: suit
    })
  end
end

deck.shuffle

players = []
n = players.length

puts "#{n} players so far. Enter a player name, or type 'play': "
user_name = gets.chomp

if user_name == "play"
  break
else
  players.push(user_name)
end

cards = players.map do |card|
  deck.pop
end

card_values = cards.map do |card|
  card[:value]
end

winner = card_values.max

winners = []

card_values.each_with_index do |value, index |
  if value == winner
    winners.push(players[index])
  end
end

puts "Winner(s): #{winners.join(', ')}"
puts cards
