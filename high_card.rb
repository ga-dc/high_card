##


def deck_of_cards
  values = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']
  suits = ['hearts', 'diamonds', 'clubs', 'spades']
  deck = []

  values.each_with_index do |v, i|
    suits.each do |s|
      deck.push({
        score: i,
        value: v,
        suit: s,
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
  card[:score]
end

high_score = scores.max


winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end

puts "Winner(s): #{winners.join(', ')}"
puts cards



# # Use these two arrays to generate a deck of cards.
# ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# suits = [ "hearts", "spades", "clubs", "diamonds" ]
#
# players = []
#
#
