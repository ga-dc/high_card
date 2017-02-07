require "pry"
# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ,"A" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []
# players = []

ranks.product(suits).each do |combo|
  deck << combo
end

class Player
  attr_accessor :name
  @@players = []

  def initialize(name)
    @name = name
    @@players << self
  end
  def self.all
    return @@players
  end

end
game_start = false
while game_start == false
  puts "#{Player.all.length} player(s) so far. Enter a player name or type 'play':"
  response = gets.chomp.to_s
  if response == "play"
    game_start = true
  else
    Player.new(response)
  end
end
deck.shuffle!
Player.all.each_with_index do |playa_play,i|
  playa_play[:card] = deck[i]
end

binding.pry
