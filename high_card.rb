# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]#.each {|rank| puts rank}
suits = [ "hearts", "spades", "clubs", "diamonds" ]#.each {|suit| puts suit}
deck = []
players = []

ranks.each do |rank|
suits.each do |suit|
pair = [rank,suit]
puts pair.inspect
deck<<pair
end
end

deck.shuffle!
puts deck.inspect

puts "#{players.length}players so far. Enter a player name, or type 'play':"
user_input = gets.chomp

players << [:name,user_input]
puts players


#cards.shuffle

#(suits => {
  #return deck;
  #})
