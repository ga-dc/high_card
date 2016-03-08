require "pry"

# Contains the requred logic for a deck of cards.
class Deck
  @@ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  @@suits = [ "hearts", "spades", "clubs", "diamonds" ]
  attr_reader :cards
  # Fills @cards with cards designated by @@ranks, and @@suits
  # The cards total value is higher as you reache the end of both
  # arrays.  E.G. A of diamonds is the highest value card, 2 of hearts
  # the lowest.
  def initialize
    @cards = []
    @@suits.each_with_index{|s, i|
      totalValue = 0
      @@ranks.each{|r|
        cards << {rank: r.to_s, suit: s, totalValue: i+totalValue}
        totalValue += @@suits.length
      }
    }
    @cards.shuffle!
  end
  # Removes the top card from the deck and returns it.
  def take_card
    return cards.pop
  end
  #  Retruns the number of cards left in the deck
  def num_remaining
    return cards.length
  end
end

# Organizes player data
class Player
  attr_accessor :hand, :name
  def initialize (name)
    @name = name
    @hand = nil
  end
end

# Organizes game data.  All games have a collection of players and a deck.
class Game
  attr_reader :players, :deck
  # Creates an empty collection of players and a new deck.
  def initialize
    @deck = Deck.new
    @players = []
  end
  # Add a player to the game
  def add_player name
    players << Player.new(name)
  end
  # Deals a single card for each player in the game.
  def deal_cards
    # If there's not enough cards to cover all the remaining players create a new deck
    # and notify the players.
    if deck.num_remaining < players.length
      puts "Not enough cards in deck to cover remaining players. Building new deck."
      @deck = Deck.new # Why do I need @ for this to work?
    end
    # Give each player a card.
    players.each{|p| p.hand = self.deck.take_card} # Why do I need self for this to work?
  end
  # Returns an array of players sorted with the highest scores on top.
  def scores
    return players.sort{|p1,p2| p2.hand[:totalValue] <=> p1.hand[:totalValue]}
  end
  # Returns the number of players in the game.
  def num_players
    return players.length
  end
end

# declare globals
high_card = Game.new
answer = nil
# enter player loop
while answer != "play" do
  puts "Type play to start the game."
  puts "Please enter the name of player ##{high_card.num_players+1}:"
  answer = gets.chomp
  if answer != "play"
    high_card.add_player(answer)
  elsif high_card.num_players < 2
    puts "You need at least 2 players to play!"
    answer = nil
  end
end

# play game loop
while answer != "exit" do
  high_card.deal_cards
  sb = high_card.scores
  puts "#{sb[0].name} is the WINNER with a #{sb[0].hand[:rank]} of #{sb[0].hand[:suit]}!!!"
  for i in 1..sb.length-1
    puts "#{i+1}) #{sb[i].name} had a #{sb[i].hand[:rank]} of #{sb[i].hand[:suit]}."
  end
  puts "---"
  puts "Type exit to quit."
  puts "Press enter to deal next round"
  answer = gets.chomp
end

binding.pry
