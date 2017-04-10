# Use these two arrays to generate a deck of cards.

require "pry"

#1 build shullfed deck cards


ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push ({
      ranks: rank,
      suits: suit
    })
  end
end

deck.shuffle

#2 collect array of players name

players = []

loop do
  puts "#{players.length} so far. Enter a player name, or type 'play':"
  player = gets.chomp

  break if player == "play"
  players << {name: player}
end

#3 deal each player a card

deck = deck.shuffle

  cards = players.map do |player|
    deck.pop
  end

#4 highest score


binding.pry
