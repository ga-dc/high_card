require "pry"

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = ["clubs", "diamonds", "hearts", "spades"]

deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push [rank, suit]
  end
end

deck.shuffle!

players = []

binding.pry

puts "End of file"
