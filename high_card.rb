require "pry"
# Use these two arrays to generate a deck of cards.

# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# I removed the Letters ranks for less complexity when calling the winning card
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = ranks.product(suits)
deck.shuffle!
compare = []

  loop do
    puts " {#{players.length} players so far. Enter a player name, or type 'play' "
    newPlayer = gets.chomp
    break if newPlayer == "play"
    players << {name: newPlayer, card: deck.pop}

  end

  players.each do |player|
    puts player[:card].inspect
    compare << player[:card]
  end

 # Able to pull out the winning card, but not the winner's name associated with the card
 high_card =  compare.max_by do |comp|
   comp[0]
  end


binding.pry
puts "end of file"
