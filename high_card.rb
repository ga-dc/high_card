# Use these two arrays to generate a deck of cards.
rranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]



players = []

deck = ranks.product(suits).shuffle!
p deck

cards = deck.each {|card| p card}

puts "How many Players?"


player_num = $stdin.gets.to_i



 player_num.times do
 puts "Would you like to play? Enter your name:"

    names = $stdin.gets.chomp




 players = [:name]



   players << names.to_s

 #  players.merge!(name:  #{names} )



puts "hello #{names}"
puts players

end

puts "Let's play, ready to play-yes or no:"

play = $stdin.gets.chomp
puts "Let's play, ready to play-yes or no:"

play = $stdin.gets.chomp
