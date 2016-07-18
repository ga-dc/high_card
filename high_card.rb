# Use these two arrays to generate a deck of cards.

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

cards = []
ranks.each do |rank|
  suits.each do |suit|
    cards << "#{rank}, #{suit}"
  end
end


cards_shuffle = cards.shuffle
puts cards_shuffle
