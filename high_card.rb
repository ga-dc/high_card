# Use these two arrays to generate a deck of cards.
ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = []
#using the ice cream flavor example from class
ranks.each do |rank|
  suits.each do |suit|
    if rank == "A"
      rank = 14
    end
    cards << "#{rank}, #{suit}"
  end
end

cards_shuffle = cards.shuffle

players = []
puts "Enter name of player one:"
player1 = gets.chomp
players.push(player1)
while players.length < 2
  puts "Please enter name of player two:"
  player2 = gets.chomp
  players.push(player2)
end

puts player1 + " & " + player2 + ", enter 'deal' to begin:"
deal = gets.chomp
if deal == "deal"
  player1Hand = cards_shuffle.pop
  player2Hand = cards_shuffle.pop
  puts "Player " + player1 + " gets card: " + player1Hand
  puts "Player " + player2 + " gets card: " + player2Hand
  #could put if case for face cards here, but seems very inefficient
end

if player1Hand > player2Hand
  puts player1 + " is the winner!"
elsif player1Hand < player2Hand
  puts player2 + " is the winner!"
else
  puts player1 + " and " + player2 + " tied!"
end
