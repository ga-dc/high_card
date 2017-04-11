require "pry"

# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = suits.product(ranks).shuffle

players = []

class Player

  def initialize(name)
    @name = name
  end

end

amount_of_players = 0

puts "enter a player name or type 'play'"
player_input = gets.chomp

  if player_input == 'play'

  else
    x = Player.new(player_input)
    players.push(x)
    amount_of_players += 1
  end





binding.pry

puts "end of file"
