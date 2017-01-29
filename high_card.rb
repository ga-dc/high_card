# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

deck.push(suits.product(ranks))

deck.shuffle

puts "Player One Enter Your Name: "

playerOne = gets.chomp

puts "Player One, Your Name Is #{playerOne}\n"

puts "Player Two Enter Your Name: "

playerTwo = gets.chomp

puts "Player One, Your Name Is #{playerTwo}\n"


puts deck
