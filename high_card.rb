require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players=[]

def build_deck(ranks, suits)
  # build a deck
    # initialize an empty deck
    deck = []
    # loop through ranks
      # .each with index -> to pull the worth of a card
        ranks.each_with_index do |rank, index|
          suits.each do |suit|
            # loops suits
              # push each pair into the deck
              card = {
                suit: suit,
                rank: rank,
                worth: index
              }
              deck << card
          end
        end
      # shuffle the deck
    return deck.shuffle
end

deck = build_deck(ranks, suits)


# get player names

def choose_players
  players = []
  # prompt user to enter name or enter 'play'
    # take each player entered and add to players []
  while true do
    puts "#{players.length} so far. Enter a player name or type 'p' to play. "
    name = gets.chomp.downcase

  break if name == "p"
  $players << name

  end
end

# deal hands
def deal_cards(deck)
  hands = []
  players.each do |player|
    hand = {
      player: player;
      card: deck.shift
    }
    hands << hand
  end
end

# Find winners: write a fxn to find max card
def determine_winner(hands)
  winning_hand = hands.max_by do |hand|
    hand[:card][:worth]
  end
  return winning_hand
end




binding.pry
puts "fuck off"
