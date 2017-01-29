# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
results = []

suits.each do |suit|
    ranks.each do |rank|
      deck.push([rank,suit])
    end
end

deck.shuffle!

deck.each do |card|
  puts card[0].to_s + " of " + card[1].to_s
end

loop do
  puts "Enter players name to add to the game.  When all players are added type 'done' to play"
  input = gets.chomp
  if input == "play"
    break
  elsif players.push(input)
  end
end

cards = players.map do |player|
  deck.pop
end
