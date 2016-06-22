# A class that represents cards.
# suit: "hearts", "spades", "clubs", or "diamonds"
# worth: 1..13
class Card
  attr_accessor :suit, :worth

  def initialize(suit, worth)
    @suit = suit
    @worth = worth
  end

  # Returns a string representation of a card instance.
  def to_s
    "[ #{Card.suitIcon(@suit)} #{Card.rank(@worth)} ]"
  end

  # Converts a suit string to a Unicode character.
  def self.suitIcon suit
    case suit
    when "spades"   ; return "\u2660".encode('utf-8')
    when "hearts"   ; return "\u2665".encode('utf-8')
    when "diamonds" ; return "\u2666".encode('utf-8')
    when "clubs"    ; return "\u2663".encode('utf-8')
    else return "Invalid suit"
    end
  end

  # Converts a numerical worth to a string that is to be displayed.
  def self.rank worth
    case worth
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

  def self.suits
    [ "hearts", "spades", "clubs", "diamonds" ]
  end
end
