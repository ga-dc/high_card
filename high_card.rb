# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks.rotate!(1)
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

deck = ranks.product(suits) # creating combined deck
shuff_deck = deck.shuffle # creating shuffled deck

player = nil

# I need to get an input from user

while player != 'play'
  n = players.length
  puts "#{n} players so far. Enter a player name, or type 'play':"
  player = gets.chomp
  # while checking to see if the input is 'play'
  if player != 'play'
    players.push({name: player})
  end
end
# Start The Game!
puts "#{n} players are playing"
# Each player is given a random card (pushed to their hash)
players.each do |player|
  player[:card] = shuff_deck.pop
end
puts "#{players}"
# Cards are then evaluated to see which is highest
# go through players find highest
# select player with highest card

# for each rank in rank.reverse_each
# winners empty array
# for each player in players
# if player card = rank
# winners << player
#
# if winners length > 0
# break
# is it a tie
# if winner length does not equal 1
# print tie between...
# redraw cards
# print winner

player_cards = players.map do |player|
  ranks.index(player[:card][0])
end
puts player_cards
high_card = player_cards.max
puts high_card
winner = players.select { |player| player[:card][0] == ranks[high_card]}
puts winner
