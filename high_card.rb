require "pry"

# Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
cards = []
deck = []

# 1 build deck and shuffle cards
deck = ranks.product(suits)

deck.shuffle!


p deck

#2 prompt names and add to players array
#3 deal players a card
players = []
loop do
  name = ""
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  break if name == "play"
  players.push({name: name, cards: deck.pop} )

end


# #4 high card
#in order to get and compare cards - had to make new rank array without the A,J,Q,K for now
get_card = players.max_by do |player|
  puts player
  player[:cards][0]
end

puts get_card




binding.pry
 puts "end of file"
