require "pry"

# Use these two arrays to generate a deck of cards.
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]
$deck = []
# $hands = {}
$players = []

def build_deck(ranks,suits)
  # loop through ranks
  RANKS.each_with_index do |rank, index|
    # loop suits
    SUITS.each do |suit|
      # build card hash that's dynamically built after going through the loop
      card = {
        suit: suit,
        rank: rank,
        worth: index
      }
      #push each pair into the deck
      $deck << card
    end
  end
  # shuffle the deck
  return $deck.shuffle
end

def get_players
  # prompt user to enter name or enter play
  while true do
    p "Welcome! #{$players.length} players so far. Enter a player name, or type 'p' to play:"
    name = gets.chomp.downcase #working with strings
    # break if 'p' to stop it from being pushed into the $players array
    break if name == "p"
    # push the player entered into the $players array
    $players << name
  end
end

#this pushes a card from the deck array into the players array
def deal(deck)
  hands = []
  $players.each do |player|
    hand = {
      player: player,
      card: deck.shift
    }
    #push each hand into the hand array
    hands << hand
  end
  hands
end

#loop to find the highest card
def highest_card(hands)
  winning_hand = hands.max_by do |hand|
    hand[:card][:worth]
  end
  winning_hand[:]
  #return winning hand
  winning_hand
end

def play_game
  while true do
    get_players

    game_deck = build_deck(RANKS,SUITS)
    p "Building the deck now..."

    player_hands = deal(game_deck)
    player_hands.map{|k,v| "#{k}=#{v}"}.join('&')
    p "Dealing the cards: #{player_hands}"

    winner = highest_card(player_hands)
    p "The winner is #{winner[:player]}! If you'd like to play again, type 'p' now."
    play_again = gets.chomp.downcase
    break unless play_again == "p"
  end
end

play_game

binding.pry

p "google all the things"
