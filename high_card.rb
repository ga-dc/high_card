# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
player_input = ""
players = []

# Creates Deck with 52 cards and index values for comparing
ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck << [i + 2,rank,suit]
  end
end

# Shuffles Deck
deck = deck.shuffle
# puts deck

# Get names of players and push them to array of players
while player_input != "play" do
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  player_input = gets.chomp.to_s
  players << player_input
end
players.pop() #Removes 'play' as a player
# puts players

# Upon "play", deal each player a card
# Pop cards out of the deck for each player in game. Push popped card into an array with player name.
play_deck = []
players.each do |player|
  play_deck << [deck.pop(),player]
end
puts play_deck

# Find the highest card score dealt (Aces high) and print winner.
winner = play_deck.max
puts winner
