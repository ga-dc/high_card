class Game
  attr_reader :players
  def ranks
    [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A" ]
  end
  def suits
    [ "♥", "♠", "♣", "♦" ]
  end
  def initialize
    @players = Player.welcome
  end ############   End Game.initialize Method ############
  def build_deck
    fulldeck = []
    self.ranks.each_with_index do |rank, index|
      self.suits.each do |suit|
        card = [rank, suit, index]
        fulldeck << card
      end
    end
    return fulldeck
  end ############   End Game.build_deck Method ############
  def shuffle_deck(deck)
    shuffled_deck = deck.shuffle
  end ############   End Game.shuffle_deck Method ############
  def deal_cards(shuffled_deck)
    hands = []
    cards_to_deal = @players.length
    i = cards_to_deal
    while i > 0
      dealt_card = shuffled_deck.shift
      hands << dealt_card
      i -= 1
    end
    hands
  end ############   End Game.deal_cards Method ############
  def find_highest_card(hands)
    puts " "
    puts "******** Player Hands **********"
    puts " "
    hands.each_with_index do |player,index|
      the_player = @players[index].capitalize
      puts "#{the_player}   : #{hands[index]}"
    end
    winner = hands.max_by{|card| card[2]}
    winning_index = hands.index(winner)
    the_winner = @players[winning_index].capitalize
    puts " "
    puts "***************************"
    puts " "
    puts "The winner is: #{the_winner}!!!"
    p winner
    puts " "
    puts "***************************"
  end ############   End Game.find_highest_card Method ############
end ############   End Game class ############
################ Begin Player class below #######################
class Player
  def self.welcome
    players = []
    puts "Welcome to High Card!!!"
    response = ""
    while response != "play"
      players << response unless response.empty?
      puts "#{players.count} players so far. Enter a player name, or type 'play':"
      response = gets.chomp
    end
    return players
  end ############   End self.welcome Method ############
end ############   End Player class ############
