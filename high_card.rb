# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# move A to end of ranks so that we can use index to ID which card is highest
ranks = ranks.rotate(1)

players = []

# Build a deck of shuffled cards
deck = []
# Go through each item in ranks, and find the value and the index
ranks.each_with_index { |v, i|
# Go through each item in suits and pull out the suit as "s"
  suits.each { |s|
    # push a mini-array with a value, index, and suit into the deck
    deck << ({value: v, suit: s, rankindex: i})
  }
}
# shuffle the deck
deck.shuffle!
# puts deck

# Collect an array of player names by prompting "{n} players so far. Enter a player name, or type 'play'"

# Continue prompting until user types play
while true
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  # Save their input as a name (without the carriage return)
  name = gets.chomp
  # Stop when user types play
  break if name == "play"
  # Add the names to the players array
  players.push({name: name})
end

# Deal each player a card
# push a card from the random deck for each player
players.each do |player|
  player[:card] = deck.pop
end
puts players

# Find the highest card score (Aces are high)
scores = []
# go through each player and add the rankindex of their card to the scores array
players.each do |player|
  scores.push(player[:card][:rankindex])
end
# puts scores
# find the highest score, and save it
high = scores.max
puts high

# Find the winning player(s)
# Create an array in case there are more than one players with the same high score
winPlayers = []
scores.each_with_index { |score, i|
  winPlayers.push(players[i][:name]) if score == high
}

# BONUS 1 - print out only one of the following
# if only one single winner
if winPlayers.length == 1
  puts "The winner is #{winPlayers[0]}!"
# if there is more than one winner
 else
  puts "It's a tie between " + winPlayers.join(' , ') +"!"
end
