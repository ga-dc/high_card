# Use these two arrays to generate a deck of cards.
require "pry"

players = []
def shuffle_card
  deck = []
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  ranks.each_with_index do |rank, i|
    suits.each do |suit|
      deck << [rank, suit, i]
    end
  end
  return deck.shuffle
end


deck = deck_of_cards
players = []

while true
  puts "#{players.length}. Enter a player name, or enter 'play':"
  name = gets.chomp

  break if name == "play"
  players.push(name)
end



binding.pry
