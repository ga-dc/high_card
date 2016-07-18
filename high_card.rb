Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

big_daddy = []

ranks.each do |rank|
  suits.each do |suit|
    # puts "#{rank} #{suit}"
    deck = []
    deck.push(rank)
    deck.push(suit)
    puts deck.join(", ")

    big_daddy.push(deck)
  end
end

puts big_daddy.join(", ")

puts "Big Daddy Shuffle: " + big_daddy.shuffle.to_s
