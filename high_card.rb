# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "clubs", "hearts", "diamonds", "spades" ]
i = 0
value = 0
players = []
deck = []
values = []

for rank in ranks do
  for suit in suits do
    new_card = [rank, suit, value]
    deck.push(new_card)
  end
  value +=1
end

deck.shuffle!

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  break if input == "play"
  obj = {name: input}
  players.push(obj)
end

for player in players do
  i += 1
  player_card = deck[i]
  player[:card] = player_card

  values.push(player_card[2])
  winner = values.each_with_index.max
  puts "Player #{i}: #{player[:name]} - card: #{player[:card]}"
end

puts values
high_card = values.max

values = values.each_index.select do |i|
  values[i] == high_card
end

if values.length == 1
  puts "The winner is #{players[values[0]][:name]}"
else
  puts "It's a tie between: "
  for val in values do
    puts players[val][:name]
  end
end
