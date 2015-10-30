
puts "Player 1, what is your name? #{input = playerOneName}"
puts "Player 2, what is your name? #{input = playerTwoName}"

suit = [clubs, diamonds, hearts, spades]

rank = rank.new
%w(ace king queen jack).each_with_index {|item, index|
  rank[item] = index
}

rank  #=> {"ace"=>14, "king"=>13, "queen"=>12, "jack==>11"}
rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace]

def play ()
  cardOne = rank[rand]
  cardTwo = rank[rand]
  puts "playerOneName" + ", you were dealt the  + "cardOne + " of " + suit[rand] + "."
  puts "playerTwoName" + ", you were dealt the '' + "cardTwo + " of " + suit[rand] + "."
  if cardOne > cardTwo
    puts "playerOneName" + ", you win!"
  elsif cardOne = cardTwo
    puts "It's a tie between " + "playerOneName" + "and " + "playerTwoName"
  else
    puts "playerTwoName" + ", you win!"
  puts "Thanks for playing High Card!"
