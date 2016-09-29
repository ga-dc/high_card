require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
full_deck= []

suits.each do |suit|
  ranks.each_with_index do |rank|
    full_deck << [suit, rank]
    full_deck.shuffle!

  end

end
puts "#{players} players so far. Enter a player name, or type 'play':"
players = gets.chomp << players
p full_deck

binding.pry
p "HAM"
