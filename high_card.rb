ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = ["clubs", "diamonds", "hearts", "spades"]
deck = ranks.product(suits).shuffle!
players = []

# gets the players
loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if input != "play"
    players << {name: input}
  else
    break
  end
end

tie = true
until tie == false
  winners = []
  # deals each player a card and stores its rank-value (score)
  for player in players do
    player[:card] = deck.shift
    player[:score] = ranks.index(player[:card][0])
  end
  # finds the highest rank
  high_score = players.map{|player| player[:score]}.max
  # pushes the winner(s) into the winners array
  for player in players do
    if player[:score] == high_score
      winners << player[:name]
    end
  end
  # announces the results, and deals again (continues loop) if there is a tie
  if winners.length == 1
    puts "The winner is #{winners[0]}!"
    tie = false
  else
    puts "It's a tie between #{winners}!"
  end
end
