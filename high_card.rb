require 'pry'

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []


suits.each do |suit|
  ranks.each do |rank|
    deck << [rank, suit]
  end
end

deck.shuffle!

loop do
  puts "#{players.length} Players currently. Enter a player name or type 'play' to begin"
  player_name = gets.chomp
  if player_name != 'play'
    players << player_name
  end
break if player_name == 'play'
end


binding.pry
