require_relative "classes"
game = Game.new
puts game.players
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "♥", "♠", "♣", "♦" ]
deck = []
shuffled_deck = []
number_of_players = 0
players = []

deck = game.build_deck(ranks,suits)
shuffled_deck = game.shuffle_deck(deck)
puts shuffled_deck


# Deal cards
# FInd highest card
# Announce winners
# Play a new game
puts "Program Executed Successfully!!!"
