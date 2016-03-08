require "pry"

def build_deck
@values = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
@players = []
@deck = []

@values.each_with_index do |v, i| #each_with_index, adds index value to each item in array
  @suits.each do |s|
    @deck.push({score: i, value: v, suit: s})
  end
end
return @deck.shuffle
end

deck = build_deck #call the build_deck method

def get_players 


binding.pry
