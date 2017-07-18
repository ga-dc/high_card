# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

ranks = ranks.rotate(1)

players = []

deck = ranks.product(suits)
deck.shuffle!

players = []
loop do
  print "#{players.length} players so far. Enter a player name, or type 'play':"
  player = gets.chomp
  break if player == "play"
  players.push({name: player})
end

players.each_with_index do |player, i|
  player[:card] = deck[i]
end

winner = players.reduce do |current_winner, player|
  if ranks.index(player[:card][0]) > ranks.index(current_winner[:card][0])
    current_winner = player
  end
  current_winner
end

puts winner
