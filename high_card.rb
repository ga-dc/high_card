# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)

deck.shuffle

puts "Enter player name:"
  user_inputs = gets.chomp.to_s

players.push(user_inputs)

 #  def getPlayer
 #    @players << user_inputs
 # end
puts "player name: #{players}"



# user_inputs = gets.chomp.to_s
# puts "players.push#{user_inputs}"
