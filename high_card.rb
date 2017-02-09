# Use these two arrays to generate a deck of cards.
#create a new deck function
def deck_cards
    ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]
    deck = []
    players = []

    values.each_with_index do |value, index|
      suits.each do |suit|
        deck.push([value,suit])
    end
 end
   return deck.shuffle
end

#collect players function

class Player
  attr_accessor :name
  attr_accessor :card
  @@players = []

  def initialize(name)
    @name = name
    @card = nil
    @@players << self
  end
  def self.all
    return @@players
  end
  def set_card(card)
    @card = card
  end
  def get_card
    return @card
  end
  def get_name
    return @name
  end

#Upon *"play"*, deal each player a card.
def deal_cards(deck)
  hands []
  players.each do |player|
    hand = {
      player: = player
      card: = deck.shift
    }
      hands << hand
    end
    hands
  end

# Find the highest score in the game
scores = cards.map do |card|
  card[:score]
end

high_score = scores.max


# Select winners of the game
winners = []

scores.each_with_index do |score, index|
  winners.push(players[index]) if score == high_score
end

puts "Winner(s): #{winners.join(', ')}"
puts cards
end
