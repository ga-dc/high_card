# Use these two arrays to generate a deck of cards.
# Card Setup
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do |num, rank|
  suits.each do |suit|
    deck.push({
      suit: suit,
      rank: rank,
      num: num
    })
  end
end

deck.shuffle!

# Game Play
players = []
puts players.length.to_s + " players so far. Enter a player name, or type 'play':"
userInput = gets.chomp

while userInput != "play" do
  players.push([userInput])
  userInput = gets.chomp
end

puts players.inspect

players.each_with_index do |player, index|
  players[index].push(deck[index])
end

puts players.inspect

high_score = players.map do |player|
  player[1][:rank]
end

high_score = high_score.max

puts high_score

winner = players.find_all do |player|
  player[1][:rank] == high_score
end

winner_name = winner[0][0]

puts "Winner(s): #{winner_name}!"
