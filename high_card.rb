# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []

players = []

#create card decck
suits.each do |suit|
  ranks.each do |rank|
    deck << [suit, rank]
  end
end

puts deck


#accept player names
puts "Enter player names:"
user_input = gets.chomp
players.push(user_input)
puts players
