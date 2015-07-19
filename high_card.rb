class Game

  def get_players
    players = []

    begin
      puts "#{players.length} players so far. Enter a player name, or type 'play':"
      input = gets.chomp.upcase
      if input != "PLAY"
        players << { name: input }
      end
    end while (input != "PLAY")
    players
  end

  def deal_cards(players)
    begin
      @deck = Deck.new
      players.each do |player|
        player[:card] = @deck.draw_card
      end
    end while is_tie?(players)
  end

  def is_tie?(players)
    players.sort! do |player1, player2|
      @deck.get_ranks.index(player2[:card].rank) <=> @deck.get_ranks.index(player1[:card].rank)
    end

    tie = players.group_by { |player| player[:card].rank }.any? {|rank, players| players.length > 1}
    puts "tie was dealt... redealing..." if tie
    p players
    tie
  end

  def show_result(players)
    winner = players.shift
    puts "Winner is : #{winner[:name].to_s} with #{winner[:card].rank} of #{winner[:card].suit}"
    winners = players.map { |player| "#{player[:name]} with  #{player[:card].rank} of #{player[:card].suit}"}
    puts "Winners are: #{winners.join(", ")}"
  end


  def high_card

    players = get_players
    deal_cards(players)
    show_result(players)

  end

end

class Deck
  def initialize
    get_new_deck
    shuffle
  end

  def get_ranks
    [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  end

  def get_suits
    [ "hearts", "spades", "clubs", "diamonds" ]
  end

  def get_new_deck
    @deck = []
    get_ranks.each do |rank|
      get_suits.each do |suit|
        @deck.push Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def draw_card
    @deck.pop
  end
end

class Card
  attr_reader :rank
  attr_reader :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

game1 = Game.new
game1.high_card







# p deck.shuffle! === puts deck.shuffle!.inspect

# puts local_variables  #shows local variables of method def high_card

# players.map(&:name) ===
# p players.map { |player| player[:name] + 25.to_s } ===
# p players.map do |player|
#   player[:name] + 25.to_s
# end

# players.push( {name: input, cards: []}) ===
# players << { name: input, cards: [] }
