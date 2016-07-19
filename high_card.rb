# Use these two arrays to generate a deck of cards.
def playingdeck
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]

  deck = []
    ranks.each_with_index do |val, number|
      suits.each do |suit|
      deck.push({
        score: x,
        rank: val,
        suit: suit,
        })
      end
    end
    # return deck.shuffle()
    # puts deck.shuffle() ******** im possitive im not testing this correctly.
    deck = playingdeck
end

players = []
puts "Welcome, there are currently #{players.length} players. Enter a player name, or type 'play' to begin:"
name = gets.chomp

if name == 'play' || "Play"
  break;
else
  players.push(name);
end

deck.shuffle()
player_deal = players.map do |player|
  deck.pop
end

player_score = cards.map do |card|
  card[:score]
end

high_score = player_score.max

Winners = []

player_score.each_with_index do |score, i|
  Winners.push(players[i]) if player_score == high_score
end

puts "congratulations! The winner(s): #{Winners.join( ',' )} "
puts player_deal
