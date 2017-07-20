# Use these two arrays to generate a deck of cards.
# Let's Play High-Card-Wins
#
# Game time!
#
# Methods to research:
#
# each_with_index
# max
# shuffle
# Tasks:
#
# Build a deck of shuffled cards.
#
# The deck should be an array of cards.
# Each card should be a mini-array with a value and suit. Example: [8, "hearts"]
# Shuffle the deck. It would look something like this...
# deck = [
# 	[8, "hearts"],
# 	[2, "diamonds"],
# 	["J", "clubs"],
# 	...
# ]
# NOTE: do not hardcode the deck. Create it by performing methods on the two arrays in the starter code.
# Collect an array of player names by prompting:
#
# "{n} players so far. Enter a player name, or type 'play':" Should look like this: [{name:'Jesse'}, {name:'Jane'}]
# Upon "play", deal each player a card.
#
# Find the highest card score dealt (Aces high).
#
# Find the winning player name, then print out:
#
# "Winner(s): {name1, name2, …}!"
# Bonus I
#
# Print out one of the following outcomes:
#
# "The winner is {name}!"
# "It's a tie between {name1, name2, …}!"
# Bonus II
#
# Have the game redraw cards for all players in the case of a tie.
# Contact GitHub API Training Shop Blog About
require 'pry'
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
genRanks = ranks.rotate!
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
n = players.length
 deck = genRanks.product(suits).shuffle
 # print deck
 dealt = 0
 winner = []

  puts "#{players.length} players so far. Enter name or type start"

  playerName = gets.chomp
  while playerName != "start"
  players.push({name: playerName})
  puts "#{playerName} has been added, there are now #{players.length}. Enter name or type start"
  # print players
  playerName = gets.chomp
  end
  players.each do |player|
    player[:card] = deck.pop
    player[:score] = genRanks.index(player[:card][0])
  end

  whoWon = players.sort_by {|player| player[:score]}

 whoWon.each do |player|
   if player[:score] == whoWon.last[:score]
     winner.push(player[:name])
   end

 end
print whoWon
