require "pry"

# Use these two arrays to generate a deck of cards.
@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
@deck = []
# hands = []
@players = []

def build_deck
  @ranks.each do |rank|
    @suits.each do |suit|
      @deck << [ranks, suit]
    end
  end
end

def get_players
  player = prompt "#{@players.length} so far. Enter a player name, or type 'play':"
  @players << player
end

binding.pry

puts "whyyyy"
