# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
newRanks = ranks.rotate!
# puts ranks
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []
n = players.length
deck = newRanks.product(suits).shuffle
# print deck
dealt = 0
winner = []




puts "#{players.length} players so far. Enter a player name or type play"

playerName = gets.chomp
while playerName != "play"
players.push({name: playerName})
puts "#{playerName} has been added, there are now #{players.length}. Enter name or type play"
# print players
playerName = gets.chomp
end
players.each do |player|
  player[:card] = deck.pop
  player[:score] = newRanks.index(player[:card][0])
end

findWin = players.sort_by {|player| player[:score]}

findWin.each do |player|
  if player[:score] == findWin.last[:score]
    winner.push(player[:name])
  end

end

# print players
print findWin
puts "winner is #{winner}"
