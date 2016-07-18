# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = []
ranks.each do |val|
  suits.each do |suit|
    cards << "#{val}, #{suit}"
  end
end

cards_shuf = cards.shuffle

players = []
puts "#{players.length} players so far. Enter name of player one:"
name1 = gets.chomp
players.push(name1)
while players.length < 2
  puts "Thanks, " + name1 + ". Please enter name of player two:"
  name2 = gets.chomp
  players.push(name2)
end

puts "Ok " + name1 + " & " + name2 + ", enter 'play' to begin:"
play = gets.chomp
if play == "play"
  hand1 = cards_shuf.pop
  hand2 = cards_shuf.pop
  puts "Player " + name1 + " gets card: " + hand1
  puts "Player " + name2 + " gets card: " + hand2
end

if hand1 > hand2
  puts name1 + " is the winner!"
elsif hand1 < hand2
  puts name2 + " is the winner!"
else
  puts name1 + " and " + name2 + " tied!"
end
