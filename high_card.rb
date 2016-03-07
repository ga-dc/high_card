# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck =ranks + suits


variables: :players :names :deck


#How many players, ask name for each player. once all collected, ask to start game.
puts "Welcome to High Card. How many players?:"
players =  gets.chomp.to_i
players.each do |player|
  puts "Please enter your name:"
  names.each do |name|
  puts "Welcome" + name + "! Get ready to play!"
else
end

#shuffle deck of cards
deck.shuffle

#deal random cards
deck.sample
#for each player

#once all cards are dealt- turnover


Variables Needed:
deck
players
hands

functions that need to be done:
build deck

hash = Hash.new
%w(cat dog wombat).each_with_index { |item, index|
  hash[item] = index
}
hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}





start game
deal
find highest card value
announce winner
next game

build a deck of 52 cards:
  each card needs to have a suit and a value i.e [8, "hearts"]
  break out value variables
  break out suit variables



play: press play when ready to start
upon selecting play,
deal 1 card per player

turn cards over

highest card score (aces high)

find card w max value
Find winning player name

print name of winner and winner message
