require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits).each do |combo|
end

shuffled = deck.shuffle
shuffled.each{|card| p card}
players = []

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp.to_s
  if input == 'play'
      break
    else
    players << {name: input}
    puts players
  end
end

index = 0
until index == players.length
  players[index][:card] = shuffled[index]
  index += 1
end
puts players
# players.each do |player|
#   players[i][:card[0]]

# players.sort_by! do |num|
#     num[:card[0]]
# end

# a2.sort_by{|x| a1.index x.id}
# players.sort_by{|x| ranks.reverse.index x.card[0]}
players.each do |player|
  if player[:card][0] == 'J'
    player[:card][0] = 11
  elsif player[:card][0] == 'Q'
    player[:card][0] = 12
  elsif player[:card][0] == 'K'
    player[:card][0] = 13
  elsif player[:card][0] == 'A'
    player[:card][0] = 14
  end
end

# puts players[:card][0].to_i].max
# winner = players.reduce do |winner, player|
#   if player[:card][0] > winner[:card][0]
#     winner = player
#   end
# end
# highest_card = players.reduce do |high_card, player|
#   if player[:card][0] > highest_card
#     high_card = player[:card][0]
#   end
# end
card_values = players.map { |player| player[:card][0]}
puts card_values
high_value = card_values.max
puts high_value
winner = players.select{ |player| player[:card][0] == high_value}
puts winner
# winner = {:name=>"andy", :card=>[11, "spades"]}
index = 0
loop do
  puts "Winner(s): #{winner[index][:name]}"
  index += 1
  break if index == winner.length
end
# winner.each do |winner|
# puts "Winner(s): #{winner[0[:name]}"
# puts players



binding.pry
