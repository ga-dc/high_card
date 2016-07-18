# Use these two arrays to generate a deck of cards.

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = []
ranks.each do |rank|
  suits.each do |suit|
    cards << "#{rank}, #{suit}"
  end
end


cards_shuffle = cards.shuffle

players = []
puts "'#{players.length}' players so far. Enter player one:"
name1 = gets.chomp
players.push(name1)
while players.length < 2
puts 'Please add name of player 2:'
name2 = gets.chomp
players.push(name2)
end


puts 'Please enter play:'
play = gets.chomp
if play = 'play'
puts hand1 = cards_shuffle.pop
puts hand2 = cards_shuffle.pop
puts name1 + " gets " + hand1 + " card."
puts name2 + " gets " + hand2 + " card."
end

if hand1 < hand2
  puts name2 + "wins!"
elsif hand2 < hand1
  puts name1 + "wins!"
else
  puts name1 + name2 + " tied!"
end
