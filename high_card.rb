# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each_with_index do |card, index|
  suits.each do |suit|
    deck.push({
      value: index,
      ranks: card,
      suits: suit
    })
  end
end

deck.shuffle!

players = []
n = players.length

puts "#{n} players so far. Enter a name, or type 'play': "
input = gets.chomp

if input == play
  break
else
  players.push(input)
end

def deal_cards
  player_cards = players.map do |player|
    deck.pop
  end

  score = player_cards.map do |card|
    card[:value]
  end

  high_score = score.max

  winners = []

  score.each_with_index do | value, index |
    winners.push(players[index]) if score == high_score
  end
end

if winners.length == 1
  puts "The winner is #{winner}"
elsif winners.length > 1
  puts "It's a tie between #{winners.join(', ')}"
  deal_cards
end
