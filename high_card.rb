# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# Build a deck of shuffled cards.
deck = ranks.product(suits)
s_deck = deck.shuffle
 s_deck.each_with_index{|value,index| puts"#{value}#{index}"}
players = []
# user_input = gets.chomp +"{n} players so far. Enter a player name, or type 'play'
puts"enter player name"
name = gets.chomp
def player
for player in name do
  players.push(name)
end
end 
