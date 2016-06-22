ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "♥", "♠", "♣", "♦" ]
deck = []
shuffled_deck = []
players = []

def build_deck(ranks, suits)
  fulldeck = []
  ranks.each do |rank|
    suits.each do |suit|
      card = [rank, suit]
      fulldeck << card
    end
  end
  return fulldeck
end

def shuffle_deck(deck)
  shuffled_deck = deck.shuffle
  # puts "========== Begin Deck =========="
  # puts shuffled_deck
  # puts "========== End Deck =========="
end

deck = build_deck(ranks,suits)
shuffle_deck(deck)

puts "Welcome to High Card!!!"
puts "How many players??? (Enter a number between 2 and 5)"
number_of_players = gets.chomp.to_i
puts "There will be #{number_of_players} Players"

#create a loop to ask for the players name so they may be placed in an array

puts "Program Executed Successfully!!!"
