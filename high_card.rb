ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "♥", "♠", "♣", "♦" ]
deck = []
shuffled_deck = []
number_of_players = 0
players = []

def welcome_players()
  puts "Welcome to High Card!!!"
  puts "How many players??? (Enter a number between 2 and 5)"
  number_of_players = gets.chomp.to_i
  return number_of_players
end

number_of_players = welcome_players()
# puts number_of_players

def add_players(number_of_players)
  #create a loop to ask for the players name so they may be placed in an array
  i = 1
  num = number_of_players.to_i
    while i < num  do
      puts "Enter Player #{i}"
      player = gets.chomp.to_s
      players << player
      i +=1
    end
end
  add_players(number_of_players)
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

def start_game()
  puts "There will be #{number_of_players} Players"
  def get_players(number_of_players)
  #create a loop to ask for the players name so they may be placed in an array
  i = 1
  num = number_of_players.to_i
    while i < num  do
      puts "Enter Player #{i}"
      player = gets.chomp.to_s
      players << player
      i +=1
    end
  end
  return players
end

# deck = build_deck(ranks,suits)
# shuffle_deck(deck)
# players = start_game()
# puts "=========="
# puts players

# Get more players
# Deal cards
# FInd highest card
# Announce winners
# Play a new game
puts "Program Executed Successfully!!!"
