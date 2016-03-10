require "pry"
# Change ranks, suits, and players to constants
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"] #changed the order to reflect aces high
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
PLAYERS = []

def build_deck(ranks, suits)
  # Combine two arrays into a shuffled deck of cards
  # Create an empty deck array
  deck = []
    RANKS.each_with_index do |rank, value|
      SUITS.each do |suit|
        #create a card as a hash, using rank, index, and suit
        card = {
          rank: rank,
          suit: suit,
          value: value
        }
        # push the card to the deck array
        deck << card
      end
    end
    #shuffle the resulting deck
  deck.shuffle
end

def choose_players
  # keep asking for players until the game is done
  while true
    puts "#{PLAYERS.length} players so far. Enter a player name or type 'play' to begin."
    name = gets.chomp.downcase
    # if the player enters "play", exit the loop
    break if name == "play"
    player = {name: name}
    PLAYERS << player
  end
end

# assign a card to each player, which will be that player's hand
hands = PLAYERS.map do |player|
  deck.pop
end





binding.pry

puts "end of program"
