require "pry"

ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K" ]
suits = [ "hearts", "spades", "clubs", "diamonds" ]

deck = suits.product(ranks).shuffle

players = []

class Player
  attr_accessor :card, :name

  def initialize(name)
    @name = name
    @card = nil
  end
end


def make_random_players(num, players)
   while num > 0
    x = Player.new("player#{num}")
    players.push(x)
    num -= 1
  end
end


def deal_cards(deck, players)
  value_array = []
  for player in players
    player.card = deck.pop
    value_array.push(player.card[1])
    puts "#{player.name} has an #{player.card[1]} of #{player.card[0]}"
    if player.card[1] == "J"
      player.card[1] == 11
    elsif player.card[1] == "Q"
      player.card[1] == 12
    elsif player.card[1] == "K"
      player.card[1] == 13
    elsif player.card[1] == "A"
      player.card[1] == 14
    end
  end
  for player in players
    if value_array.max == player.card[1]
      puts "#{player.name} wins!!!"
    end
  end
end

def set_up_game(players, deck)
  puts "#{players.length} players joined. Enter a player name or type 'play'"
  player_input = gets.chomp

  if player_input == 'play' && players.length == 0
    make_random_players(2, players)
    deal_cards(deck, players)
  elsif player_input == 'play' && players.length == 1
    make_random_players(1, players)
    deal_cards(deck, players)
  elsif player_input == 'play' && players.length >= 2
    deal_cards(deck, players)
  else
    x = Player.new(player_input)
    players.push(x)
    set_up_game(players, deck)
  end
end

set_up_game(players, deck)






binding.pry

puts "end of file"
