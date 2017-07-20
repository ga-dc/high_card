# Use these two arrays to generate a deck of cards.

#Build a deck of shuffle cards with mini-arrays with a rank and suits
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"].rotate(1)
#end
suits = [ "hearts", "spades", "clubs", "diamonds" ].shuffle.each_with_index do |value, index|

end

cards = ranks.product(suits)

players = []
player = nil
 while player != "play"
   n = players.length
   puts"#{n} players so far. Enter a player or type play."
   players.push({name: player})
   player = gets.chomp
 end

 puts "#{n} players currently playing"

players.each do |player|
  player[:card] = cards.shuffle.pop
  player[:score] = ranks.index(player[:card][0])
end

player_cards = players.map do |player|
  player[:score] = ranks.index(player[:card][0])
end

high_card = player_cards.max


winner = players.select {|player| player[:card][0] == ranks[high_card]}


puts winner
