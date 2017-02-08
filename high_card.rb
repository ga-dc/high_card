require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


deck = []
players = []

## creates all possible combo of the two arrays and shovels them in to deck
deck = ranks.product(suits).shuffle.each do |combo|
end

loop do |names|
  puts "{name.count} players so far. Enter a player name, or type 'play':"
  name = ""
  if condition

  end
end

binding.pry
