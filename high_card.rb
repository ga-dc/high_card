# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck=[]

ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank,suit])
  end
end

deck.shuffle!

players = []

+puts players.length.to_s = "{n} players so far. Enter a player name, or type 'play':"
+name = gets.chomp.to_s
+if name === "play"
+  players.push(name)
+end

cards = players.map do |card|
  card|:score|
end

high_score = scores.max

winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end

puts "Winner(s): #{winners.join(', ')}"
puts cards
