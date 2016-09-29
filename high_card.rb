# Use these two arrays to generate a deck of cards.
require 'pry'

ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14 ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

suits.each do |suit|
  ranks.each do |rank|
    deck << {rank: rank, suit: suit}
  end
end

deck.shuffle!

loop do
  puts "#{players.length} players so far.  Enter a player name, or type 'play'"
  player_name = gets.chomp
  if player_name != 'play'
    players << {name: player_name}
  end
  if player_name == 'play'
    break
  end
end

players.each do |player|
  someCard = deck[rand(deck.length)]
  player[:card] = someCard
end

highPerson = {
  card: {rank: 0}
}

players.each do |player|
  playerCardRank = player[:card][:rank]
  highPersonCardRank = highPerson[:card][:rank]
  if playerCardRank > highPersonCardRank
    highPerson = player
  end
end

puts "Winner: #{highPerson[:name]}"


binding.pry
