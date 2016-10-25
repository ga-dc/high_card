# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
players = []

ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck.push([rank, suit, index])
  end
end
deck.shuffle!

answer = ""
loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  answer = gets.chomp
  break if answer == "play"
  players << {name:answer}
end

players.length.times do |index|
  players[index].merge!(card:deck[index])
end

winner = players.sort_by {|player| player[:card][2]}
winner.reverse!

puts "The winner is #{winner[0][:name]} with a #{winner[0][:card][0]}"
