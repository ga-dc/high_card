# Use these two arrays to generate a deck of cards.
require "pry"
@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
@deck = []
@shuffled_deck = []
@players = []

def create_deck
  @suits.each do |suit|
    @ranks.each do |rank|
      @deck << [rank, suit]
    end
  end

  @shuffled_deck = @deck.shuffle
end

def player_names
  puts "#{@players.length} players so far. Enter a player name, or type 'play':"
  player_name = gets.chomp

  if gets.chomp != "play"
    @players << player_name
  end
end

create_deck

binding.pry
