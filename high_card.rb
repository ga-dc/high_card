# Use these two arrays to generate a deck of cards.


ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
deck = ranks.product(suits)
puts deck.shuffle

=begin

=end
# print "Enter player name"
# player = gets.chomp
# # player = []
# puts "Welcome #{player}! Let's play high card!"



# puts deck.shuffle
