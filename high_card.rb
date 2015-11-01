# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

# players = []
deck = []
# create an empty array to put the deck in
# # push each rank and suit combination into a card array and push each card array into the deck array
# ranks.map do |rank|
#   # rank = "#{ranks}"
#   # print rank
#   suits.each_with_index do |suit|
#     # suit = "#{suits}"
#
#     card.map("#{rank},#{suit}")
#     puts card
#   end
#
#   #   puts deck.push(card)
#   # end
# end
# # puts deck
# hash = Hash.new



# ranks.each_with_index do |rank, suit|
#
#   card = ("#{suit}, #{rank}, #{suits}")
#   puts card
# end
suits.each do |suit|
  # suit = "#{suits}"
  thisSuit = "#{suit}"
  ranks.each_with_index do |rank, index|
    card =  ["#{rank}, #{thisSuit}"]
    # puts card
    deck.push(card)
  end
end
puts deck
