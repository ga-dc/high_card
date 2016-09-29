require "pry"
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []
full_deck = []

suits.each do |suit|
  ranks.each_with_index do |rank|
    full_deck << [suit, rank]
    full_deck.shuffle!
  end
  class Player
    def initialize(name)
      @@players = []
      @name = name
      @@players << self
    end
    def get_name
      @name = gets.chomp
  end
    def Player.players
      @@players
    end
end
end

billy = Player.new "Billy"
p billy
p "whats your name?"
input = gets.chomp
Player.new (input)
p Player.players
binding.pry
puts "done"
