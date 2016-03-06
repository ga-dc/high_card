# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
player = ""
players = []

ranks.each_with_index do |rank, i|
  suits.each do |suit|
    deck.push({value: rank, suit: suit, weight: i})
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

  puts "The winner is: " + winner[:player]
