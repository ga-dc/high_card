# Use these two arrays to generate a deck of cards.

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
# players = [
#    {name: "Jack"}
#    {name: "George"}
#    {name: "Benedict"}
#    {name: "London"}
# ]

deck = []
deck = ranks.product(suits)

puts deck.shuffle

players.length 
