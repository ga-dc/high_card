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

players.each do |person|
  if person[:card][0] == 'A'
    person[:card][0] = 14
  elsif person[:card][0] == 'J'
    person[:card][0] = 11
  elsif person[:card][0] == 'Q'
    person[:card][0] = 12
  elsif person[:card][0] == 'K'
    person[:card][0] = 13
  end
end

winner = players.max { |a, b| a[:card][0] <=> b[:card][0]}

puts "Congrats #{winner}!"
