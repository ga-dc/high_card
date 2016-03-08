require "pry"
#Use these two arrays to generate a deck of cards.
#capitalize so they are constant and won't change
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
# '$' makes players a global variable
$players = []
# {rank: "A", suit: "Hearts", worth: 12}
# deck << card

def build_deck(ranks, suits)
#build a deck
  #initialize an empty deck
  deck = []
  #loop through ranks
    #.each with index -> to pull the worth of the card
      #second block variable represents the index of each iteration
    ranks.each_with_index do |rank, index|
      #don't care about index for suits
      suits.each do |suit|
    #loop suits
      #push each pair into the deck
        card = {
          suit: suit,
          rank: rank,
          worth: index
        }
        deck << card
      end
    end
    #shuffle the deck
    return deck.shuffle
end

def choose_players
  while true do
    #prompt user to enter name or press play
    puts "Welcome! Enter your name or press 'p' to play."
    # get user value
    # chomp gives you only what was entered
    name = gets.chomp.downcase # working with strings
    break if name == 'p'
    # add names entered to players array
    $players << name
  end
end

def deal_cards
  #deal a card to each player after they press 'p'
  game = []
  @players.each do |player|
    # get each player and card to make a hand
    hand = { player: player,
        card: deck.pop
    }
    # push the hand into the array game
    game << hand
  end
end

def highest_score

end

def find_winner

end

#save output of method to a variable
deck = build_deck(ranks, suits)
choose_players
deal_cards
binding.pry
#fixes pry error
puts "high card"
