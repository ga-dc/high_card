# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "A", "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#create a combined deck from ranks & suits
card_deck = ranks.product(suits)

#store shuffled Deck in variable
shuffled_cards = card_deck.shuffle

#set player value to null
player = nil

#Get User Input
while player != 'play'
  n = players.length
  puts "#{n} players so far. Enter a player name, or type 'play':"
  player = gets.chomp
#check if input is 'play'
  if player != 'play'
    players.push({name: player})
  end
end

#Begin Game
puts "#{n} players are playing"
# Each player is dealt a random card, which is pushed
#into the shuffled deck array
players.each do |player|
  player[:card] = shuffled_cards.pop
end
puts "#{players}"

#find highest card
#sort and find player with highest card
#select player with highest card

player_cards = players.map do |player|
  ranks.index(player[:card][0])
end
puts player_cards
high_card = player_cards.max
puts high_card
winner = players.select {|player| player[:card][0] == ranks[high_card]}
puts winner
