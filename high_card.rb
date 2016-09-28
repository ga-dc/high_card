require 'pry'

# def deck_of_cards
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


deck = []
ranks.each_with_index do |rank, index|
  suits.each do |suit|
  deck << [rank,suit]
  # deck << "#{rank}, #{suit}"
  end
end
deck = deck.shuffle

#Collect an array of player names
players = []
while true
  puts "#{players.length}: player so far. Enter a player name, or type 'play':"
  name = gets.chomp
  break if name == "play"
  players.push(name)
end

#deal each player a card.
cards = players.collect do |player|
  deck.pop
end

# find highest card score

score = cards.max_by { |card| card[2]  }

high_card = score.max

# end
# # deck_of_cards
binding.pry
puts "stop pry bug"
