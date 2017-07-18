# Use these two arrays to generate a deck of cards.
require 'pp'

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]


players = []
deck = []

 suits.each do |suit|
  ranks.each_with_index do |rank, index|
    card = {
      rank: rank,
      suit: suit,
      value: index
    }
    deck.push(card)
  end
 end


shuffleDeck = deck.shuffle!
#print shuffleDeck

print "#{players.length} players so far. Enter a player name, or type 'play':"
  playerName = gets.chomp
      while playerName != "play"
      players.push({name: playerName})
      print "#{players.length} players so far. Enter a player name, or type 'play':"
        print players.length
        print players
      playerName = gets.chomp
  end

players.each do |player|
  player[:card] = shuffleDeck.pop
end

pp players

sortedPlayers = players.sort_by {|player| -player[:card][:value]}


sortedPlayers.each do |player|
  puts "#{player[:name]} wins with a #{player[:card][:rank]}"
end

#find_all for finding ties
