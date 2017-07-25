# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

# get list of players and start when type 'play'
puts "#{players.length} players so far. Enter player name:"
 input = gets.chomp
   while input != 'play'
     new_player = { name: input }
     players.push(new_player)
     puts "#{players.length} players so far. add another player or type 'play' when ready to draw cards"
     input = gets.chomp
   end

play = true
# game in play
while play = true
deck = ranks.product(suits).shuffle
  players.each_with_index do |player, card|
   player[:card] = deck[card][0]
   player[:suit] = deck[card][1]
   if
     deck[card][0] == "J"
     player[:value] = 11
     elsif
     deck[card][0] == "Q"
     player[:value] = 12
     elsif
     deck[card][0] == "K"
     player[:value] = 13
     elsif
     deck[card][0] == "A"
     player[:value] = 14
   else
     player[:value] = deck[card][0]
   end
   puts "#{player[:name]} draws #{player[:card]} of #{player[:suit]}"
  end
# value for each card in play
  dealt_scores = []
  players.each do |player|
   card_score = player[:value]
   dealt_scores.push(card_score)
  end
# users who matched highest score
  winner = []
  players.each do |player|
   if player[:value] == dealt_scores.max
     winner.push(player[:name])
   end
  end
# if 1 winner with high score, declare winner, else declare tie
  if
   winner.length > 1
   puts "It's a tie! The winners are #{winner.join(', and ')}!"
   else
   puts "The winner is #{winner.join(', ')}!"
  end
# ask if user wants to play again
  puts "draw again? y/n"
  input = gets.chomp
  if input == 'y'
   play = true
  else
   play = false
   break
  end
end
