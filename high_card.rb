require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

#Generate deck of cards
ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck << [rank, suit]
  end
end

#Shuffle deck
deck.shuffle!

players = []

#Input players
loop do
  n = players.length
  puts "#{n} players so far. Enter a player name, or type 'play':"
  user = gets.chomp
    if user != "play"
      players << {name: user}
    end
    break if user == "play"
  end

#Deals cards to players
players.length.times do |i|
  players[i][:card] = deck[i]
end

#Finds Winner
# find max by indices
card_indices = []
players.length.times do |i|
  card_indices << ranks.index(players[i][:card][0])
end
# compare indices
high_card_index = card_indices.max
high_card_rank = ranks[high_card_index];
winners = players.select{|player| player[:card][0] == high_card_rank}
# print name of highest indices for winner
winner = winners[0][:name]
puts "Winner is #{winner}"

binding.pry
puts "exit"
