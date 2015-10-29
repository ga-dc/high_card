# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck.push([rank, suit])
  end
end

deck.shuffle!

deck.each do |card|
  # puts "[" + card[0].to_s + ", \"" + card[1].to_s + "\"]"
  puts card[0].to_s + " of " + card[1].to_s
end

while players.length >= 0 do
  puts "Enter the name of player \##{(players.length + 1).to_s}."
  puts "Press [Enter] if you have enough players." if players.length > 1
  input = gets.chomp
  if input == "" then break
  else
    players.push(input)
  end
end

puts "Players:" + players.join(" ")
