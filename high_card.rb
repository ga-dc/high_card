# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

#make deck
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank,suit])
  end
end

#shuffle deck
deck = deck.shuffle

# prompt players
players = []
userInput = nil

puts players.size.to_s + " players so far. Enter a player name (no limit on amount of players), or type 'play'"
while !(userInput.to_s == "play")
  userInput = gets.chomp
    if userInput.to_s != "play"
      players.push({name: userInput})
    end
      puts players.size.to_s + " players so far. Enter a player name (no limit on amount of players), or type 'play'"
end

#deal cards to each player
players.each_with_index.map { |player, index| player[:card] = deck[index]}

#find the highest card
deltRank = []

players.each { |player| deltRank.push(ranks.index(player[:card][0])) }

#find largest card's index
largestValueIndex = deltRank.each_with_index.max[1]
largestValue = deltRank[largestValueIndex]

#check if there are duplicates
occurences = deltRank.each_index.select{|i| deltRank[i] == largestValue}
puts occurences

winners = []
# output results
if occurences.size < 2
  puts "The winner is " + players[occurences[0]][:name]
else
  occurences.each do |occurence|
    winners.push(players[occurence][:name])
  end
    puts "It's a tie between " + winners.to_s
end
