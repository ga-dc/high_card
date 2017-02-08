# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
ranks.delete_at(0)
ranks << "A"
deck = []
ranks.product(suits).each do |combo|
  deck << combo
  deck.shuffle!
end

players = []

loop do
  prompt = "> "
  puts "#{players.length} players so far. Enter a player name, or type 'play'."
  name = gets.capitalize.chomp
  break if name == "Play"
  players << {name: name}
end

index = 0

# cards_value = []
# p cards_value

loop do
  players[index][:card] = deck[index]
  # cards_value << ranks.index(deck[index][0])
  # p players
  index += 1
  break if index == players.length
end

win_condition = players.map{|each_player| ranks.index(each_player[:card][0])}
win_condition.max
# p win_condition
winner = players.find{win_condition[0]}
puts "#{winner[:name]} is the winner!"
