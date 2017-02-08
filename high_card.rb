ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = ["clubs", "diamonds", "hearts", "spades"]
deck = ranks.product(suits)
# .shuffle!
players = []

loop do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  input = gets.chomp
  if input != "play"
    players << {name: input}
  else
    break
  end
end

for player in players do
  player[:card] = deck.shift
  player[:score] = ranks.index(player[:card][0])
end

winners = []
scores = players.map{|player| player[:score]}
high_score = scores.max

for player in players do
  if player[:score] == high_score
    winners << player[:name]
  end
end

if winners.length == 1
  puts "The winner is #{winners[0]}!"
else
  puts "It's a tie between #{winners}!"
end

# ### Bonus II
# Have the game redraw cards for all players in the case of a tie.
