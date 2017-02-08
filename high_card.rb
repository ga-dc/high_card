require "pry"
# Use these two arrays to generate a deck of cards.
class Game
  attr_accessor :ranks, :suits, :deck, :players

  def initialize
    # Reordered ranks in terms of their value to compare later and determine winner
    @ranks = [ 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    @suits = [ "hearts", "spades", "clubs", "diamonds" ]
    @deck = []
    @players = []
    self.make_deck
  end

  def prompt
    p "#{self.players.length} players so far. Enter a player name, or type 'play' or 'quit'"
  end

  def make_deck
    # Used each_with_index to pull index of the card rank to compare later
    self.ranks.each_with_index do |card, val|
      for i in self.suits do
        # turned each card into a hash with a value, rank and suit
        self.deck.push({
            value: val,
            rank: card,
            suit: i
          })
      end
    end
    # shuffles the deck
    self.deck.shuffle!
  end
  # method to be called when game is ready to be played
  def play_game
    i = 0
    # loop which goes through each player and deals them a card from the beginning of the deck
    for player in self.players do
      # card given to other player as a hash
      player[:card] = self.deck[i]
      puts player
      i += 1
    end
    # calls the method to compare cards
    self.compare_cards
  end

  def compare_cards
    # sorts players from highest value to lowest
    player_ranking = self.players.sort {|x, y| y[:card][:value] <=> x[:card][:value]}
    puts player_ranking
    winners = [player_ranking[0][:name]]
    i = 1
    # creating winners group in case there is a tie
    while player_ranking[0][:card][:value] == player_ranking[i][:card][:value]
      winners << player_ranking[i][:name]
    end
    if winners.length > 1
      puts "It's a tie between #{winners}!"
    else
      puts "The winner is #{winners}!"
    end
  end
end

high_card = Game.new
# initial prompt to get the game going
while true
  high_card.prompt
  user_input = gets.chomp
  break if user_input == "quit"
  if user_input == "play"
    high_card.play_game
    break
  end
  high_card.players << {name: user_input}
end





binding.pry
