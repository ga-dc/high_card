ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []

## Create Deck
ranks.each_with_index do |rank,index| #loop through the suits
  suits.each do |suit| #loop through all ranks per suit
    deck << [suit, rank, index] #adds rank/suit object to deck array
  end
end

## Add Players to Game
loop do
  if players.length < 2
  puts "#{players.length} players so far. Enter a player name"
  answer = gets.chomp
  players << {name:answer}
  else
  puts "Max players reached! Push any key to play!".upcase
  play = gets.chomp
  break
  end
end

## Shuffle Deck
deck.shuffle! # shuffle deck
puts ""
puts "Shuffling cards......"
puts ""

## Assign card to each player
puts "CARDS PICKED:"
players.length.times do |index|
  players[index].merge!(card:deck[index])
  puts players[index] # how can I get rid of the index number displaying?
  # I want it to just be ["suit", "rank"]
  puts ""
end

puts ""
puts "Determining Winner......"
puts ""

## Determine winner
winner = players.sort_by do |player|
  player[:card][2]
end

puts "The winner is......".upcase
puts "#{winner[1]}"
puts ""
