# Use these two arrays to generate a deck of cards.
def deck_of_cards
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do |r, i|
  suits.each do |s|
    deck.push({
      score: i,
      ranks: r,
      suits: s,
      })
    end
  end

  return deck.shuffle
end


deck = deck_of_cards
players = []


while true
  puts "#{players.length} so far. Enter a player name, or type 'play':"
  name = gets.chomp

  break if name == "play"
  players.push(name)
end

cards = players.map do |player|
  deck.pop
end

scores = cards.map do |card|
  card[:scores]
end

high_score = scores.max

winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end
puts "Winnder(s): #{winners.join(', ')}"
puts cards
