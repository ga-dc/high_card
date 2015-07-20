
#The deck
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
 players = []

ranks.each do |rank|
deck.push([rank])
end

deck.shuffle

deck.push(suits)


#get players
puts "{n} players so far. Enter a player name, or type 'play':"
names = gets.chomp

#deal each player a card

#
