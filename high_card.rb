# Use these two arrays to generate a deck of cards.
require "pry"

class PlayGame
  def initialize
  end

  players = []
  def self.buildDeck
    ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []
    suits.each do |suit|
      ranks.each do |rank|
        deck << [rank,suit]
      end
  end
  puts deck
  end
  def self.hello
    puts "hello"
  end

end


binding.pry
