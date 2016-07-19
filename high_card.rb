# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

#gets shuffled deck
shuffled_deck = []
ranks.each_with_index do |rank, score|
  suits each do |suit|
    shuffled_deck.push(score, rank, value)
  end
end

#gets the two players
highrollers = []
puts "Enter your name highroller1"
highroller1 = gets.chomp
highrollers.push(highroller1)
while highrollers.length < 2
  puts "Please enter your name highroller2"
  highroller2 = gets.chomp
  highrollers.push(highroller2)
end
