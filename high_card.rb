# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# Build a deck of shuffled cards.
deck = ranks.product(suits)
s_deck = deck.shuffle
 s_deck.each_with_index{|value,index| puts"#{value}#{index}"}
players = []
# Collect an array of player names by promptingputs"enter player name"
puts "Enter Player Name"
name = gets.chomp
while name != 'play' do
  players << {name: name}
  name = gets.chomp
# players.each_with_index{|s_deck,index| puts"#{s_deck}#{index}"}
end

players.each do |player|
player [:card]=s_deck.pop
end
puts players
