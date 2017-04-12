# Use these two arrays to generate a deck of cards.
puts "Welcome to High Card"
class Card
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]
deck = suits.product(ranks).shuffle!
players = []


class Deck
  attr_reader :cards
  def initialize(n=1)
    @cards = []suits.cycle(n) do |s|
end
    ranks.cycle(1) do |r| @cards << "#{r} of #{s}"
        end
      end
    end
  end
end
