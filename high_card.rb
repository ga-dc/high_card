# Use these two arrays to generate a deck of cards.
RANKS = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
SUITS = [ "hearts", "spades", "clubs", "diamonds" ]

class Player
  attr_reader :name, :card  
  def initialize(name, card)
    @name = name
    @card = card #I wanted to pop the card from the deck directly from here but it was out of scope,
  end
  def score
    RANKS.find_index(@card[0]) #don't like this as way to access card rank or the RANKS array
  end
  def draw_card(new_card)
    @card = new_card
  end
  def card_string
    "#{@card[0]} of #{@card[1].capitalize}"
  end
  def to_s
    @name
  end
end

class HighCard
  attr_reader :deck, :players
  def initialize
    @deck = (0..51).map {|index| [RANKS[index/4],SUITS[index%4]]}.shuffle
    @players = [] #if instance variable is going to exist does it need to be "declared" in initialize?
  end
  def add_player(name)
    card = @deck.pop
    player = Player.new(name, card)
    @players.push(player)
  end
  def can_play?
    @players.size > 1
  end
  def redeal
    puts "Dealing new cards..."
    @players.each {|player| player.draw_card(@deck.pop)}
  end
  def knockout
    @players.each {|player| puts "#{player} plays '#{player.card_string}'"}
    high_score = @players.max_by {|player| player.score }.score
    winners, losers = @players.partition {|player| player.score == high_score}
    if losers.size > 0
      puts "#{losers.join(', ')} #{losers.size > 1 ? 'are' : 'is'} eliminated"
    end
    if winners.size > 1
      puts "#{winners.join(', ')} go on"
      @players = winners
      redeal
      knockout
    else
      puts "#{winners[0]} wins!"
    end
  end
  
end

game = HighCard.new
#build array of players
puts "Input player names hitting enter after each name then enter 'play' to start (requires at least two players):"

until ((name = gets.chomp) == "play" && game.can_play?) do
  if !game.can_play? && name == "play"
    puts "You need more to play (you can't have a player named 'play')"
  else
    game.add_player(name)
    puts "#{name} added. Current players are #{game.players.join(", ")}."
  end
end

game.knockout
