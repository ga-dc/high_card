require 'pry'

# Use these two arrays to generate a deck of cards.
@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]

@players = []

def make_deck
    #for each rank with index add a suit
    deck = []

    @ranks.each_with_index do |rank, index|
        @suits.each do |suit|
            deck << {:rank => rank, :suit => suit, :index => index}
        end
    end

    return deck.shuffle!
end

finaldeck = make_deck

binding.pry
