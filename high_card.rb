# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

#Build an array of shuffled cards using suit and rank arrays
  #Each card contains a mini-array (suit, rank) - each_with_index
#Shuffle the deck  - deck.shuffle

deck = []
ranks.each_with_index do |rank|
suits.each_with_index do |suit|
  deck.push([rank, suit])
end
end
puts deck
deck.shuffle

#Collect an array of player names by prompting user and pushing names to the player array
#Keep asking for player names until "play" is typed - while loop
#use break if to escape the loop when play is typed
#increment the counter by one each time name is entered
name = " "
n = 0
players = []
while n < deck.length
  puts "#{n} players so far. Enter a player name, or type 'play':"
  name = gets.chomp
  break if name == "play"
  players.push(name)
  n = n + 1
end   #end of until loop

n = players.length

#when (name == play), deal each player a card
#pop one card off of the deck for each player
#put all dealt cards into an array
#search array by index number for card with highest index number
#get name of person who has that index #

playerCards = []
players.each do |player|
  deck.shuffle!
  deck.pop
end
puts playerCards

#Find the high card

highCard = playerCards.each do | playerCard|
  playerCard.max #Not sure about this...
end

#Find the winner
