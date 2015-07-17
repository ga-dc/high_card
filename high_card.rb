# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10,"J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = [];
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

deck.shuffle!

players = []
playerName = ""
until playerName == "play" do
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  playerName = gets.chomp
  if playerName == "play"
    break
  end
  players.push(playerName)
end

playerCards = []

(players.length).times do |i|
  cardRank = deck[i][0]
  playerCards.push(cardRank)
end
puts playerCards

playerRanks = []
hashRanks = Hash[ranks.map.with_index.to_a]
#puts hashRanks
playerCards.each do |card|
  playerRanks.push(hashRanks[card])
end
#puts playerRanks
# puts playerRanks.max
winningIndex = playerRanks.index(playerRanks.max)
#puts winningIndex
winningPlayer = players[winningIndex.to_i]
puts "The winning player is #{winningPlayer}"
