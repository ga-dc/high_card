require 'pry'

# ===

# A class that represents cards.
# suit: "hearts", "spades", "clubs", or "diamonds"
# worth: 1..13
class Card
  attr_accessor :suit, :worth

  def initialize(suit, worth)
    @suit = suit
    @worth = worth
  end

  # Converts a suit string to a Unicode character.
  def suitIcon
    case @suit
    when "spades"   ; return "\u2660".encode('utf-8')
    when "hearts"   ; return "\u2665".encode('utf-8')
    when "diamonds" ; return "\u2666".encode('utf-8')
    when "clubs"    ; return "\u2663".encode('utf-8')
    else return "Invalid suit"
    end
  end

  # Converts a numerical worth to a string that is to be displayed.
  def rank
    case @worth
    when 1  ; return "2"
    when 2  ; return "3"
    when 3  ; return "4"
    when 4  ; return "5"
    when 5  ; return "6"
    when 6  ; return "7"
    when 7  ; return "8"
    when 8  ; return "9"
    when 9  ; return "10"
    when 10 ; return "J"
    when 11 ; return "Q"
    when 12 ; return "K"
    when 13 ; return "A"
    else return "Invalid worth"
    end
  end

  # Returns a string representation of a card instance.
  def to_s
    "[ #{suitIcon} #{rank} ]"
  end

  def self.suits
    [ "hearts", "spades", "clubs", "diamonds" ]
  end
end

# ===

# A class that represents a player.
class Player
  attr_accessor :name, :score, :id

  # Storage for all the instances.
  @@all = []

  def initialize(name)
    # Strip extra whitespace.
    name = name.strip

    # If name is empty, make up a random name.
    name = name.empty? ? Player.random_string : name

    # Capitalize the name.
    @name = name.capitalize

    # Initially score is 0.
    @score = 0

    # Increment the instance count and that becomes the ID (1..n).
    @@all << self
    @id = @@all.length
  end

  # Generates a random string.
  def self.random_string
    ('a'..'z').to_a.shuffle[0..6].join
  end

  def self.find(id)
    result = @@all.select { |p| p.id == id }
    result[0]
  end
end

# ===

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

  # TODO: Determine winner more accurately, considering a tie.
  # Judge the result of the deal hash.
  # Returns the id of the winner.
  def get_winner(deal)
    # Find the player id who has the highest-value card.
    highest = deal.max_by { |id, card| card.worth }

    # The winner's id.
    highest[0]
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
    puts "The final winner: #{winner.name}"
  end
end

# ===

# Create a new game.
game = Game.new

# Build a deck.
game.build_deck

# Invite players.
game.invite_players

# Loop the game play until all cards are gone.
while game.deck.length > game.players.length
  # Deal a card to each player.
  deal_result = game.deal

  # Determine the winner.
  winner_id = game.get_winner(deal_result)

  # Print the result.
  puts "=" * 60
  deal_result.each do |id, card|
    print Player.find(id).name + " " + card.to_s + "\n"
  end

  # Give score to the winner.
  puts "." * 60
  score = game.reward_winner(deal_result, winner_id)
  puts "Winner: " + Player.find(winner_id).name + ", Score earned: " + score.to_s
  game.print_current_scores
  puts "." * 60

  # Pause.
  puts "Press ENTER to continue:"
  gets
end

puts "=" * 60

game.print_final_winner
puts "--- THE END ---"

# ===

binding.pry
puts "end of file"
