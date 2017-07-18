# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

for r in ranks do
  for s in suits do
    card = [r, s]
    deck.push(card)
  end
end

deck = deck.shuffle

player = nil
players = []

while player != 'play'
  n = players.length
  puts "#{n} players so far. Enter a player name, or type play:"
  players = []
  player = gets.chomp
  if player != 'play'
    players.push({name: player})
  end
end
