# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
player_cards = []
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
  #keep getting player names or play the game
  user_input = ''
  n = 0
  while user_input != 'play'
    puts "you have #{n} players so far.\nenter a player name or type 'play'"
    user_input = gets.chomp
    if user_input != 'play'
      arr << user_input
      n += 1
    end
  end
end
get_player(players)

#deal each player a card
def deal players, player_cards, deck
  #build an array of player cards
    #pop off a number of cards from deck equal to amount of players and put them into array of player cards
    for player in players
      player_cards << deck.pop
    end
    #for each card in player_cards, add player name
end
deal(players, player_cards, deck)
puts player_cards


#upon play, deal each player a card
#find the highest card dealt
#print out name of the winner
