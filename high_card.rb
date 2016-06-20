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

  def to_s
    "#{@suit} - #{rank}"
  end
end


# A class that represents a high card game.
class Game

  def initialize
    @cards = []
    @players = []
    generateCards
  end

  def generateCards
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    suits.each do |suit|
      (1..13).each do |worth|
        @cards.push Card.new(suit, worth)
      end
    end
  end

  def printCards
    @cards.each do |card|
      puts card.to_s
    end
  end
end

# ===

# Create a new game.
game = Game.new

# Print all the cards.
game.printCards

# ===

binding.pry
puts "end of file"
