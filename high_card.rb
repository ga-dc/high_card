# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

##############
###Task 1
###############
deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck << [rank, suit]
  end
end

shuffled_deck = deck.shuffle
puts shuffled_deck.inspect

##############
###Task 2
###############
i = 0
puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
response = gets.chomp


while response
  if response != "play"
    players << {"player_name": response, "player_card": []}
    puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
    response = gets.chomp
  elsif response == "play"
    players.each do |player|
      player[:player_card] = shuffled_deck[i]
      i += 1
      puts player
    end
    break
  end
end




  # if response == "play"

#
# players << {player_name: response, player_card: nil}
#
# while response != "play"
#   puts players.length.to_s + " players so far. Enter a player name, or type 'play'"
#   response = gets.chomp
#   if response == "play"
#     players.each do |player|
#       i = 0
#       while i < players.length
#         player[:player_card] = shuffled_deck[i]
#         i += 1
#       end
#     end
#   else
#     players << {player_name: response, player_card: nil}
#   end
# end
