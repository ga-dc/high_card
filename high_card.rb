# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = ranks.product(suits).shuffle!

players = []
answer = 'String'

while true
  puts "There are #{players.length} players playing so far. Enter a player name, or type 'play'."
  answer = gets.chomp.capitalize.to_s
  players.push({name: answer})
  if answer == 'Play'
    players.pop
    break
  end
end

players.each_with_index do |person, i|
  person[:card] = deck[i]
end
