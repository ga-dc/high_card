# A class that represents a high card game.
class Game
  attr_accessor :deck, :players

  def initialize
    @cards = []
    @deck = []
    @players = []
    @max_players = 4

    # Create a set of cards.
    generate_cards
  end

  # Generate a set of 52 cards.
  def generate_cards
    Card.suits.each do |suit|
      (1..13).each do |worth|
        @cards << Card.new(suit, worth)
      end
    end
  end

  # Initialize the deck with shuffled cards.
  def build_deck
    @deck = @cards.shuffle
  end

  def invite_players
    loop do
      # Print a welcoming message.
      puts "We have #{@players.size} players so far. Enter a player name, or type 'play':"

      # Read the user's input.
      user_input = gets.chomp

      # Validate the input.
      if user_input.downcase.include? 'play'
        if @players.size < 1
          puts "We need at least one player!"
          next
        else
          # Exit the loop.
          puts "Let's start!"
          break
        end
      end

      # Create a Player object.
      player = Player.new(user_input)

      # Push this player to the list.
      @players << player

      # Print a message to tell the user a player was successfully registered.
      puts "#{player.name} was successfully registered"

      # Check the capacity and if the capacity is reached, exit the loop.
      if full?
        puts "Max players: #{@max_players}. Let's start!"
        break
      end
    end
  end

  # Deals each player a card from the deck.
  # Returns a hash of player-id-to-card pairs
  def deal
    deal = {}
    @players.each { |p| deal[p.id] = @deck.pop }
    deal
  end

  # Judge the result of the deal hash.
  # @param deal {Hash<Number, Card>}
  # Returns the id of the winner; -1 if it is a tie.
  def get_winner(deal)
    # Find the id-card set that contains the highest-value card.
    highest = deal.max_by { |id, card| card.worth }

    # Count that highest value in the deal.
    count = deal.values.count { |card| card.worth == highest[1].worth }

    # If there are multiple cards with the highest value, we consider it a tie.
    if count == 1
      return highest[0] # The winner's id.
    else
      # puts "Tie"
      return -1 # Signifies a tie.
    end
  end

  # Give a score to the winner based on the deal and winner id.
  # Returns the score gained from this deal.
  def reward_winner(deal, winner_id)
    score = deal.values.reduce { |memo, card| card.worth }
    winner = Player.find(winner_id)
    winner.score += score
    score
  end

  def full?
    @players.size == @max_players
  end

  def print_cards
    @cards.each { |card| puts card.to_s }
  end

  def print_deck
    @deck.each { |card| puts card.to_s }
  end

  def print_current_scores
    sorted = @players.sort_by { |player| player.score }.reverse
    sorted.each_with_index do |player, i|
      print "#{player.name}: #{player.score}"
      print " | " if i < @players.length - 1
    end
    print "\n"
  end

  # Returns the id of the winner.
  def print_final_winner()
    sorted = @players.sort_by { |player| player.score }.reverse
    winner = sorted[0]
    puts "*" * 60
    puts "* The final winner: #{winner.name}"
    puts "*" * 60
  end
end
