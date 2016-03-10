require "pry"

# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
$players = [] #global variable
deck = [
  {rank: "A", suit: "Hearts", worth: 12}
]


def build_deck(ranks, suits)
  # build deck
    # initialize an empty deck
    deck = []
    # loop through ranks
      # .each with index --> to pull the worth of a card using the index placement
      ranks.each_with_index do |rank, index|
        suits.each do |suit|
      # loop through suits
        # push each pair into the deck
        card = {
          suit: suit,
          rank: rank,
          worth: index
        }

        deck << card # push card into deck array
        end
      end
    # shuffle the deck
        return deck.shuffle
        end
def choose_players
  # prompt user to enter name
    # or enter play
      #take each player entered
        # add to our players array
  while true do
      puts "Welcome. Enter your name or press 'p' to play."
      player_name = gets.chomp.downcase # working with strings
      break if player_name == "p"
      $players << player_name
  end
end

# deal out hands
def deal_hands
end
# find a winner
def find_winner
end

deck = build_deck(ranks, suits)
choose_players
binding.pry
puts "stupid pry bug"
