require 'pry'

# ===

# A class that represents cards.
# Suit: "hearts", "spades", "clubs", or "diamonds"
# Worth: 1..13
class Card
  def initialize(suit, worth)
    @suit = suit
    @worth = worth
  end

  # Converts a numerical worth to a string that is to be displayed.
  def rank
    case @worth
    when 1 ; return "2"
    when 2 ; return "3"
    when 3 ; return "4"
    when 4 ; return "5"
    when 5 ; return "6"
    when 6 ; return "7"
    when 7 ; return "8"
    when 8 ; return "9"
    when 9 ; return "10"
    when 10 ; return "J"
    when 11 ; return "Q"
    when 12 ; return "K"
    when 13 ; return "A"
    else return "Invalid worth"
    end
  end

  # Returns a string representation of a card instance.
  def to_s
    "#{@suit} - #{rank}"
  end
end

# ===

# A class that represents a player.
class Player
  attr_accessor :name, :score

  def initialize(name)
    # Strip extra whitespace.
    name = name.strip

    # If name is empty, make up a random name.
    name = name.empty? ? Player.random_string : name

    # Capitalize the name.
    @name = name.capitalize

    # Initially player has no card.
    @cards = []
  end

  # Generates a random string.
  def self.random_string
    ('a'..'z').to_a.shuffle[0..6].join
  end
end

# ===

# A class that represents a high card game.
class Game

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
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    suits.each do |suit|
      (1..13).each do |worth|
        @cards.push Card.new(suit, worth)
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

  # Deals each player a card.
  def deal

  end

  def full?
    @players.size == @max_players
  end

  def print_cards
    @cards.each do |card|
      puts card.to_s
    end
  end

  def print_deck
    @deck.each do |card|
      puts card.to_s
    end
  end
end

# ===

# Create a new game.
game = Game.new

# Build a deck
game.build_deck

# Print all the cards.
game.print_deck

# Invite players.
game.invite_players

# ===

binding.pry
puts "end of file"
