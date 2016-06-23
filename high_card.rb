require_relative "classes"
game = Game.new

deck = []
shuffled_deck = []
number_of_players = 0
players = []
cards_to_deal = 0
high_cards = []

deck = game.build_deck
shuffled_deck = game.shuffle_deck(deck)
cards_to_deal = game.deal_cards(shuffled_deck)

high_cards = game.find_highest_card(cards_to_deal)

# FInd highest card
# Announce winners
# Play a new game
puts "Program Executed Successfully!!!"
