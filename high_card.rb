require "pry"
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = []
$deck: [],
$players: [],
$hands: [],
#give suits a value

  deck = [{rank:,suits:,worth:}]
  def build_deck(ranks, suits)
    deck = []
    ranks.each_with_index do |rank, index|
      suits.each do |suit|
        card = {
          suits: suit,
          rank: rank,
          worth: index
        }
        deck << card
      end
    end

return deck.shuffle

#players is a hash
def choose_players
  while true do
    puts "Welcome! Enter name to play or press 'p' to play"
    name = gets.chomp.downcase
    break if name == 'p'
    #save name to game
    $players << name
  end
end
# variables: :players :names :deck


#How many players, ask name for each player. once all collected, ask to start game.
puts "Welcome to High Card. How many players?:"
players =  gets.chomp
players.each do |player|
  puts "Please enter your name:"
  names.each do |name|
  puts "Welcome" + name + "! Get ready to play!"
else
end

#shuffle deck of cards
deck.shuffle

#deal random cards
# deck.sample
#for each player

#once all cards are dealt- turnover


# Variables Needed:
# deck
# players
# hands
#
# functions that need to be done:
# build deck



# start game
# deal
# find highest card value
# announce winner
# next game
#
# build a deck of 52 cards:
#   each card needs to have a suit and a value i.e [8, "hearts"]
#   break out value variables
#   break out suit variables
#
#
#
# play: press play when ready to start
# upon selecting play,
# deal 1 card per player
#
# turn cards over
#
# highest card score (aces high)
#
# find card w max value
# Find winning player name
#
# print name of winner and winner message
deck = build_deck(ranks, suits)
choose_players

binding.pry
puts "fixes pry error"
