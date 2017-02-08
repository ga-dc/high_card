require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = suits.product(ranks)

shuffled = deck.shuffle



class Player

  @@players = []

  def initialize(name)
    @name = name
    @@players << self
  end

  def self.amt_players
    puts "#{@@players.length} people are in this game"
    puts @@players.length
    @@players
  end

end

savraj = Player.new("Savraj Singh")
kirat = Player.new("Kirat Singh")

def play



end


binding.pry
