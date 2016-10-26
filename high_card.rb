# Use these two arrays to generate a deck of cards.

ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K","A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
players = []


ranks.each_with_index do |rank,i|
 suits.each do |suit|
   # deck.push([rank,suit])
   deck << [suit,rank,i]
 end
end
deck.shuffle!


index=0
loop do
puts " #{players.length} players so far.Enter a player name, or type 'play':"
players_name = gets.chomp
break if players_name == "play"
players <<  {name:players_name, card:deck[index]}
index +=1
end

puts players

winner = players.max_by {|player| player[:card][2]}
 puts "winner is #{winner}"
