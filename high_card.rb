require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


deck = []
ranks.each_with_index do |rank|
  suits.each do |suit|
  deck << [rank,suit]
  # deck << "#{rank}, #{suit}"
  end
end
deck = deck.shuffle



# players = []











binding.pry
puts "stop pry bug"
