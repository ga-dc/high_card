# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks.push(ranks.shift)
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck_array = []

ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck_array << [i,rank,suit]
  end
end
deck_array.shuffle!

players = []
score = 0

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play' to get started"
  name_input = gets.chomp
  if name_input == "play"
    break
  else
    players << { name: name_input }
  end
end

players.each do |player|
  player[:card] = deck_array.shift
end

winning_player = players.max_by do |player|
  player[:card][0]
end

puts winning_player
