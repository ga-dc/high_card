require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
players = []
hands = []

# building the deck with each card as a hash
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    card = {
      rank: rank,
      index: index,
      suit: suit,
    }
    deck << card
  end
end

#shuffling the deck
deck.shuffle!

# getting player names and pushing into players array
print "#{players.length} players so far. Enter a player name, or type 'play':"
player_name = nil
until player_name == "play"
  player_name = gets.chomp
  if player_name != "play"
    players << player_name
  end
end

# dealing out a random card to each player
players.each do |player|
  # pulls a random card from deck array
  player_card = deck.sample
  # pushes pulled card into hands array
  hands << player_card
  # removes the card from deck array so the same card can't be dealt again
  deck = deck - [player_card]
  # returns dealt card
  player_card
end


























binding.pry
