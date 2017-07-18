# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []


suits.map do |suit|
  ranks.length.times do |rank|
    card = [ranks[rank], suit]
    deck.push(card)
  end
end

deck.shuffle!
# print deck
n = players.length
print "#{n} players so far. Enter a player name, or type 'play':"
loop do
  playerName = gets.chomp
  if playerName = "play"



if playerName != "play" do
  players.push({"name": playerName})
end

print players
