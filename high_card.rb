ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []
while players.length < 2
puts "Player #{players.length + 1}, what is your name?"
name = gets.chomp
players.push(name)
end


ranks.each do |rank|
suits.each do |suit|
deck.push({
  rank: rank,
  card: rank.to_s + " of " + suit
  })
end
end
