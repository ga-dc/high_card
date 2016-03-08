require 'pry'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck << [rank, suit, index]
  end
end
deck.shuffle!

binding.pry
