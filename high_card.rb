# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
deck = []

ranks.each do |rnk|
  suits.each do |sut|
    deck << [rnk,sut]
  end
end

puts "#{players.length} So far,  \n  Enter a name or type 'p' to play"
choice = gets.chomp

puts deck.shuffle[3]
puts deck[3]
