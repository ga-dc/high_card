require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

for suit in suits do
  for rank in ranks do
    deck.push([suit, rank])
  end
end

shuffled_deck = deck.shuffle
players = []

#Loop
loop do
  puts "#{players.length} players so far. Enter a new player name or type 'play' to begin"
  player_name = gets.chomp
  break if player_name == 'play'
  new_player = {
    name: player_name
  }
  players.push(new_player)
end

##Enumerable

players = ["Player1", "Player2", "Player3"]
index = 0
while index < users.length
  puts users[index]
  index += 1
end






binding.pry
