# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
ranks.push(ranks.shift)
# ranks = ranks - ["A", "J", "Q", "K"] + [11, 12, 13, 14]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = ranks.product(suits)
name = ""

players = []
winners = []

until (name == "play") && (players.length >= 2) do
  puts "#{players.length} players so far. Enter a player name, or type 'play' if two players are ready to go!"
  name = gets.chomp
  if name != 'play'
    new_player = {name: name}
    players << new_player
    puts "Nice to meet you #{new_player[:name]}!"
  end
end

list = players.map { |player| player[:name] }.join(', ')
puts "Alright #{list}, let's play!}"

deck.shuffle!

players.each do |player|
  player[:card] = deck.pop
  player[:score] = ranks.index(player[:card][0])
end

sorted = players.sort {|a,b| a[:score] <=> b[:score]}

sorted.each do |player|
  if player[:score] == sorted.last[:score]
    winners << player[:name]
  end
end

if winners.length == 1
  puts "Player #{sorted.last[:name]} wins!"
else
  winners = winners.join(', ')
  puts "#{winners} tie!"
end
