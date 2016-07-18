# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each do |rank|
  suits.each do |suit|
    card = []
    card.push(rank)
    card.push(suit)
    deck.push(card)
  end
end

deck.shuffle!

puts "No players so far. Enter a player name:"
name = gets.chomp
while name != "play"
  players.push(name)
  puts "#{players.length} players so far. Enter a player name, or type \'play\'"
  name = gets.chomp
end
puts "#{players.length} total players. Dealing cards..."
