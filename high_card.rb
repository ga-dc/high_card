# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
players = []

deck = []

deck = ranks.product(suits)
 puts deck.shuffle












# puts each_with_index = each_with_index.shuffle
# # #This method returns an array of the shuffled elements.
# # 2
# # stack_of_cards = stack_of_cards.shuffle
# # 3
# #
# # 4
# # #This method shuffle it in place - what I would do. :)
# # 5
# # stack_of_cards.shuffle!
