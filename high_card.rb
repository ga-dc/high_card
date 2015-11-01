# Use these two arrays to generate a deck of cards.
require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck=[]
ranks.each do |rank|
  suits.each do |suit|
    temp_array=[]
    temp_array.push(rank)
    temp_array.push(suit)
    deck.push(temp_array)
  end
end


def value(card, index)
  case card[index][0]
  when "A"
    14
  when "K"
    13
  when "Q"
    12
  when "J"
    11
  else
    card[index][0]
  end
end

def cards(players,deck)
  cards = players.map do |player|
    deck.pop
  end
  cards
end

def scores(cards)
  cards.map do |card|
    scores.push(card)
  end
  scores
end

def high_card(scores)
  high_card=scores.max
  return high_card
end
deck=deck.shuffle

puts "#{players.length} players so far. Enter a player name, or 'play':"

user_input=gets.chomp

while user_input != "play"
  players.push(user_input)
  puts "#{players.length} players so far. Enter a player name, or 'play':"
  user_input=gets.chomp
end

if user_input=="play"
  print high_card(scores(cards(players,deck)))
end
