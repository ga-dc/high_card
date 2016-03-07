require "pry"

@ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
@suits = [ "hearts", "spades", "clubs", "diamonds" ]

@players = []
@deck = []
@hands = []

def build_deck
  @ranks.each do |v|
    @suits.each do |s|
      @deck << {value: v.to_s, suit: s }
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

def deal
  @players.each do |player|
    card = @deck.pop
    puts "#{player}: #{card[:value]} of #{card[:suit]}"
    @hands << {player: player, value: card[:value], suit: card[:suit]}
  end
end

def find_highest_card
  winner = @hands.max_by { |e| e[:value] }
  puts "Winner is #{winner[:player]} with #{winner[:value]} of #{winner[:suit]}!"
end

def play_game
  build_deck
  shuffle_deck
  get_players
  deal
  find_highest_card
end

play_game

binding.pry
