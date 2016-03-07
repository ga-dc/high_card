require "pry"

class HighCard

  def initialize
    @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
    @suits = [ "hearts", "spades", "clubs", "diamonds" ]

    @players = []
    @deck = []
    @hands = []
  end

  def play_game
    build_deck
    shuffle_deck
    get_players
    deal
    find_highest_card
  end

  def new_game
    @players = []
    @deck = []
    @hands = []
    play_game
  end

  def build_deck
    @ranks.each_with_index do |v, i|
      @suits.each do |s|
        @deck << {value: v, suit: s, index: i }
      end
    end
  end

  def shuffle_deck
    @deck.shuffle!
  end

  def get_players
    input = ''
    until input=="play"
      puts "#{@players.length} players so far. Enter a player name or type 'play':"
      input = gets.chomp
      next if input == "play"
      @players << input
    end
  end

  def deal
    @players.each do |player|
      card = @deck.pop
      puts "#{player}: #{card[:value]} of #{card[:suit]}"
      @hands << {player: player, value: card[:value], suit: card[:suit], index: card[:index]}
    end
  end

  def find_highest_card
    winner = @hands.max_by { |e| e[:index] }
    puts "Winner is #{winner[:player]} with #{winner[:value]} of #{winner[:suit]}!"
  end
end

game = HighCard.new
game.play_game


binding.pry
