# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each_with_index do |rank,index|
  suits.each do |suit|
    card = {rank:rank,val:index,suit:suit}
    deck.push(card)
  end
end
deck.shuffle!

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
  plays.push(deck.pop)
  i += 1
end

max = plays.map{|play| play[:val]}.max

winners = []

plays.each_with_index do |play, index|
  if play[:val] == max
    winners.push(players[index])
  end
end

puts plays.inspect

if winners.length > 1
  puts "Tie between: #{winners.join(', ')}"
else
  puts "Winner: #{winners.join}"
end
