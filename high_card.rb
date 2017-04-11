require "pry"

#1 build shullfed deck cards
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck << [suit, rank]
  end
end

deck.shuffle

#2 collect array of players name

players = []

loop do
  puts "#{players.length} so far. Enter a player name, or type 'play':"
  name = gets.chomp

  break if name == "play"
  players << name
end

#3 deal each player a card


#4 highest score

  binding.pry
