# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
full_suits = []
full_deck = []
input = ""
player = ""
players = []
#
# puts ranks + "all ranks"
# puts suits + "all suits"
# puts "all card types noted"

ace = ranks.shift[0]
ordered_ranks = ranks.push(ace)
puts ordered_ranks

ordered_ranks.each do |rank|
  suits.each do |suit|
    full_deck << [rank, suit]
  end
end
#
# full_deck = ordered_ranks.product(suits)
puts full_deck.inspect

shuffled_deck = full_deck.shuffle
puts shuffled_deck.inspect
#
# while player != "play"
#   puts "input player name"
#   player = gets.chomp.to_s
#   if player == "play"
#     break
#   end
#   players << player
# end
# puts players

random_card = full_deck.sort_by { rand }
puts random_card.inspect
