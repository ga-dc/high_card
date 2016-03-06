# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#build a deck of cards, each card is a mini-array with value and suit
  #declare a deck variable with an empty array
deck = []
  #the deck is multidemensional
  #each element of the deck array is an array with card info --> suit and ranks
  #loop through the ranks and suits arrays and build the deck array
for rank in ranks
  #for each element in ranks array, build a card array
  #loop thru suits array and add ranks for each suit
  for suit in suits
    card = []
    card.push(rank, suit)
    deck << card
  end
end

#shuffle the deck
deck.shuffle!

#collect an array of names by prompting for a name
def get_player arr
  user_input = ''
  while user_input != 'play'
    puts "enter a player name or type 'play'"
    user_input = gets.chomp
    if user_input != 'play'
      arr << user_input
    end
  end
end
get_player(players)


#keep getting player names or play the game
#upon play, deal each player a card
#find the highest card dealt
#print out name of the winner
