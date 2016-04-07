# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
face_up_on_the_table = []
players = []

ranks.length.times do |rank_inc|
  suits.length.times do |suit_inc|
    deck.push({rank: ranks[rank_inc], suit: suits[suit_inc]})
  end
end
