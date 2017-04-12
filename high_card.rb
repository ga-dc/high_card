# Use these two arrays to generate a deck of cards.
require 'pry'

def deck_o_cards
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

deck = ranks.each_with_index do |v, i|
    suits.each do |s|
      deck.push({
        score: i,
        value: v,
        suit: s,
      })
    end
  end

  return deck.shuffle
end
deck = deck_o_cards
players = []

puts "There are #{players.length} players so far. Enter a player name, or type 'play':"
input = gets.chomp
players << input

until input == "play"
  puts "There are #{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  players << input
end

cards = players.map do |player|
  deck.pop
end

puts cards

scores = cards.map do |card|
  cards[:score]
end

binding.pry

puts "ENd"
