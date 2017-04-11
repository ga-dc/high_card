# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.shuffle.each do |rank|
  suits.shuffle.each do |suit|
    deck.push({
      rank: rank,
      suit: suit
      # index: i
      })
  end
end

players = []

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play'"
  user_input = gets.chomp

  break if user_input == "play"
  players << user_input
end

puts players

deck.each_with_index do |card, i|
  ## What goes here??
end
