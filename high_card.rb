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
  while true
    puts "#{@players.length} players so far. Enter a player name, or type 'play':"

    player_name = gets.chomp

    break if player_name == "play"
    @players << player_name
  end
end

create_deck
player_names

binding.pry
