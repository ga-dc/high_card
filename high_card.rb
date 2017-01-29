# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

# Create a deck of cards.
ranks.each do |rank|
  suits.each do |suit|
    # Create mini arrays.
    mini_deck = [rank, suit]
    deck.push(mini_deck)
  end  
end

# Shuffle the deck of cards.
puts deck.shuffle.inspect

# Place all players name in an array.
players = []

# Ask the player's name.
puts "#{players.length} players so far. Enter a player name, or type 'play':"

# Receive th player's name.
name = gets.chomp.to_s

# Ask the player for a name or to play. Repeatedly!
# Name doesn't know "play" yet.
while (name != "play") # Will break the loop when "play" is typed.
  players.push(name) # Push the name into the players variable.
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp.to_s
end

# Reshuffle the deck.
dealed_card = deck.shuffle.pop(players.length)
puts dealed_card

# highest_card = dealed_card.max
# puts "#{high_card} is ...!"

# Find the wining card.
# winning_card = dealed_card.index(dealed_card.max)

# Find the winner.
# winning_player = players[winning_card.to_i]
# puts "The winner is #{winning_player}"