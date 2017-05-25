class Card

    attr_accessor :rank, :suit
    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def output_card
        puts "The #{@rank} of #{@suit}"
    end
end

class Deck
    def initialize
        @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
        @suits = ['CLUBS', 'HEARTS', 'SPADES', 'DIAMONDS']
        @cards = []
    
        @ranks.each do |rank|
            @suits.each do |suit|
                @cards << Card.new(rank, suit)
            end
        end        
        @cards.shuffle!
    end

    def deal (number)
        number.times {@cards.shift.output_card}
    end
end

deck = Deck.new
deck.deal(7)

# require "pry"

# # Use these two arrays to generate a deck of cards.
# $ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
# $suits = [ "hearts", "spades", "clubs", "diamonds" ]

# $players = []

# class Cards 

#     attr_accessor :rank, :suit
#     def initialize(rank, suit)
#         @rank = rank
#         @suit = suit
#     end

#     def current_card
#         puts "The #{@rank} of #{@suit}"
#     end
    
# end


# class Shuffled_deck
#     def initialize
#         @ranks = $ranks
#         @suits = $suits
#         @cards = []
        
#             @ranks.each do |rank|
#                 @suits.each do |suit|
#                     @cards << Cards.new(rank, suit)
#                 end
#             end
#         @cards.shuffle!
#         end

#         def hand (number)
#             number.times {@cards.shift.current_card}
#         end
#     end

# deck = Shuffled_deck.new
# deck.hand(10)
