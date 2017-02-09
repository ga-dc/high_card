# Use these two arrays to generate a deck of cards.
ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

players = []

deck = ranks.product(suits)

class Player
  attr_accessor :name
  def initialize(name, cards = [])
    @name = name
    @cards = cards
  end
  def add
    players << self
  end
end

# sam = Player.new("Sam")


# puts  "#{players.length} players so far. Enter a player name, or type 'play' if there are atleast 2 players "
ready_to_play = false
until ready_to_play == true do
    puts "there are currently #{players.length} players so far. This game requires at least 2 players \n please enter a name to create the first player"
    player_name = gets.chomp
    players << Player.new(player_name)
    puts players
  end

  game_finished = false

  until game_finished == true do
      user_input = gets.chomp
      if user_input == "play"
        puts players
        deck.shuffle
        players.map{|x| x.cards << deck.slice![0]}
        puts players
      else 

      end
    end
