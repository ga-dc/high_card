# Use these two arrays to generate a deck of cards.
#1
def deck_of_cards
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do |v, i| #i for 'point'
  suits.each do |s|
    deck.push({
      point: i,
      rank: v,
      suit: s,
      })
  end
end

  return deck.shuffle()
end

#2
deck = deck_of_cards
players = []

while true
  puts "#{players.length} so far. Enter player name(s), then type 'play':"
  name = gets.chomp

  break if name == "play"
  players.push(name)
end

#3
cards = players.map do |player|
  deck.pop
end

#4
points = cards.map do |card|
  card[:point]
end

high_score = points.max

#5
winners = []

points.each_with_index do |point, index|
  winners.push(player[index]) if point == high_score
end

puts "Winner(s): #{winners.join(', ')}"
puts cards
