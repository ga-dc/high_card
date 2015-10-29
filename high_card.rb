# Use these two arrays to generate a deck of cards.
# Card Setup
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each do |num|
  suits.each do |suit|
    deck.push([num, suit])
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
