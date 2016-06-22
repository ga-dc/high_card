require "pry"

# Deal one card to each players
# It uses the length of the $Players array to know how many cards to deal/times
# to go through the loop.  The card values are in an array called $dealt, and
# the position of the card in $dealt corresponds to the postioncon of the
# player who was dealt the card in the $Players array.
# Call out the player and the name of the card as they are dealt.
def dealCards
  $values.shuffle!    # shuffle the values array.
  $players.each do |i|
    $dealt << $values.shift
  end
  $players.each_with_index do |name, i|
    card = $dealt[i]   # card is the value of the dealt card, 0-51
    cardValue = $deck[card]  # use value as the index to get the hash from the deck
    cardPip = cardValue[0].to_s
    cardSuit = cardValue[1]
    cardName = cardPip + " of " + cardSuit
    puts "#{name} was dealt the #{cardName}"
  end

end

# Determine the winner.  Since we are dealing with the array of values,
# there are no issues with ties; it automatically knows that the six of spades
# beats the six of diamonds.  It uses the position of the maximum value of the
# $dealt array as a pointer into the $players array to find the winner's name.
def determineWinner
  winnerVal = $dealt.max
  winnerIndex = $dealt.index(winnerVal)
  winnerName = $players[winnerIndex]
  puts "#{winnerName} wins!"
end

# Prompt for player names, add each name to an array.
# When the user types "play" instead of a name, drop out of the loop
def getPlayers
  puts "Get Players"
  $players = []
  continue = "yes"
  until continue == "no" do
    puts "#{$players.count} players so far. Enter a player name, or type 'play':"
    in_name = gets.chomp
    if in_name == "play"
      puts $players.inspect
      continue = "no"
    else
      $players << in_name
    end
  end
end

#mainline
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "clubs", "diamonds", "hearts", "spades" ]
$deck = []
$players = []
$values = []
value = 0
$dealt = []

# Use these two arrays to generate an array containing the deck of cards.
# Each card is represented in the $deck array by a hash containing the pip
# value from the rank array and the suit from the suits array.
# $values is an array containing the values 0-51, which corresponds
# to the deck array; 0=2 of clubs, 1=2 of diamonds, all the way up to
# 51 = Ace of Spades
for rank in ranks do
  for suit in suits do
    # add value to cards hash
    card = []
    card.push(rank)
    card.push(suit)
    $deck.push(card)
    $values.push(value)
    value +=1
  end
end

getPlayers()
dealCards()
determineWinner()
