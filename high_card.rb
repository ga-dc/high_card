# Use these two arrays to generate a deck of cards.
require 'pry'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

index = 0

ranks.each do |rank|
suits.each do |suit|
  deck.push [rank, suit]
end
end

deck.shuffle!

loop do
  name = gets.chomp
  if name != 'play'
    players.push name
  end
  break if name == 'play'
end

players.each do |player|
  players[:card] = deck.pop
  #[:card] = property
  #.pop returns the last item of an array
end


binding.pry
puts "stop pry bug"
