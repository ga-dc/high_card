# Use these two arrays to generate a deck of cards.
require "pry"


ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits).shuffle


players = []
hands = {}


puts players.length.to_s + " players so far. Enter a player name or type 'play'."

until players.include? 'play' do
  players << gets.chomp
end

players = players - ['play']

players.each do |player|
  hands[player] = deck.sample
end

# hands.each do |key, value|
#   puts key value
#   puts value
# end
