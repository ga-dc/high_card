# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []
cards = ranks.product(suits).each do |deck|
# have to push each card into the cards array
puts "#{deck[1]} of #{deck[0]}"

end

player_name = ""
  loop do
    puts "#{players.length} players so far. Enter a player
    name, or type 'play':"
  player_name = gets.chomp
    break if player_name == "play"
    players << {name:player_name}
  end

index = 0
until index == players.length
players.each do |player|
  player[:card] = cards.sample
  index += 1
  end
end


cards_in_play = players.map do |player|
  ranks.index(player[:card][0])
end

winning_card = cards_in_play.max

puts winning_card

winners = players.select do |player|
  player[:card][0] == winning_card
  end
puts winners

winners_name = []

winners.each do |winner|
  winners_name << winner[:name]
end


  puts "Winner(s): #{winners_name}!"



# winners = []
#
# players.select do |player|
#   if player[:card][0] == winning_card
#     winners << player
#   end
#   puts winning_card
#   puts player[:card][0]
# end


# puts winners


# A > K > Q > J > 9..2
# ranking
# players.each do |player|
#   if player[:card][0] == 'J'
#     player[:card][0] = 11
#   elsif player[:card][0] == 'Q'
#     player[:card][0] = 12
#   elsif player[:card][0] == 'K'
#     player[:card][0] = 13
#   elsif player[:card][0] == 'A'
#     player[:card][0] = 14
#   end
# end
# find the highest card score dealt
# set a comparison of ranks
# 14>2
# .max | have to reorder ranks array and set them to all to comparable integers

# def that ranks the highest values

# players.cards.ranks[index].values_at.max
# puts players.cards
# # end
# ranking
# the problem with this is that this o
#.values_at gets the index of elements in an array, but have to
# def max
# ranks.max
