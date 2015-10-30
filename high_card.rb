# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

  ranks.each_with_index do |r, i|
    suits.each do |suit|
      deck.push({ ranks: r, suits: suit, })
    end
  end
end

  deck.shuffle

players = []
