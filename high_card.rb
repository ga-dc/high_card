# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each_with_index do |rank,i|
  suits.each do |suit|
    card = [rank,i,suit]
    deck.push(card)
  end
end

deck.shuffle!
puts deck.inspect

loop do
  puts "#{players.length} players so far. Enter a player name or type 'play':"
  response = gets.chomp
  if response == "play"
    break
  else
    players.push(response)
  end
end

plays = []
i=0
until plays.length == players.length
  plays.push(deck[i])
  i+= 1
end
puts plays.inspect



#players.each_with_index do |player, i|
