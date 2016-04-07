# Use these two arrays to generate a deck of cards
  ranks = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  suits = %w(hearts spades clubs diamonds)
  deck = []

ranks.each do |rank|
  suits.each do |suit|
    deck.push [rank, suit]
  end
end

puts deck.shuffle
