require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck, players, winners, play = [], [], [], false
suits.each { |suit| ranks.each { |rank| deck << ["#{suit}","#{rank}"]}}
# prompt user for input
while play == false do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets
  # check input for play
  input.chomp != 'play' ? players << {name: input.chomp} : play = true
end
deck.shuffle!
players.each { |player| player[:card] = deck.pop }
players.each { |player| puts "#{player[:name]} got the #{player[:card][1]} of #{player[:card][0]}."}
# this is being set to nil - not sure why
players.each { |player| player[:card_value] = ranks.index(player[:card][1])}
binding.pry
# evaluate rank against ranks index
# iterate over players array to get index value of
puts 'done'
