# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

 suits.map do |suit|
  ranks.each_with_index.length.times do |rank|
    card = [ranks[rank], suit]
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

print players
