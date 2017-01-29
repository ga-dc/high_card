puts " "
puts "*" * 50
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck.push( [rank, suit] )
  end
end

start = ""

loop do
  puts "There are #{players.length} players so far. Enter a player name, or type 'play': "
  start = gets.chomp
  if start != "play"
    players.push(start)
    puts players.inspect
  else
    break
  end
end

deck.shuffle
puts deck.length

players.each do |player|
  player = { "hand" => deck.pop() }
end
puts deck.length
puts players[0].hand


puts " "
puts "*" * 50
