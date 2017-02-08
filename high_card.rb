# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = ranks.product(suits)
# puts cards

deck = cards.shuffle
# puts deck.to_s

#Collect an array of players names
players = []


while true
  puts  players.size.to_s + " players so far. Enter a player name, or type 'play':"

  player = gets.chomp
  # player =  {
  #   name: "",
  #   hand: [],
  #   points: 0
  # }
  break if player == "play"
  player = {name: "",wins: 0}
  players.push(player)
end




players.each_with_index do |player, index|
  popped_card = deck.pop
  # players[:hand].push (popped_card)
  puts players[:name] + " was dealt a #{popped_card}"
end

# while deck >0
#
#   index -=1
#   # deck.pop.player[1]
#   break if deck == 0
# end




#Upon "play", deal each player a card


#find the highest card score dealt


#Fin the winning player name, then print out
