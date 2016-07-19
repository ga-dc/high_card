ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
card = []
players = []


ranks.each do |rank|
  suits.each do |suit|

    card = ["#{rank} #{suit}"]
    deck.push(card)
  end
end

deck = deck.shuffle

  puts "0 players so far. Enter a player name."
  name = gets.chomp
while name != 'play'
  players.push(name)
  puts "#{players.length} players so far. Enter a player name, or type \'play\'"
  name = gets.chomp
end
puts "#{players.length} players declare War!!"

#    handA = [deck.pop[card.to_s]]
#   handB = [deck.pop[card.to_s]]
#
#   puts player1 + " gets " + handA
#   puts player2 + " gets " + handB
# end
