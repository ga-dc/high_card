# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
suits.each do |suit|
  ranks.each do |rank|
    card = []
    card.push(rank)
    card.push(suit)
    deck.push(card)
  end
end

deck = deck.shuffle

players = []
userIn = ""

while userIn != "play"
  puts "#{players.length} players so far. Enter a player name, or type 'play':"
  userIn = gets.chomp
  if userIn != "play"
    players.push(userIn)
  end
end
puts players

players.each do |player|
  players[:player] = deck.sample
end

puts players
