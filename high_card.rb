require 'pry'
# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = []

#creates deck____________
ranks.each do |rank|
  suits.each do |suit|
    deck.push([rank, suit])
  end
end

#creates player class__________
class Player
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def name
    @name
  end

end


#creates new players______________________
while players.length < 2 do

  puts "Enter two user names to play!"
  user_input = gets.chomp
    player = Player.new(user_input)
    players << player.name

end

#assigns cards to players __________________

deal1 = [players[0], deck.sample]
deal2 = [players[1], deck.sample]

#compares the cards and determines a winner __________________
if deck.index(deal1[1]) > deck.index(deal2[1])
  puts "#{deal1[0]} wins with a #{deal1[1]}! #{deal2[0]} had a #{deal2[1]}"
else
  puts "#{deal2[0]} wins with a #{deal2[1]}! #{deal1[0]} had a #{deal1[1]}"
end

binding.pry
