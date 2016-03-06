# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
player_input=""
players = []

# Creates Deck with 52 cards and index values for comparing
ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck << [rank,suit,i + 1]
  end
end

# Shuffles Deck
deck = deck.shuffle
puts deck

# Get names of players and push them to array of players
while player_input != "play" do
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  player_input = gets.chomp.to_s
  players << player_input
end
players.pop() #Removes 'play' as a player
puts players
