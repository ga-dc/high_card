# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

ranks.each do |number|
  suits.each do |suit|
    deck = ("#{number} #{suit}")
    puts deck
  end
end






players = []
