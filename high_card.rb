# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# build deck of shuffled cards
deck = ranks.product(suits).shuffle

#Collect PLayer Names w/ prompts put in players array.
puts "Enter Player 1 Name"
nameOne= gets.chomp
players = []
players.push(nameOne)
puts "Enter Player 2 Name"
nameTwo= gets.chomp
players.push(nameTwo)

hand = []
puts "Enter PLAY when ready to deal"

# upon "play" deal a card to each player.
userInput = gets.chomp
case userInput
when "play"
2.times do
hand.push(deck.sample)
end
puts players.zip(hand).inspect
 # print winning player name
# find card with "max" value (aces high)
winner = players.zip(hand).max.first
puts "the winner is " + winner
end
