# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

#Use a method to assign each suit to a type of card

#Use shuffle method to shufle the deck

#FULL SHUFFLED DECK

rank_per_card = ranks*4
suits_per_card = suits*13

deck = rank_per_card.zip(suits_per_card)

deck.each_slice(2).to_a

deck = deck.shuffle

#RECEIVE USER INPUT FOR NAME AND CALL PLAY FUNCTION

$play_called = false

until $play_called == true do
print " #{players.count} players so far. Enter a player name, or type 'play': "
user_input = gets

  if user_input.downcase == "play"
    play()
    $play_called = true
  else
    players << user_input
    puts players
  end
end

def play()
  print "It's time to play"
end
