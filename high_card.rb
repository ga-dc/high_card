# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]



players = []

deck = ranks.product(suits).shuffle!
p deck

#cards = deck.each {|card| p card}

puts "How many Players?"


player_num = gets.chomp.to_i



 player_num.times do
 puts "Would you like to play? Enter your name:"

 names = gets.chomp

   players << {name: names}

puts "hello #{names}"
puts players

end


puts "Let's play, ready to play-yes or no:"

play = gets.chomp


if play == "yes"

   p players




     winners = []
    # new_card =[]


    # new_card = cards.push(players[index])
    cards = players.map do |player|
     deck.pop

     players_hand = ranks.index(player[:card])



      house = players.map{|player|  players_hand}

      win = house.max

     if  players_hand == win

       winners.push(players)

     end
   end
      else
        puts "it's a draw"
      end
