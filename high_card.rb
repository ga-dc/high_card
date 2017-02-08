# Use these two arrays to generate a deck of cards.
ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = suits.product(ranks)

deck.shuffle!

# have the player initialize a counter that will put a card in their hand or
# in an array that is outside of the class

class Player

  attr_accessor :hand

  @@players = []

  def initialize(name)
    @name = name
    @@players << self
    @hand = []

  end

  def self.amt_players
    puts "#{@@players.length} people are in this game"
    puts @@players.length
    @@players
  end


end

savraj = Player.new("Savraj Singh")
kirat = Player.new("Kirat Singh")


puts "Are you ready to play?"

user_input1 = gets.chomp.to_s.upcase

if user_input1 == "YES"

  index = 0
  while index == 0
    savraj.hand = deck[index]

    index += 1
  end
  while index == 1
    kirat.hand = deck[index]

    index += 1
  end


  p savraj.hand
  p kirat.hand

  def winner(name1,name2)
  if name1.hand[1] > name2.hand[1]
    puts "Savraj Wins"
  else puts "Kirat Wins"

  end
  end

  winner(savraj,kirat)

end
