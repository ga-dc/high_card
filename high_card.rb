# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

ranks.push(ranks.shift)
puts ranks
deck = ranks.product(suits)
deck.shuffle!
p deck

puts "inputs player name"
input = gets.chomp
while input != 'play' do
  players << {name: input}
  puts "Input player name"
  input = gets.chomp
  if players.length > 1
    puts "or input 'play' to start"
  end
end

players.each do |player|
  player[:card] = deck.pop
end

puts players

player_card_values = []
for player in players do
  card = player[:card][0]
  position = ranks.index(card)
  player_card_values.push(position)
end

# player_cards = players.map {|player| player[:card][0]}

print player_card_values

high_card = ranks[player_card_values.max]
puts high_card

winners = players.select do |player|
  player[:card][0] === high_card
end

# winners = []
#
# for player in players do
#   if player[:card][0] === high_card
#     winners << player
#   end
# end

# p winners
puts "Winner(s):{#{winners}}"
puts "The winner is #{winners}"
