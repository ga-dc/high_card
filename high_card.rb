require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.shuffle! << [rank, suit]
  end
end
p deck


binding.pry
