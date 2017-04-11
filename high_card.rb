def deck_of_cards
  ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  suits = [ "hearts", "spades", "clubs", "diamonds" ]
  deck = []

  ranks.each_with_index do |r, i|
    suits.each do |s|
      deck.push({
        score: i,
        rank: r,
        suit: s,
      })
    end
  end

  return deck.shuffle
end

deck = deck_of_cards
players = []

while true
puts "We've got #{players.length} in here. If you want in, type your name. Otherwise just type play."
name = gets.chomp

break if name == "play"
players.push(name)
end

#assign each player a card
cards = players.map do |player|
  deck.pop
end

scores = cards.map do |card|
  card[:score]
end
winning_score = scores.max

#assign winner
winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == winning_score
end
#prints winner(s)
puts "Winner(s): #{winners.join(', ')}"
puts cards
