# Use these two arrays to generate a deck of cards.
require "pry"
class PlayGame
  @players = []
  @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
  @suits = [ "hearts", "spades", "clubs", "diamonds" ]
  @deck = []
  @hand = []
  def self.buildDeck
    @suits.each do |suit|
      @ranks.each_with_index do |rank,value|
        @deck << [[:rank rank,:suit suit ,:value value]]
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
      @players.count do |k|
        @hand.push([@player[k],@deck[k]])
          #for each player
          #assign them a card from the deck
          # put each player with the card inside a hand array
      end
    end

  def self.players
    @players
  end
  def self.winner
      @hand.each do |value|
        value.values.max
      end
      # for each hand
      # compare the values of each card in players hand
      # which value is least
      # that player is the winner
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

end


binding.pry
