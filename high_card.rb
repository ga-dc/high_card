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


# A class that represents a high card game.
class Game

  def initialize
    @cards = []
    @deck = []
    @players = []
    generate_cards
  end

  def generate_cards
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    suits.each do |suit|
      (1..13).each do |worth|
        @cards.push Card.new(suit, worth)
      end
    end
  end

  def build_deck
    @deck = @cards.shuffle
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

# ===

binding.pry
puts "end of file"
