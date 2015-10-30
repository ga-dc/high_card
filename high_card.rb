# Use these two arrays to generate a deck of cards.
# arrays
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck =[]
players = []

# variables
n = players.length

# creates deck
ranks.each do |value|
  suits.each do |suit|
    deck.push([(if value == "A"; 14 if value =="J"; 11 if value=="Q"; 12 if value=="K"; 13 else ranks.index(value)end), value , suit])
  end
end

# shuffle
deck.shuffle

# user prompt
puts "{n} players so far. Enter a player name, or type 'play':"
user_input = gets.chomp.to_s
players.push user_input
