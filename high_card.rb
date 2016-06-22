# Use these two arrays to generate a deck of cards.
require "pry"

class PlayGame
  @players = []
  @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  @suits = [ "hearts", "spades", "clubs", "diamonds" ]
  @deck = []

  def self.buildDeck
    @suits.each do |suit|
      @ranks.each_with_index do |rank,value|
        @deck << [[rank,suit],value]
      end
    end
  end

  def self.shuffleDeck
      @deck.shuffle
  end
  def self.deck
    @deck
  end


end


binding.pry
