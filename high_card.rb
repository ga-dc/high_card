require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"  ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
deck = ranks.product(suits);
# deck.shuffle

players = []

puts "Enter a name?? (y/n)"
ans = gets.chomp
index = 0
until ans == "n"
  puts "Enter a player name"
  players << person = {name: gets.chomp }
  index += 1
  puts "Would you like to enter another name? (y/n)"
  ans = gets.chomp
end

#populate players cards
players.each{|player| player[:card] = deck.sample}

compare = []

ranks.each_with_index {|rank, index| compare << index }

players[0][:card].each_with_index( |rank, index| compare.each{|index| puts rank <= index}}

#Need to modify this to get the index of the card of each player... (not )
#then need to









binding.pry
