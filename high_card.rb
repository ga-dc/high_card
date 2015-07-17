# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

=begin
ranks_index = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    ranks_index.push ({rank: rank, suit: suit, pointValue: index})
  end
end

puts ranks_index
=end

all_cards = ranks.product(suits).shuffle

puts all_cards.inspect

# puts "{n} players so far. Enter a player name, or type 'play':"

puts "How many players will you have?"

num_players= gets.chomp.to_i

puts "What are the names of the players? (separated by spaces)"

name_list = gets.chomp

players = name_list.split(' ')

puts players.inspect

hand = []

num_players.times do
  hand.push(all_cards.sample)
end

puts players.zip(hand).inspect

winner = players.zip(hand).max.inspect

puts "the winner is" + winner
