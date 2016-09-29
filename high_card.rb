# my pseudocode
# create cards arrays with two values; suit and rank
# for each card
# apply suit then ranks
# i.e. hearts then rank
# until there are no more suits

require 'pry'

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = []

suits.each do |suit|
    ranks.each_with_index do |rank|
    deck << [suit, rank]
    deck.shuffle!
    end
end

players_names = []

name = gets.chomp

class Player
    def initialize(name)
        @name = name
    end

    def addPlayer
        @name = gets.chomp
        players_names << self
    end
end

mike = Player.new "Mike"

binding.pry
puts "Finished!"