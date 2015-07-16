# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deckOfCards = []
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deckOfCards.push ({rank: rank, suit: suit, pointValue: index})
  end
end
deckOfCards.shuffle!
players = []
userInput = nil
loop do
  puts "#{players.length} players so far. Enter a player name or type 'play':"
  userInput = gets.chomp
  if userInput == "play" && players.length >= 2
    break
  end
  if userInput == "play"
    puts "Sorry you don't have enough players"
  else
    players.push({name: userInput, card: nil})
  end
end
players.each do |player|
  player[:card] = deckOfCards.pop
end
players.each do |i|
  puts "#{i[:name]} has a #{i[:card][:rank]} of #{i[:card][:suit]}"
end
winningPlayer = players.max_by { |x| x[:card][:pointValue]}
# winningNumber = winningPlayer[:card][:pointValue].to_i
# puts winningNumber.inspect
# players.each do |i|
#   if i[:card][:pointValue] < winningNumber
#     players.delete_at(players.index(i))
#   end
# end
# puts players
# if players.length > 1
#   puts "Tie Game between #{players[0][:name]} and #{players[1][:name]}"
# else
puts "Winner is #{winningPlayer[:name]} with #{winningPlayer[:card][:rank]} of #{winningPlayer[:card][:suit]}"
# end
