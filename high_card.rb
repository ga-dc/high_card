# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
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

players << user_input
puts players

# index = 0
# loop do
#   deck.each{|player|}
# end

index = 0
until index == 0
deck.each{|player|}
index +=1
end


# Play DealCard
#find the highest card dealt
#highest card == Ace, K, Q, J, 10, 9, 8, 7, 6, 5, 4, 3, 2
#puts winning player #{name}
#winning player == highest card
#Winner(s): {name}
#(suits => {
  #return deck;
  #})
