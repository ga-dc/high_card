# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
pair = []

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
  player_hash[:card]=[]
  puts player_hash
end

puts "Type 'play' to start playing"
input = gets.chomp
if input == "play"
  deck.shuffle.each do |random_card|
  players.each do |player|
    player[:card] << random_card  
  end
  puts players
end

end
# else
#   deck.shuffle.each do
