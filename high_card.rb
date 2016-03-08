# Use these two arrays to generate a deck of cards.
class Game
  attr_accessor :deck, :shuffled_deck, :players, :hand
  def initialize
    @deck = []
    @shuffled_deck = []
    @players = []
    @hand = []
  end
  def build_deck
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
    suits = [ "hearts", "spades", "clubs", "diamonds" ]

    ranks.each_with_index do |rank, i|
      suits.each do |suit|
        @deck << ([rank , suit, i])
      end
    end
  end

  def shuffle_deck
    @shuffled_deck << @deck.shuffle
  end

  def get_player
    while true do
      puts "Welcome. Enter your name or press 'p' to play"
      name = gets.chomp.downcase
      break if name == 'p'
      @players << name
    end
  end

  def populate_hand
    @players.each do |name|
    @hand << @shuffled_deck[0].pop
    puts @hand
  end

  def play
    if @hand[-1][2] < @hand[-2][2]
      puts ("player 1 wins")
    elsif @hand[-1][2] > @hand[-2][2]
      puts ("player 2 wins")
    else
      puts ("tied")
    end
  end
  end

end


highcard = Game.new
highcard.build_deck
highcard.shuffle_deck
highcard.get_player
highcard.populate_hand
highcard.play
