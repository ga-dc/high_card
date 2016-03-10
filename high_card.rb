# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck.push({
      rank: rank,
      suits: suit,
      score: i,
      })
    end
  end

while true do
  puts players.length.to_s + " players so far. Enter player name, or type 'play'."
  name = gets.chomp
  break if name == 'play'
  players.push(name)
end

players.pop

cards = players.map do |player|
  deck.shuffle.pop
end

score = cards.map do |card|
  card[:score]
end

winner = score.rindex(score.max)

puts players[winner] + " is the winner!"
