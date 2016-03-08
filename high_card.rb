require 'pry'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

def build_deck(ranks, suits)
  deck = []
  ranks.each_with_index do |rank, index|
    suits.each do |suit|
      card = {rank: rank, suit: suit, worth: index
      }
      deck << card
    end
  end
  deck.shuffle
end

deck = build_deck(ranks, suits)

while true do
  puts 'Welcome. Enter your name or press "p" to play.'
  name = gets.chomp.downcase
  break if name == 'p'
  players << name
end

hand = players.map do |player|
  deck.pop
end

currRank = hand.map do |card|
  card[:worth]
end

highest = currRank.max

winners = []

currRank.each_with_index do |worth, index|
  winners.push(players[index]) if worth == highest
end

binding.pry
