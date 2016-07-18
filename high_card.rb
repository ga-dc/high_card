# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

players = []

# create deck
ranks.each do |rank|
  suits.each do |suit|
    deck << [rank, suit]
  end
end

# get players
while true
  puts "#{players.length} so far. Enter a player name, or type 'play':"
  name = gets.chomp

  break if name == "play"
  players.push(name)
end

# give each player a card
for player in players do
  # give them a card from the shuffled deck
  users_card = deck.shuffle.pop()
end
