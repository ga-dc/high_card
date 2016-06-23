# Use these two arrays to generate a deck of cards.
# Make/Define a deck of playing cards
def high_cards
  ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  # Use each_with_index to calls block with 2 arguments(item and its index)
  # Syntax -%w(cat dog wombat).each_with_index { |item, index|
  ranks.each_with_index do |r, v|
    suits.each do |s|
      deck.push({
        rank: r,
        value: v,
        suit: s
        })
      end
    end

    # Randomize/Shuffle the cards
    return deck.shuffle
  end

  # Make the players
  deck = high_cards
  players = []
  #{}"{n} players so far. Enter a player name, or type 'play':"
  while true
    puts "#{{players.length}} so far. Enter a player name or type 'play:'"
    # Use .chomp to get rid of the record seperator at the end of the string
    # Still not quite sure I understand this
    name = gets.chomp
  end

  # Need to turn the players into the cards or vice versa in order to have them be compared in values
  #Upon "play", deal each player a card.
cards = players.map do |player|
  deck.pop
end

#Find the highest card score dealt (Aces high).
scores = cards.map do |card|
  card[:score]
end
high_score = scores.max
    #Find the winning player name, then print out:
    winners = []

    scores.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end

#{}"Winner(s): {name1, name2, …}!"
puts "Winner(s): #{winners.join(', ')}"
puts cards
