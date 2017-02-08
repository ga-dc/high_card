# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

ranks.each do |rank|
  suits.each do |suit|
    card = []
    card.push(rank)
    card.push(suit)
    deck.push(card)
  end
end

deck.shuffle!

puts "No players so far. Enter a player name:"
name = gets.chomp
while name != "play"
  new_player = {name: name, card: []}
  players.push(new_player)
  name = gets.chomp
end
puts "#{players.length} total players. Dealing cards..."

#'deals' cards to players
players.each_with_index do |player, index|
  player[:card] = deck[index]
  if player[:card][0] == 'A'
    player[:card][0] = 14
  end
  if player[:card][0] == 'K'
    player[:card][0] = 13
  end
  if player[:card][0] == 'Q'
    player[:card][0] = 12
  end
  if player[:card][0] == 'J'
    player[:card][0] = 11
  end
end

puts players

winners = []
isRank = 14

while winners.length == 0
  players.each do |player|
    if player[:card][0] == isRank
      winners.push(player)
    end
  end
  isRank -= 1
end

puts "Winner(s): #{winners}"
