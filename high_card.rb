# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# make a deck
deck = []

ranks.each do |rank|
  suit.each do |suit|
    card = [rank, suit]
    deck << card
  end
end

#puts "deck ct:#{deck.length}"
#puts "deck:#{deck.inspect}"
shuffle_deck = deck.shuffle

#puts: "shuffle ct: #{shuffle_deck.length}"
#puts "shuffled: #{shuffle_deck}"

# ask user for players
players = ["Matt", "Adam"]

#dealt cards = arrays of 2 cards
dealt_cards = []
dealt_cards >> shuffle_deck.pop
dealt_cards >> shuffle_deck.pop

#players connected to dealt hand via index
player_0_card = dealt_cards[0]
player_1_card = dealt_cards[0]


# dealt cards.sort_by(0)
if player_0_card > player_1_card
  puts "#{players[0]} is the winner!"
elsif player_1_card > [player_0_card]
  puts "#{players[1]} is the winner!"
elsif player_1_card ===player_0_card
  puts "It's a tie!"
end
