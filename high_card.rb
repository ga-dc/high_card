# Use these two arrays to generate a deck of cards.
require "pry"
@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]
@deck = []
@shuffled_deck = []
@players = []
@cards = []
@sorted_cards = []

attr_accessor = :winner

def create_deck
  @ranks.each_with_index do |rank, i|
    @suits.each do |suit|
      @deck << [rank, suit, i]
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

  player_cards
end

def player_cards
  @cards = @players.map do |player|
    [@shuffled_deck.pop, player]
  end

  highest_card
end

def highest_card
  @sorted_cards = @cards.sort

  if @sorted_cards[-1][0] == @sorted_cards[-2][0]
    puts "It's a tie between #{@sorted_cards[-1][1]} and #{@sorted_cards[-2][1]}"
  else
    puts "Winner: #{@sorted_cards[-1][1]}"
  end

end

create_deck
player_names

binding.pry
