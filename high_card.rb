# Use these two arrays to generate a deck of cards.

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck = []

players gets >> chomp

puts "What's your name?"
name = gets
name = gets.chomp
puts "Hello " + name + ". How are you? Welcome to war!"

deck = ranks.product(suits)
puts deck.shuffle

# >>

puts deck.shuffle.prompting
players.length
