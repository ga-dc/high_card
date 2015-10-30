# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each_with_index do |rank,index|
  suits.each do |suit|
  deck.push([rank,suit,index])
end
end
deck = deck.shuffle
# deck = ranks.map do |rank|
#   suits.each do |suit|
#   deck.push([rank,suit])
# end
# end
# deck.shuffle

player_input=""

while player_input != "play"
puts "There are #{players.length} players. Enter a name or type play"
player_input = gets.chomp.to_s
players.push(player_input)
end

players.pop()

hand_array = []
value_array = []
player_array=[]

players.each do |player|
  puts "#{player} played #{deck[players.index(player)]}"
  playerCard = [player,deck[players.index(player)]]
    hand_array.push(playerCard)
  end

hand_array.each do |hand|
  value_array.push(hand[1][2])
  player_array.push(hand[0])
end

puts "winner is #{player_array[value_array.index(value_array.max)]}"
