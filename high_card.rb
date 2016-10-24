# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
cards = []
gameCards = []
cardsIndex = []
players = []

#Step 1: Build a loop that adds 52 cards to an array of arrays

suits.each do |suits|
  ranks.each do |ranks|
    cards << [ranks,suits]
  end
end

#Step 2: Get player names

i=0
while i < 2
  puts "Enter player name"
  name =  gets.chomp
  players << name
  i = i + 1
end

#Step 3: Upon *"play"*, deal each player a card.

def play(people,deck,dealt)
    people.each do |people|
      deck.shuffle!
      dealt << [people,deck[0]]
    end
    return dealt
end

gameCards = play(players,cards,gameCards)

#Step 4: Find the highest card dealt

x = 0
while x < gameCards.length
  cardsIndex << ranks.index(gameCards[x][1][0])
  x = x + 1
end

#Step 5: Compare the cards

z = 0
winner=99;
while z < gameCards.length
  if winner == 99
      winner = cardsIndex[z]
      z=z+1
      next
  end
  if cardsIndex[z] == 0
      winner = cardsIndex[z]
  elsif cardsIndex[z] > winner
    winner = cardsIndex[z]
  end
  # cardsIndex << ranks.index(gameCards[x][1][0])
  z = z + 1
end

puts "#{players[cardsIndex.index(winner)]} is the winner with a #{ranks[winner]}"
