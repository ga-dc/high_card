require "pry"

@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]

@players = []
@deck = []

def build_deck
  @ranks.each do |v|
    @suits.each do |s|
      @deck << {value: v, suit: s }
    end
  end
end

def shuffle_deck
  @deck.shuffle!
end

def get_players
  input = 'empty'
  until input==""
    puts "Enter a player's name. Press enter when all players are ready."
    input = gets.chomp
    next if input == ""
    @players << input
  end
end

binding.pry
