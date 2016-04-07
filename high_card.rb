# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
face_up_on_the_table = []
players = []
number_of_players = nil

ranks.length.times do |rank_inc|
  suits.length.times do |suit_inc|
    deck.push({rank: ranks[rank_inc], suit: suits[suit_inc]})
  end
end

deck.shuffle!

while !(number_of_players.class==Fixnum && number_of_players > 0)
  puts "How many players?"
  number_of_players = gets.chomp.to_i
end

number_of_players.times do |player_num|
  puts "What is player " + (player_num+1).to_s + "'s name?"
  player_name = gets.chomp
  players.push(player_name)
end
