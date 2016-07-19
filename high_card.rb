# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

#gets shuffled deck
deck = []
ranks.each_with_index do |rank, score|
  suits each do |suit|
    deck.push(score, rank, value)
  end
end

shuffled_deck = deck.shuffle

#gets the two players
highrollers = []
puts 'Enter your name highroller1'
highroller1 = gets.chomp
highrollers.push(highroller1)
while highrollers.length < 2
  puts 'Please enter your name highroller2'
  highroller2 = gets.chomp
  highrollers.push(highroller2)
end


#I had to stop here...kind of got myself twisted and need to go back and check my errors, not enough time!! Will revisit and go over
