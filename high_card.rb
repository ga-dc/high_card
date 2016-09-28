# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
n = players.length
ranks.length.times do |rank_index|
  suits.length.times do |suit_index|
    deck.push [ ranks[rank_index], suits[suit_index] ]

  end
end
p deck.shuffle!
# puts  "#{n} players so far. Enter a player name, or type 'play'"
# user_input = gets.chomp

# players.push user_input
# p players
# p "Number of players #{players.length}"
# players.each do |player|
#   player[:name] = []
# end
until players.length == 2
  puts  "#{n} players so far. Enter a player name, or type 'play'"
user_input = gets.chomp
players << {name: user_input}
p "Number of players #{players.length}"
p players
end
p "Now that you have two players, type 'play'"
user_input =gets.chomp
if user_input =="p"
  players.length.times do |i|
  players[i][:card] = deck.pop
p players
end
end
winner = players[0]
players.each do |player|
  player1 = ranks.index player[:card][0]
  player2= ranks.index winner[:card][0]
 if player1 > player2
   winner = player

 end

end
puts winner
