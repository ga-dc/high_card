# Use these two arrays to generate a deck of cards.

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
cards = []
suits.each do |suit|
  ranks.each_with_index do |rank, index|
  cards.push({
    suit: suit,
    rank: rank,
    value: index+1
    })
  end
end
shuffled_deck = cards.shuffle
puts shuffled_deck

players = []
loop do
  puts "Enter a player's name or type 'play' to start"
  user_input = gets.chomp
  break if user_input == "play"
  players.push(user_input)
end


deal = players.map.with_index do |player, i|
 [player, shuffled_deck[i]]
 puts deal
end
