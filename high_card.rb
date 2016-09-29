# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each do |rank|
suits.each do |suit|
new_card = [rank,suit]
puts new_card.inspect  #Successfully generate playing deck of 52 cards
deck << new_card
deck.shuffle!
puts deck

puts "#{players.length} players so far.  Enter a player name, or type 'play':"
player_response = gets.chomp

players << player_response
end
end
