# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []



#Build a deck of shuffled cards.

#The deck should be an array of cards.
#Each card should be a mini-array with a value and suit. Example: [8, "hearts"]
#Shuffle the deck. It would look something like this...
#deck = [
#    [8, "hearts"],
#    [2, "diamonds"],
#    ["J", "clubs"],
#    ...
#]
#NOTE: do not hardcode the deck. Create it by performing methods on the two arrays in the starter code.
#Collect an array of player names by prompting:

#{}"{n} players so far. Enter a player name, or type 'play':"
#Upon "play", deal each player a card.
#Find the highest card score dealt (Aces high).
#Find the winning player name, then print out:
#{}"Winner(s): {name1, name2, …}!"
