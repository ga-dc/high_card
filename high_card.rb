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
  def self.deal
    @players.each_with_index do |i,k|
      @player[i] << deck[k]
    end
end

  def self.players
    @players
  end
  def self.addPlayers
    while true do
    puts "There are #{players.count} player(s) and #{players.last} just joined, type your name to add join or type 'play' to begin the game"
    name = gets.chomp
      if name == "play"
        break
        end
          @players << name
        end
    end
    def self.compare
        
    end


end


binding.pry
