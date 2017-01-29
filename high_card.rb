ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)
# ^ pair together elements in 'ranks' and 'suits' arrays
deck_shuffled = deck.shuffle
# ^ shuffle pairs

puts "Enter first player's name, or type 'play' to immediately start the game with two players"
userInput = gets.chomp
players.push(userInput)
  if userInput != 'play'
      puts "Enter second player's name"
        userInput = gets.chomp
        players.push(userInput)
  else userInput == 'play'
     userInput.clear
     # ^ remove 'play', the userInput that was pushed into the array
     players.insert(0 , "Player 1")
     players.insert(1 , "Player 2")
     # ^ push player names into specific index positions since .clear retains [0] with empty value
  end

card_1 = deck_shuffled[0].inspect
card_2 = deck_shuffled[1].inspect

# 6 of spades[0] beat 10 of hearts[1]
# 9 of spades[1] beat King of diamonds[0]
# is one issue that integer is beating string in each card pair? [8, "hearts"] [Queen, hearts]

puts players[0] + ": " + card_1
puts players[1] + ": " + card_2

if card_1 > card_2
  puts players[0] + " " + "wins!"
elsif card_1 < card_2
  puts players[1] + " " + "wins!"
else card_1 == card_2
  puts "It's a tie between " + players[0] + " and " + players[1] + "!"
end
