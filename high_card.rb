# Use these two arrays to generate a deck of cards.
ranks = %w{"A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" }
suits = %w{"hearts", "spades", "clubs", "diamonds" }
suits.each do |suit|
  ranks.size.times do |i|
players = []
