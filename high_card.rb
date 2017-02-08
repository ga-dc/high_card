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
    players << {"name": userIn, "card": []}
  end
end

index = 0
players.each do |player|
  player[:card] = deck[index]
  if player[:card] == 'A'
    player[:card][1] = 14
  elsif player[:card] == 'K'
    player[:card][1] = 13
  elsif player[:card] == 'Q'
    player[:card][1] = 12
  elsif player[:card] == 'J'
    player[:card][1] = 11
  end
  index += 1
end


winning_player = ""

index = 1
while index < players.length
  if players[index][:card][1] > players[index - 1][:card][1]
    winning_player = players[index]
  else
    winning_player = players[index - 1]
  end
  index += 1
end

puts "The winning player is #{winning_player[:name]}, with a #{winning_player[:card][0]} of #{winning_player[:card][1]}!"
