# Use these two arrays to generate a deck of cards.
def cards
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits).shuffle
end

shuffled_deck = cards
players = []

while true
puts "#{players.length} in game. More players? Or 'start'!"
name = gets.chomp

  break if name == "start"
  players.push(name)
end

hand = players.map do |player|
  cards.pop
end

high_card = hand.map do |hand|
  hand[:score]
end

win = high_card.max

#if win
