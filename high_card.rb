# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

$players = []

#Use a method to assign each suit to a type of card

#Use shuffle method to shufle the deck

#FULL SHUFFLED DECK

rank_per_card = ranks*4
suits_per_card = suits*13

$deck = rank_per_card.zip(suits_per_card)

$deck.each_slice(2).to_a

$deck = $deck.shuffle

#Play Fuction

def play()
  puts "This function got called"
  cards_dealt = Array.new(1, $deck.pop($players.length))
  print $players
  print cards_dealt
end

#RECEIVE USER INPUT FOR NAME AND CALL PLAY FUNCTION

user_input = ""

until user_input.chomp == "play"
print "#{$players.count} players so far. Enter a player name, or type 'play': "
user_input = gets

puts user_input.chomp

  if user_input.chomp == "play"
    puts "The play function should be called"
    play()
  else
    $players << user_input.chomp
    puts $players
  end
end
