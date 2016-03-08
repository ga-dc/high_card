require "pry"
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = []
players = []
hands = []

# building the deck with each card as a mini-array
ranks.each_with_index do |rank, index|
  suits.each do |suit|
    deck << {:rank => rank, :suit => suit, :index => index}
  end
end

deck.shuffle!

# getting player names and pushing into players array
print "#{players.length} players so far. Enter a player name, or type 'play':"
player_name = gets.chomp.capitalize
players << player_name until player_name == "play"

# pop players.length cards to hands array
if player_name == "play"
  card = deck.pop()
  players.length.times do
  hands << card
end
























binding.pry
