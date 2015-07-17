#moved ace to end of rank array
#nested .each combines rank and suit in the deck array
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10,"J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = [];
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end
deck.shuffle!

#create playerName variable with length 0 and empty players array
#add names to players array until play is entered
#break the loop before play is entered into the players array
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

#for each player, pull a rank from the deck and push it into a playerCards array
playerCards = []
(players.length).times do |i|
  cardRank = deck[i][0]
  playerCards.push(cardRank)
end
puts playerCards

#googled how to get the index of an element from an array (in js this would be indexOf)
#created a hash that includes each rank (2 through A) with it's index in the rank array
#created a playerRanks array that takes the indexes of the rank of each card dealt to the players
#get the index of the max value in the ranks array
#the winning player will have that same index in the playerNames array
#this will only return one max value (and therefore name) even if more than one player had the highest rank
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
