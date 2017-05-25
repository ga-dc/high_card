# Use these two arrays to generate a deck of cards.
require 'pry'

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []


# deck = ranks.product(suits)
# deck.shuffle

ranks.each_with_index do |rank, index|
    suits.each do |suit|
      deck.push([rank: rank, suit: suit, score: index,])
    end
  end

shuffled_deck = deck.shuffle


loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  break if input.downcase == "play".downcase
  players.push(input)
end

puts shuffled_deck.length

cards_to_players = players.each do |player|
  shuffled_deck.pop
end

puts shuffled_deck.length




binding.pry

puts "end of file"
