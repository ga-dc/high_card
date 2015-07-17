# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
deck=[]
name=()



#asking for player names
 repeate question until some types play
until (name =="play") do
  puts "There are #{players.count} players so far. Enter a player name, or type 'play'"
# get name
name= gets.chomp

#put names in array
players.push(names)

end
#new array with 2 cards randomly placed together one card from each array and shuffle


ranks.each do |rank|    #try   ranks.each do
    suits.each do |suit|
    deck.push([rank, suit])
puts deck.to_s
    deck.shuffle

#deal out cards based on the number of players.

cards_dealt=  deck.slice(players.count)


#figure out which cards are the highest in deck-

[["A", "hearts"],
["A", "spades"],
["A", "clubs"],
["A", "diamonds"],
[2, "hearts"],
[2, "spades"],
[2, "clubs"],
[2, "diamonds"],
[3, "hearts"],
[3, "spades"],
[3, "clubs"],
[3, "diamonds"],
[4, "hearts"],
[4, "spades"],
[4, "clubs"],
[4, "diamonds"],
[5, "hearts"],
[5, "spades"],
[5, "clubs"],
[5, "diamonds"],
[6, "hearts"],
[6, "spades"],
[6, "clubs"],
[6, "diamonds"],
[7, "hearts"],
[7, "spades"],
[7, "clubs"],
[7, "diamonds"],
[8, "hearts"],
[8, "spades"],
[8, "clubs"],
[8, "diamonds"],
[9, "hearts"],
[9, "spades"],
[9, "clubs"],
[9, "diamonds"],
[10, "hearts"],
[10, "spades"],
[10, "clubs"],
[10, "diamonds"],
["J", "hearts"],
["J", "spades"],
["J", "clubs"],
["J", "diamonds"],
 ["Q", "hearts"],
 ["Q", "spades"],
 ["Q", "clubs"],
 ["Q", "diamonds"],
 ["K", "hearts"],
 ["K", "spades"],
 ["K", "clubs"],
 ["K", "diamonds"]]


#compare the array of cards_dealt to determine the winning suite.
cards_dealt.index(cards_dealt.max)


#then get the player that matches the index of the max card from cards_dealt


#print out "Winner(s): {name1, name2, …-  winner is based on the index name that correlates with the index of the winning card
