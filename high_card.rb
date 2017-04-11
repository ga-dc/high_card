# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]  #switched order b/c "A" needs to be the high card.
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

#this pulls each rank of card, along with it's index in the array, and each suit, and pushes all of it into the deck array.  each card (#rank) is pushed for EACH suit, which is how you get all four suits per card.
ranks.each_with_index do |rank| #you need to include the index, because otherwise you won't know which card is "higher" than another once you get into face cards and Ace.
  suits.each do |suit|
    deck << [rank, suit]
  end
end
puts deck.shuffle
#deck is shuffled, but am unable to get it to print in array form [8, "hearts"].  does print that way in the repl.
