# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push"#{rank} of #{suit}"
  end
end

puts deck.shuffle

puts "Enter Player 1 Name"
  name1 = gets.chomp
    puts "Hello " + name1

puts "Enter Player 2 Name"
  name2 = gets.chomp
    puts "Hello " + name2

player_names = [gets]
  player_names.push("name1", "name2")



# winner - puts "The winner is " + winner_name
