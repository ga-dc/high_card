require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
hands = []
players = []

deck = []
suits.each do |suit|
  ranks.each_with_index do |rank, index|
    deck.push({rank: rank, suit: suit, score: index})
  end
end

deck = deck.shuffle

puts "Enter a number of players."
moreP = gets.chomp
moreP.to_i.times do |i|
  players << "Player #{i+1}"
end

players.length.times do |i|
  hands.push({player: players[i], card: deck[i]})
end

#determine the winer
high_card = hands.max_by{|player| player[:card][:score]}

puts "#{high_card[:player]} wins!"

binding.pry
puts "End of file."
