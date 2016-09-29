# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
pair = []
num=[]
players = []

ranks.each do |rank|
  suits.each do |suit|
    pair = [rank,suit]
    puts pair.inspect
    deck << pair

  end
end
loop do
puts " #{players.length} players now. Enter a player name "
user_input = gets.chomp
player_hash = {name: user_input}
    players << player_hash
break if players.length == 2
    puts players

end
players.each do |player_hash|
  player_hash[:card]= deck.sample
end

puts "Type 'play' to start playing"
input = gets.chomp
if input == "play"
  puts players
  players.each do |player|
    num.push(player[:card][0])
    puts num.inspect
    end
# compare the index value
# loop through the rank array and find the corresponding index value.
# the card with higher index value wins
  end
