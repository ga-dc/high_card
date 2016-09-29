# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits).shuffle
player_one = " "
player_two = " "

players = [0]

p "{n} players so far. Enter a player name, or type 'play':"
  [{name: player_one}, {name: player_two}] = gets.chomp
