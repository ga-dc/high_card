# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
player = ""
players = []
#add a weight variable so that there are no ties. suits will have a weight.
# clubs < diamonds < hearts < spades
weight = 0
ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck.push({value: rank, suit: suit, weight: weight})
    weight += 1
  end
end

deck.shuffle!

until player == "play"
  puts "#{players.length} players so far. Enter a player name or type 'play':"
  player = gets.chomp
  players.push(player)
end
players.pop

game = []
players.each do |player|
  game.push({player: player, card: deck.pop})
end
winner = game.max_by do |player|
  player[:card][:weight]
end

puts "The winner is " + winner[:player] + " with the " + winner[:card][:value] + " of " + winner[:card][:suit]
