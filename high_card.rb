# Use these two arrays to generate a deck of cards.
require "pry"

class PlayGame
  def initialize
  end
  @players = []
  @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  @suits = [ "hearts", "spades", "clubs", "diamonds" ]
  @deck = []
  def self.buildDeck
    @suits.each do |suit|
      @ranks.each do |rank|
        @deck << [rank,suit]
      end
    end
  end
  def self.shuffleDeck
      @deck.shuffle
  end
  def self.deck
    @deck
  end

  def self.hello
    puts "hello"
  end

end


binding.pry
