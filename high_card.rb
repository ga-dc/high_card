require "pry"
# Change ranks, suits, and players to constants
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"] #changed the order to reflect aces high
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
PLAYERS = []
DECK = []
HANDS = []

def build_deck(ranks, suits)
  # Combine two arrays into a shuffled deck of cards
    RANKS.each_with_index do |rank, value|
      SUITS.each do |suit|
        #create a card as a hash, using rank, index, and suit
        card = {
          rank: rank,
          suit: suit,
          value: value
        }
        # push the card to the deck array
        DECK << card
      end
    end
    #shuffle the resulting deck
  DECK.shuffle
end

def get_players
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

# deal a card to each player, which will be that player's hand
def deal_cards
  hands = []
  PLAYERS.each do |player|
    player_card = {
      player: player,
      card: DECK.pop
    }
    HANDS << player_card
  end
end

# check the hands array for the highest card value
def get_winner
  winning_hand = HANDS.max_by do |hand| #had to get help to figure this out
    hand[:card][:value]
  end
  return winning_hand
end

def play_game
  build_deck(RANKS, SUITS)
  get_players
  deal_cards
  winner = get_winner
  puts "The winner is #{winner[:player][:name]}"
end

play_game

binding.pry

puts "end of program"
