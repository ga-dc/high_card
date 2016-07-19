ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
card = [[]]


ranks.each do |rank|
  suits.each do |suit|

    card = ["#{rank} #{suit}"]
    deck.push(card)
  end
end

deck = deck.shuffle

players = []

while players == []
  puts "0 players so far. Enter a player name, or type \'play\':"
  player1 = gets.chomp
  puts "1 players so far. Enter a player name, or type \'play\':"
  player2 = gets.chomp
  if players == 2
    puts player1 + " and " + player2 + ": Welcome! "
end
  handA = [deck.pop[card.to_s]]
  handB = [deck.pop[card.to_s]]

  puts player1 + " gets " + handA
  puts player2 + " gets " + handB
end
