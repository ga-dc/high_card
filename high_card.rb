# Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]

require "pry"

suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]

players = []
deck = []

def set_players
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck.push ([rank, suit, index])
  end
end

deck.shuffle!

answer = ""

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  answer = gets.chomp
  break if answer == "play"
  players.push({name: answer})
end

binding.pry
