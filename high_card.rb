# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

# Build a deck of shuffled cards.
# The deck should be an array of cards.
# Each card should be a mini-array with a value and suit. Example: [8, "hearts"]
# Create the deck by performing methods on the two arrays in the starter code.
deckStart = ranks.product(suits)
deckShuffled = deckStart.shuffle

# Collect an array of player names by prompting:
puts "Please enter your name."
player = gets.chomp
players.push( player )
compareDeck = []

puts "Would you like to (a)dd another player or (s)tart playing?"
startGame = gets.chomp

while startGame == "a"

  puts "Please enter another player's name."
  newPlayer = gets.chomp
  players.push( newPlayer )

  puts "There are #{players.length} players so far." # "{n} players so far.
  puts "Would you like to (a)dd another player or (s)tart playing?" # Enter a player name, or start the game
  startGame = gets.chomp

end

if startGame == "s"
  puts "It's time to play."

  compareDeck = players.map do |player| # For the amounts of players, remove one card from the deck
    deckShuffled.pop # Removes a card from end of array (deck)
  end
  puts "We're going to compare: \n"
  puts compareDeck.join(" ")
  puts "\n"
  puts "The winning card is: \n" # Find the winning card, then print out.
  puts compareDeck.max.join(" ") # Find the highest card score dealt (Aces high).

  if deckShuffled.length == 0 # Create method to determine if deck is empty
    puts "Thanks for playing."
    exit
  end

else # Tell the user they have to enter a valid move to play
  puts "Please enter a valid move."

end

# Find the winning player name, then print out:
# "Winner(s): {name1, name2, …}!"
