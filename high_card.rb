require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


deck = []
players = []

## creates all possible combo of the two arrays and shovels them in to deck
deck = ranks.product(suits).shuffle.each do |combo|
end

player_count = 0

while player_count < 2

  puts "#{player_count} players so far. Enter a player name"

  name =  gets.chomp

  players << "#{name}"
  players << ({player: name, hand: deck.pop})

  player_count = player_count + 1
end

while player_count = 2
  puts "Type 'play' to deal cards"
  start_game = gets.chomp
  if start_game = "play"
    puts "#{players}"
    break
  end





end


binding.pry
